package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.smhrd.domain.BoardFind;
import com.smhrd.domain.Face;
import com.smhrd.mapper.BoardFindMapper;

@Controller
public class BoardFindController {
	// RestController에서는 @ResponseBody 를 안붙여도 된다
	
	// DI(Dependency Injection) 의존성 주입
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardFindMapper mapper;
	Face mapper2;
	// ajax 요청을 받아서 글데이터를 응답
//	@RequestMapping("/boardFindWrite1.do")
//	public String boardFindInsert() { ////메서드와 요청url을 매핑
//		System.out.println("1");
//		return "find_write_1";
//	}
	
	
	
	@RequestMapping("/boardFindWrite1.do")
	public String boardFindInsert(BoardFind bf, HttpServletRequest request) {
		System.out.println("이크");
		int bfif = mapper.BoardFindInsert(bf);
		//int bfif = mapper.BoardFindInsert(bf);
		System.out.println("2");
		if(bfif == 0) {
			System.out.println("입력에 실패하셨습니다.");
			return "find_write_1";
		}else {
			HttpSession session = request.getSession();
		    //session.setAttribute("user", bfif);
		    return "redirect:/uploadForm"; 
		}
		
	}
	
	
	

//	public @ResponseBody String joinApplication(MultipartHttpServletRequest request) {
//		
//	}
//	@RequestMapping("/boardFindWrite2.do")
//	public String boardFindInsert2(BoardFind bf2, HttpServletRequest request) {
//		BoardFind bfif2 = mapper.BoardFindInsert(bf2);
//		if(bfif2 == null) {
//			System.out.println("입력에 실패");
//			return "find_write_2";
//		} else {
//			HttpSession session = request.getSession();
//			session.setAttribute("user", bfif2 );
//			return "findList";
//		}
//	}
//	


}
