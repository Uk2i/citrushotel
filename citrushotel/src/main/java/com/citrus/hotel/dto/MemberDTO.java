package com.citrus.hotel.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private int member_no;
	private String member_email;
	private String member_pw;
	private String member_name;
	private String member_tel;
	private String member_addr;
	private String member_addr2;
	private int member_grade;
	private String member_reg_dt;
}
