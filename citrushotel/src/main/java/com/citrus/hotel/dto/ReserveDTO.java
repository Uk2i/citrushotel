package com.citrus.hotel.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReserveDTO {
	private int res_no;
	private String res_check_in;
	private String res_check_out;
	private String res_name;
	private String res_email;
	private String res_tel;
	private String res_breakfast;
	private int res_people;
	private String res_extra;
	private String res_cdate;
}
