package com.citrus.hotel.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewDTO {
	private int rev_no;
	private int room_no;
	private int member_no;
	private String rev_cont;
	private String rev_dt;
	private String res_like;
}
