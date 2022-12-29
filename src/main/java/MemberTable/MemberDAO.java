package MemberTable;

import java.util.List;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{
	
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	//application 내장객체만 매개변수로 전달후 DB에 연결한다.
	public MemberDAO(ServletContext application) {
		super(application);
	}
	//회원가입용
	public int insertMember(MemberDTO dto) {
		
		int result= 0;
		
		//16개!
		try {
			String query = "INSERT INTO member VALUES(?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getPhone());

			
			result = psmt.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//로그인용
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM member WHERE id=? AND pass=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setEmail(rs.getString(4));
				dto.setPhone(rs.getString(5));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public List<String> idCheck() {
		List<String> ilist = new Vector<String>();
		String query = "SELECT id FROM member";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				ilist.add(rs.getString(1));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("중복체크 오류");
		}
		return ilist;
	}
	
	//아이디중복체크
		public int selectCheckId(String id) {
			int result= 0;
			
			try {
				String query = "SELECT id FROM member WHERE id=?";
				psmt = con.prepareStatement(query);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if(rs.next()) {
					result=1;
					System.out.println("result 값:" + result);
				}
				else {
					result=0;
					System.out.println("result 값:" + result);
				}
				rs.close();
				psmt.close();
				con.close();
			}
			catch (Exception e) {
				System.out.println("중복체크 중 오류 발생");
				e.printStackTrace();
			}
			return result;
		}
	
	//아이디 찾기
		public String findId(String name, String email) {
			String result = null;
			
			try {
				String query = "SELECT id from member WHERE name=? and email=?";
				psmt = con.prepareStatement(query);
				psmt.setString(1, name);
				psmt.setString(2, email);
				rs = psmt.executeQuery();
				if(rs.next()) {
					result = rs.getString("id");
				}
			}
			catch (Exception e) {
				System.out.println("아이디 찾기중 예외발생");
				e.printStackTrace();
			}
			return result;
		}
		
		//비밀번호 찾기
		public String findPw(String id, String name, String email) {
			String result = null;
			
			try {
				String query = "SELECT pass from member WHERE id=? and name=? and email=?";
				psmt = con.prepareStatement(query);
				psmt.setString(1, id);
				psmt.setString(2, name);
				psmt.setString(3, email);
				rs = psmt.executeQuery();
				if(rs.next()) {
					result = rs.getString("pass");
				}
			}
			catch (Exception e) {
				System.out.println("비밀번호 찾기중 예외발생");
				e.printStackTrace();
			}
			return result;
		}
		public int editMember (MemberDTO dto) {
			
			int result = 0;
			
			try {
				String query = "UPDATE member SET pass=?, email=?, phone=? WHERE id=? ";
				
				psmt = con.prepareStatement(query);
				psmt.setString(1, dto.getPass());
				psmt.setString(2, dto.getEmail());
				psmt.setString(3, dto.getPhone());
				psmt.setString(4, dto.getId());
				
				result = psmt.executeUpdate();			
			} 
			catch (Exception e) {
				System.out.println("회원정보 수정 중 오류 발생");
				e.printStackTrace();
			}
			return result;
		}
}
