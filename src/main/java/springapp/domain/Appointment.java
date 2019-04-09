package springapp.domain;

import java.sql.Date;
import java.time.LocalDate;

public class Appointment {
	private final Integer id;
	private final Integer pet_id;
	private final Integer time;
	private final String date;
	private final String reason;
	private String visit_type;
	private String close_type;
	
	private Pet pet;
	private Client client;
	
	public Appointment(Integer id, Integer pet_id, Integer time, String date, String reason) {
		this.id = id;
		this.pet_id = pet_id;
		this.time = time;
		this.date = date;
		this.reason = reason;
	}

	public Integer getId() {
		return id;
	}

	public Integer getPetId() {
		return pet_id;
	}

	public Integer getApptTime() {
		return time;
	}

	public String getApptDate() {
		return date;
	}

	public String getApptReason() {
		return reason;
	}

	public String getVisitType() {
		return visit_type;
	}
	public String getCloseType() {
		return close_type;
	}

	public void setVisitType(String visit_type) {
		this.visit_type = visit_type;
	}
	public void setCloseType(String close_type){
		this.close_type = close_type;
	}
	
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
		
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
}
