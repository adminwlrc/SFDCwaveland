 public class PayOrLogicRequestWrapper {
    
	public class Demographic {
		public String IncludeCredit;
	}

	public class Eligibilities {
		public String Payor;
	}

	public class InsuranceFinder {
		public String CallbackURL;
	}

	public class RequestData {
		public String TransactionId {get;set;}
		public String RequestingSoftware;
		// public String RequestDate;
		// public List<Individuals> Individuals;
		// public List<Eligibilities> Eligibilities;
		// public Demographic Demographic;
		// public InsuranceFinder InsuranceFinder;
	}

	public class Guarantor {
		public String Firstname;
		public String Lastname;
		public String Gender;
		public String DOB;
		public String Address1;
		public String City;
		public String State;
		public String Zip;
		public String Employer;
	}

	public class Individuals {
		public String Firstname;
		public String Lastname;
		public String Gender;
		public String DOB;
		public String SSN;
		public String Address1;
		public String City;
		public String State;
		public String Zip;
		public String VisitNumber;
		public String MRN;
		public String SubscriberId;
		public String ClientId;
		public String PracticeLocation;
		public String ServiceBeginDate;
		public String ServiceEndDate;
		public String PatientProcessType;
		public String TotalCharges;
		public Guarantor Guarantor;
	}

	public RequestData requestData;

	
	public static PayOrLogicRequestWrapper parse(String json) {
		return (PayOrLogicRequestWrapper) System.JSON.deserialize(json, PayOrLogicRequestWrapper.class);
	}
}

