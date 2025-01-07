/* This code is used for send the mail to the any users.</div>
 * It is done by Java Mail Api.
 * By using this code we can send mail with out enter into your mail Account.
 * @author muneeswaran
 */
package com.mail;

import java.util.Properties;
import javax.activation.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMailUsingAuthentication {

    private String HOST_NAME = "smtp.gmail.com";
    String messageBody;

    public void setSmtpHost(String HOST_NAME){
	this.HOST_NAME = HOST_NAME;
    } 		
    public boolean postMail(String recipients[], String subject, String message,
            String from, String emailPassword, String[] files) throws Exception {
        boolean debug = false;
        java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());

        //Set the host smtp address
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", HOST_NAME);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Authenticator authenticator = new SMTPAuthenticator(from, emailPassword);
        Session session = Session.getInstance(props, authenticator);

        session.setDebug(debug);

        // create a message
        Message msg = new MimeMessage(session);

        // set the from and to address
        InternetAddress addressFrom = new InternetAddress(from);
        msg.setFrom(addressFrom);

        InternetAddress[] addressTo = new InternetAddress[recipients.length];
        for (int i = 0; i < recipients.length; i++) {
            addressTo[i] = new InternetAddress(recipients[i]);
        }
        msg.setRecipients(Message.RecipientType.TO, addressTo);

        // Setting the Subject and Content Type
        msg.setSubject(subject);
        msg.setContent(message, "text/plain");

        BodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setText(message);

        Multipart multipart = new MimeMultipart();

        //add the message body to the mime message
        multipart.addBodyPart(messageBodyPart);

        // add any file attachments to the message
        
        if(files!=null){	
        	addAtachments(files, multipart);
        
        }
        //Put all message parts in the message
        msg.setContent(multipart);
       
        Transport.send(msg);
        System.out.println("Sucessfully Sent mail to All Users");
	return true;
	
    }

    protected void addAtachments(String[] attachments, Multipart multipart)
            throws MessagingException, AddressException {
        for (int i = 0; i <= attachments.length - 1; i++) {
            String filename = attachments[i];
            MimeBodyPart attachmentBodyPart = new MimeBodyPart();
            //use a JAF FileDataSource as it does MIME type detection
            DataSource source = new FileDataSource(filename);
            attachmentBodyPart.setDataHandler(new DataHandler(source));
            attachmentBodyPart.setFileName(filename);
            //add the attachment
            multipart.addBodyPart(attachmentBodyPart);
        }
    }

    private class SMTPAuthenticator extends javax.mail.Authenticator {

        String username;
        String password;

        private SMTPAuthenticator(String authenticationUser, String authenticationPassword) {
            username = authenticationUser;
            password = authenticationPassword;
        }

        @Override
        public PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(username, password);
        }
    }
}
