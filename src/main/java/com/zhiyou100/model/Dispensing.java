package com.zhiyou100.model;

public class Dispensing {
    private String medical_record;

    private String drug_num;

    private Integer dispens_num;

    private Integer alread_send_num;

    private Integer not_send_num;

    private String time;
    
    private Drug drug;
    
    private RegistrationInfor registrationInfor;

	public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
	}

	public RegistrationInfor getRegistrationInfor() {
		return registrationInfor;
	}

	public void setRegistrationInfor(RegistrationInfor registrationInfor) {
		this.registrationInfor = registrationInfor;
	}

	public String getMedical_record() {
		return medical_record;
	}

	public void setMedical_record(String medical_record) {
		this.medical_record = medical_record;
	}

	public String getDrug_num() {
		return drug_num;
	}

	public void setDrug_num(String drug_num) {
		this.drug_num = drug_num;
	}

	public Integer getDispens_num() {
		return dispens_num;
	}

	public void setDispens_num(Integer dispens_num) {
		this.dispens_num = dispens_num;
	}

	public Integer getAlread_send_num() {
		return alread_send_num;
	}

	public void setAlread_send_num(Integer alread_send_num) {
		this.alread_send_num = alread_send_num;
	}

	public Integer getNot_send_num() {
		return not_send_num;
	}

	public void setNot_send_num(Integer not_send_num) {
		this.not_send_num = not_send_num;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Dispensing [medical_record=" + medical_record + ", drug_num=" + drug_num + ", dispens_num="
				+ dispens_num + ", alread_send_num=" + alread_send_num + ", not_send_num=" + not_send_num + ", time="
				+ time + ", drug=" + drug + ", registrationInfor=" + registrationInfor + "]";
	}
	
	

   
}