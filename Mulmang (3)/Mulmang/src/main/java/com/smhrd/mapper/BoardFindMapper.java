package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.BoardFind;
import com.smhrd.domain.User;

public interface BoardFindMapper {
	
	public int BoardFindInsert(BoardFind bf);
	
	public List<BoardFind> boardFindInsert();
	
	public int userJoin(User us);
	
	//public BoardFind BoardFindInsert(BoardFind bf);
	
	public List<BoardFind> boardFindInsert2();	
	
	public BoardFind boardFindInsert2(BoardFind bf2);
	
	
}
