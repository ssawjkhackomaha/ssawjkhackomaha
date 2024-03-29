package voterregistration


import grails.converters.JSON
import groovy.util.slurpersupport.GPathResult

import org.springframework.dao.DataIntegrityViolationException

class VoterController {
	def filterPaneService;
	
	def filter = {
		String origOffset = 0;
		if (params.offset != null) {
			origOffset = params.offset;
		}
		
		params.offset = "0";
		params.max = 1000000;
		def voterListTotal = filterPaneService.filter( params, Voter );
		int totalRepubs = 0;
		int totalDems = 0;
		int totalNon = 0;
		
		for(Voter voter : voterListTotal) {
			if (voter.getParty().equals("Republican")) {
				totalRepubs++;
			} else if (voter.getParty().equals("Democrat")) {
				totalDems++;
			} else if (voter.getParty().equals("Nonpartisan")) {
				totalNon++;
			}
		}
		
		params.offset = origOffset;
		params.max = 20
		def voterList = filterPaneService.filter( params, Voter );
		int totalRepubsPage = 0;
		int totalDemsPage = 0;
		int totalNonPage = 0;
		
		for(Voter voter : voterList) {
			if (voter.getParty().equals("Republican")) {
				totalRepubsPage++;
			} else if (voter.getParty().equals("Democrat")) {
				totalDemsPage++;
			} else if (voter.getParty().equals("Nonpartisan")) {
				totalNonPage++;
			}
		}
		

		
		render( view:'listmap',
			model:[ voterInstanceList: voterList,
			voterInstanceTotal: filterPaneService.count( params, Voter ),
			filterParams: org.grails.plugin.filterpane.FilterPaneUtils.extractFilterParams(params), 
			totalRepublicans: totalRepubs,
			totalDemocrats: totalDems,
			totalNonpartisan: totalNon,
			totalRepublicansPage: totalRepubsPage,
			totalDemocratsPage: totalDemsPage,
			totalNonpartisanPage: totalNonPage,
			params:params] )
	}

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [voterInstanceList: Voter.list(params), voterInstanceTotal: Voter.count()]
    }
	
//	def listmap() {
//		//params.max = Math.min(params.max ? params.int('max') : 100, 200)
//		[voterInstanceList: Voter.list(params), voterInstanceTotal: Voter.count()]
//	}

    def create() {
        [voterInstance: new Voter(params)]
    }

    def save() {
        def voterInstance = new Voter(params)
        if (!voterInstance.save(flush: true)) {
            render(view: "create", model: [voterInstance: voterInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'voter.label', default: 'Voter'), voterInstance.id])
        redirect(action: "show", id: voterInstance.id)
    }

    def show() {
        def voterInstance = Voter.get(params.id)
        if (!voterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "list")
            return
        }

        [voterInstance: voterInstance]
    }

    def edit() {
        def voterInstance = Voter.get(params.id)
        if (!voterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "list")
            return
        }

        [voterInstance: voterInstance]
    }

    def update() {
        def voterInstance = Voter.get(params.id)
        if (!voterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (voterInstance.version > version) {
                voterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'voter.label', default: 'Voter')] as Object[],
                          "Another user has updated this Voter while you were editing")
                render(view: "edit", model: [voterInstance: voterInstance])
                return
            }
        }

        voterInstance.properties = params

        if (!voterInstance.save(flush: true)) {
            render(view: "edit", model: [voterInstance: voterInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'voter.label', default: 'Voter'), voterInstance.id])
        redirect(action: "show", id: voterInstance.id)
    }

    def delete() {
        def voterInstance = Voter.get(params.id)
        if (!voterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "list")
            return
        }

        try {
            voterInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'voter.label', default: 'Voter'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
	def jsonShow = {
		def id = params.id?.toInteger() ?: "NO Voter"
		def voter = Voter.get(id);
		
		if(!voter){
		  voter = new Voter(firstName: "Not found.");
		}
		
		render voter as JSON;
	  }
	
	def getLatLong = {
		def id = params.id?.toInteger() ?: "NO Voter"
		def wait = params.time?.toInteger() ?: 0;
		Voter voter = Voter.get(id);
		
		if(!voter){
		  voter = new Voter(firstName: "Not found.");
		}
		
		//List parcels = Parcel.findAllByHouseAndStreet_dirAndStreet_namAndStreet_typ(voter.getRegularAddressNumber(), voter.getRegularStreetDirectionPrefix(), voter.getRegularStreetName(), voter.getRegularStreetType());

		//if (parcels.size() == 0) {
			sleep(wait);
			//city = 'New York'
			//state = 'NY'
			//String address = voter.regularAddressNumber + " " + voter.regularAddressNumberSuffix + " " + voter.regularStreetDirectionPrefix + " " + voter.regularStreetName + " " + voter.regularStreetDirectionSuffix + " " + voter.regularStreetType + "," + voter.regularCity + "," + voter.regularState;
			String address = voter.getAddress();
			String base = 'http://maps.google.com/maps/api/geocode/xml?'
			Map params1 = [sensor:false,
					  address:[address].collect { URLEncoder.encode(it,'UTF-8') }.join(',+')]
			String url = base + params1.collect { k,v -> "$k=$v" }.join('&')
			
			GPathResult response1 = new XmlSlurper().parse(url)
			
			// Walk the tree
			String lat = response1.result.geometry.location.lat
			
			// Finders work too
			String lng = response1.'**'.find { it.name() =~ /lng/ }
		//}
		
		Map result = ["latitude": lat, "longitude": lng, "id": id, "info": voter.toString(), "party": voter.getParty()];
		//println result;
		if (lat == null || lng == null) {
			println address;
			println response1;
		}
		
		render result as JSON;

		
		//assert Math.abs(40.7142691 - lat.toDouble()) < 0.0001
		//assert Math.abs(-74.0059729 - lng.toDouble()) < 0.0001
		
	}
}
