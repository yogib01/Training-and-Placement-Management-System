package tps;

public class SendMail {

	private String rmail[], subject, body, email, password, attachment[];

	int attach;
	int flag;

	public String[] getAttachment() {
		return attachment;
	}

	public void setAttachment(String[] attachment) {
		this.attachment = attachment;
	}

	public String[] getRmail() {
		return rmail;
	}

	public void setRmail(String[] rmail) {
		this.rmail = rmail;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int sendMail() {
		attach = 1;
		if (this.getAttachment()==null)
			attach = 0;
		
		try {
			com.mail.SendMailUsingAuthentication smail = new com.mail.SendMailUsingAuthentication();
			// String receipientsList[] = "engg.sangramsing@mail.com";
			// String receipients = to + "," + cc;
			// receipientsList = receipients.split(",");
			smail.setSmtpHost("smtp.gmail.com");

			if (attach == 1) {
				System.out.println("with Attachment");
				smail.postMail(this.getRmail(), this.getSubject(), this.getBody(), this.getEmail(), this.getPassword(),this.getAttachment());
				// smail.postMail(receipientsList,subject, body, email, pass,f);
			} else if (attach == 0) {
				// smail.postMail(receipientsList,subject, body, email, pass,null);
				System.out.println("without Attachment");
				smail.postMail(this.getRmail(), this.getSubject(), this.getBody(), this.getEmail(), this.getPassword(), null);
			}
			flag = 1;
		} catch (Exception ex) {
			flag = 0;
			ex.printStackTrace();
		}
		return flag;
	}
}
