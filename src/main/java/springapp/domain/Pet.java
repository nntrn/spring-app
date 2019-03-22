package springapp.domain;

public class Pet {
	private final Integer id;
	private final String name;
	private final Gender gender;
	private final boolean altered;
	private final Integer clientId;
	/* ANNIE: 
	 * notice client is not final (this is so that you can set client after creating pet object) */
	private Client client;
	
	public Pet(Integer id, String name, Gender gender, boolean altered, Integer clientId ){
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.altered = altered;
		this.clientId = clientId;
	}
	
	public Integer getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public Gender getGender() {
		return gender;
	}

	public boolean isAltered() {
		return altered;
	}

	public Integer getClientId() {
		return clientId;
	}
	
	/* annie: 
	 * return client object in order to get the client name in the pet table*/
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}

}

