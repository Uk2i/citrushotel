package com.citrus.hotel.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.citrus.hotel.dto.MemberDTO;


@Service
public class utilMapper {
	@Autowired
	private JavaMailSender mailSender;
	
	public int sendCertiMail(MemberDTO dto) {		//인증메일전송
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		String setFrom = "qwesxza@gmail.com";
		String toMail = dto.getMember_email();
		String title = "space 인증 이메일 입니다.";
		String content = "<img src=\"https://postfiles.pstatic.net/MjAyMjEyMjdfMjM1/MDAxNjcyMTAzNDk0MDkz.ya6_eo6KCxkKhn5yGB1rsTFor2M6kxe2ALGPdbSIr20g.YmKX35hjPTO_mfOdgjsjAJkVh_82H9-DWBiWktvplhEg.JPEG.qwesxza/logo.jpg?type=w580\">"
		+"<h1>인증 메일입니다.</h1>" + "<br><br>" + "인증번호는" + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호란에 기입해주세요.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			//mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return checkNum;
	}
}
