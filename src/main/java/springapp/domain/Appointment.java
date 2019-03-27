package springapp.domain;

public class Appointment {
	private final Integer id;
	private final Integer client_id;
	private final Integer pet_id;
	private final String appt_time;
	private final String appt_date;
	private final String appt_type;
	
	private Client client;
	private Pet pet;
	
	public Appointment(Integer id, Integer client_id, Integer pet_id, String appt_time, String appt_date, String appt_type) {
		this.id = id;
		this.client_id = client_id;
		this.pet_id = pet_id;
		this.appt_time = appt_time;
		this.appt_date = appt_date;
		this.appt_type = appt_type;
	}

	public Integer getId() {
		return id;
	}

	public Integer getClientId() {
		return client_id;
	}

	public Integer getPetId() {
		return pet_id;
	}

	public String getApptTime() {
		return appt_time;
	}

	public String getApptDate() {
		return appt_date;
	}

	public String getApptType() {
		return appt_type;
	}
	
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	
	
}
