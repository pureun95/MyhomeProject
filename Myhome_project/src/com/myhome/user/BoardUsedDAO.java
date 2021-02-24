package com.myhome.user;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.myhome.DBUtil;

public class BoardUsedDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	private CallableStatement cstat;

	public BoardUsedDAO() {
		// DB 연결
		conn = DBUtil.open();
	}

	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}


	//boardusedlist.do 에서 전체리스트 정보 출력을 정보요청
	public ArrayList<BoardUsedDTO> getList(HashMap<String, String> map) {
		ArrayList<BoardUsedDTO> list = new ArrayList<BoardUsedDTO>();

		try {
			String where ="";

			if (map.get("search")!=null) {
				where = String.format("where name like '%%%s%%' or title like '%%%s%%' or nickname like '%%%s%%'",map.get("search"),map.get("search"),map.get("search"));
			}

			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwUsedUserVer %s order by seqUsed desc) a) where rnum between %s and %s"
														, where
														, map.get("begin")
														, map.get("end"));

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			while(rs.next()) {
				BoardUsedDTO dto = new BoardUsedDTO();

				dto.setCategory(rs.getString("category"));
				dto.setImagePath(rs.getString("imagePath"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setPrice(rs.getInt("price"));
				dto.setSeqUsed(rs.getInt("seqUsed"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setTitle(rs.getString("title"));
				dto.setTradeMode(rs.getString("tradeMode"));
				dto.setWriteDate(rs.getDate("writeDate"));
				dto.setCommentCount(rs.getInt("commentCount"));

				list.add(dto);			

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	//전체 글 수 반환
	public int getTotalCount(HashMap<String, String> map) {
		int cnt = 0;
		try {
String where ="";

			if (map.get("search")!=null) {
				where = String.format("where name like '%%%s%%' or title like '%%%s%%' or nickname like '%%%s%%'",map.get("search"),map.get("search"),map.get("search"));
			}

			String sql = String.format("select count(*) as cnt from vwUsedUserVer %s order by seqUsed desc", where);

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}


		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}


	//상세 글 정보 반환

	public BoardUsedDTO getView(int seqUsed) {
		BoardUsedDTO dto = new BoardUsedDTO();
		try {

			String sql = "select seqUsed, seqUser, title, name, tradeMode, category, price, content from vwUsedUserVer where seqUsed = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUsed);

			rs = pstat.executeQuery();

			if(rs.next()) { 
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setTradeMode(rs.getString("tradeMode"));
				dto.setCategory(rs.getString("category"));
				dto.setPrice(rs.getInt("price"));
				dto.setContent(rs.getString("content"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setSeqUsed(rs.getInt("seqUsed"));
			}


		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	//댓글 목록 가져가기
	public ArrayList<UsedCommentDTO> getComment(int seqUsed) {
		ArrayList<UsedCommentDTO> list = new ArrayList<UsedCommentDTO>();
		try {

			String sql = "select seqUsedComment, seqUser, (select nickname from tblAllUser where seqAllUser = a.seqUser) as nickname, content, writeDate from tblUsedComment a where seqUsed = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUsed);

			rs = pstat.executeQuery();

			while(rs.next()) {

				UsedCommentDTO dto = new UsedCommentDTO();
				dto.setSeqUsedComment(rs.getInt("seqUsedComment"));
				dto.setContent(rs.getString("content"));
				dto.setNickname(rs.getString("nickname"));
				dto.setWriteDate(rs.getDate("writeDate"));
				dto.setSeqUser(rs.getInt("seqUser"));

				list.add(dto);
			}


		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//글쓸때 필요한 작성자 이름 가져오기
	public BoardUsedDTO getWriterName(int seq) {
		BoardUsedDTO dto = new BoardUsedDTO();
		try {

			String sql = "select name from tblAllUser where seqAllUser = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setInt(1, seq);

			rs = pstat.executeQuery();

			if(rs.next()) {
				dto.setName(rs.getString("name"));
			}


		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public int insertUsed(HashMap map) {
		int result = 0;

		try {

			String sql = "insert into tblUsed values(seqUsed.nextVal, ?, ?, 1, ?, ?, 1, sysdate, ?, ? )";

			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, (int)map.get("category"));
			pstat.setInt(2, (int)map.get("seq"));
			pstat.setString(3, (String)map.get("title"));
			pstat.setString(4, (String)map.get("content"));
			pstat.setInt(5, (int)map.get("price"));
			pstat.setString(6, (String)map.get("tradeMode"));

			result = pstat.executeUpdate();


		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	//boarduseddelete.do -> 글 삭제 요청
	public int deleteUsed(int seqUsed, int seqUser) {
		
		int result = 0;
		
		try {
			
			String sql = "{call procDeleteUsed(?,?)}";
			
			cstat = conn.prepareCall(sql);
			cstat.setInt(1, seqUsed);
			cstat.setInt(2, seqUser);
			
			result = cstat.executeUpdate();
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//찜목록 추가하기 전에 중복된 찜목록이 있는지 확인.
	public int checkLike(LikesDTO dto) {
		
		int result = 0;
		
		try {
		
			String sql = "select count(*) as cnt from tblLikes where seqUser = ? and seqUsed = ?";

			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, dto.getSeqUser());
			pstat.setInt(2, dto.getSeqUsed());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				result = rs.getInt("cnt");
				
			}
			
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	//boardusedinsertlike.do -> 찜목록 추가 요청
	public int insertLike(LikesDTO dto) {
		
		int result = 0;
		
		try {
			
			String sql = "insert into tblLikes values(seqLikes.nextVal, ?, null, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, dto.getSeqUsed());
			pstat.setInt(2, dto.getSeqUser());
			
			result = pstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

	//boardusedinsertlike.do -> 찜목록 삭제 요청
	public int deleteLike(LikesDTO dto) {
		
		int result = 0;
		
		try {
			
			String sql = "delete from tblLikes where seqUser = ? and seqUsed = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, dto.getSeqUser());
			pstat.setInt(2, dto.getSeqUsed());
			
			result = pstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
		
	}
	
	//usedcommentwrite.do -> 댓글 작성 요청
	public int writeComment(UsedCommentDTO dto) {
		
		int result = 0;
		
		try {
			
			String sql = "insert into tblUsedComment values(seqUsedComment.nextVal, ?, ?, ?, sysdate)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setInt(1, dto.getSeqUser());
			pstat.setInt(2, dto.getSeqUsed());
			pstat.setString(3, dto.getContent());
			
			result = pstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return result;
		
	}

	public int deleteComment(int seqUsedComment) {
		
		int result = 0;
		
		try {
			
			String sql = "delete from tblUsedComment where seqUsedComment = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUsedComment);
			
			result = pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}