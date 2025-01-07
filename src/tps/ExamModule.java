package tps;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExamModule {

	private String examname,question,op1,op2,op3,op4,answer,uname;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	private int totaltime,qno,job_id,examid,totalquestion;
	public int getTotalquestion() {
		return totalquestion;
	}
	public void setTotalquestion(int totalquestion) {
		this.totalquestion = totalquestion;
	}
	public int getExamid() {
		return examid;
	}
	public void setExamid(int examid) {
		this.examid = examid;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getExamname() {
		return examname;
	}
	public void setExamname(String examname) {
		this.examname = examname;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOp1() {
		return op1;
	}
	public void setOp1(String op1) {
		this.op1 = op1;
	}
	public String getOp2() {
		return op2;
	}
	public void setOp2(String op2) {
		this.op2 = op2;
	}
	public String getOp3() {
		return op3;
	}
	public void setOp3(String op3) {
		this.op3 = op3;
	}
	public String getOp4() {
		return op4;
	}
	public void setOp4(String op4) {
		this.op4 = op4;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getTotaltime() {
		return totaltime;
	}
	public void setTotaltime(int totaltime) {
		this.totaltime = totaltime;
	}
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	
	public int examModule1(){
		
		Connection con= DBConnection.getConnection();
		int i=0,lastcid=0;
		ResultSet rs=null,rs1=null;
		try {
			String eid="select max(examid) from Exam";
			Statement stmt=con.createStatement();
			rs=stmt.executeQuery(eid);
			
			if(rs.next()){
				lastcid=rs.getInt(1);
			}
			examid=lastcid+1;
			
			String jid="select job_id from Recruiter where uname='"+this.getUname()+"'";
			Statement stmt1=con.createStatement();
			rs1=stmt1.executeQuery(jid);
			if(rs1.next()){
				job_id=rs1.getInt(1);
			}
			uname=this.getUname();
			
			PreparedStatement pstmt=con.prepareStatement("insert into Exam values(?,?,?,?,?,?)");
			pstmt.setInt(1,examid);
			pstmt.setString(2,examname);
			pstmt.setInt(3,job_id);
			pstmt.setString(4,uname);
			pstmt.setInt(5,totaltime);
			pstmt.setInt(6,totalquestion);
			
			i=pstmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public int questionInsert(){
		Connection con= DBConnection.getConnection();
		int i=0;
		try {
			
			//examid=this.getExamid();
			PreparedStatement pstmt=con.prepareStatement("insert into Exam values(?,?,?,?,?,?,?,?)");
			pstmt.setInt(1,examid);
			pstmt.setInt(2,qno);
			pstmt.setString(3,question);
			pstmt.setString(4,op1);
			pstmt.setString(5,op2);
			pstmt.setString(6,op3);
			pstmt.setString(7,op4);
			pstmt.setString(8,answer);
			
			i=pstmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
}
