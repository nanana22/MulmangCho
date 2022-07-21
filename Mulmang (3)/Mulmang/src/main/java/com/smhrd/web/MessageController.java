package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.domain.Message;
import com.smhrd.mapper.MessageMapper;

@Controller
public class MessageController {
	@Autowired
	MessageMapper mapper;
	
	
	
	
	// 메세지 전송
	@RequestMapping("/messageSend.do")
	public String msgSend(Message vo) {
		System.out.println("전송시도");
		
		mapper.messageSend(vo);
		
		return "redirect:/reportList.do";
	}
}
