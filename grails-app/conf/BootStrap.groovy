import voterregistration.Voter

class BootStrap {
	
	
    def init = { servletContext ->

		new File("/home/stephen/Desktop/Douglas_County_Voter_Registration_small.csv").eachCsvLine { tokens ->
			new Voter(tokens[0], tokens[1], tokens[2], tokens[3], tokens[4], tokens[5], tokens[6], tokens[7], tokens[8], tokens[9], tokens[10],
				tokens[11], tokens[12], tokens[13], tokens[14], tokens[15], tokens[16], tokens[17], tokens[18], tokens[19], tokens[20],
				tokens[21], tokens[22], tokens[23], tokens[24], tokens[25], tokens[26], tokens[27], tokens[28], tokens[29], tokens[30],
				tokens[31], tokens[32], tokens[33], tokens[34], tokens[35], tokens[36], tokens[37], tokens[38], tokens[39], tokens[40],
				tokens[41], tokens[42], tokens[43], tokens[44], tokens[45], tokens[46], tokens[47], tokens[48], tokens[49], tokens[50],
				tokens[51], tokens[52], tokens[53], tokens[54], tokens[55], tokens[56], tokens[57], tokens[58], tokens[59], tokens[60],
				tokens[61], tokens[62], tokens[63], tokens[64], tokens[65] /*tokens[66] tokens[67], tokens[68], tokens[69], tokens[70],
				tokens[71], tokens[72], tokens[73], tokens[74], tokens[75], tokens[76], tokens[77], tokens[78], tokens[79], tokens[80],
				tokens[81], tokens[82], tokens[83], tokens[84], tokens[85], tokens[86], tokens[87], tokens[88], tokens[89], tokens[90],
				tokens[91]*/).save() //pull out the tokens from the CSV file and build a Voter object from it.
		}
		
		List<Voter> headerVoter = Voter.findAllWhere(title:"Title");
		headerVoter.each { voter -> voter.delete(); }

    }
    def destroy = {
    }
}
