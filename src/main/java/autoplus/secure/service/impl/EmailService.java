package autoplus.secure.service.impl;

import autoplus.secure.entity.Client;
import autoplus.secure.entity.Tyres;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * Created by Admin on 17.05.2016.
 */
@Service
public class EmailService {
    @Autowired
    private JavaMailSender sender;
    private StringBuffer templates;

    private JavaMailSender getSender() {
        return sender;
    }
    public void sendMail(String to, Client client, String urlToFile) throws IOException {
        templates = new StringBuffer(FileUtils.readFileToString(new File(urlToFile), "utf-8"));
        this.setVariable("name", client.getName());
        this.setVariable("phone", client.getPhone());
        this.setVariable("email", client.getEmail());
        MimeMessage message = sender.createMimeMessage();
        try {
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject("message from site autoplus.sumy.ua", "UTF-8");
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setContent(templates, "text/html; charset=utf-8");
            message.setText(templates.toString(), "utf-8", "html");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        sender.send(message);
    }
    public void sendMailOrder(String to, Client client, String name, String urlToFile) throws IOException {
        templates = new StringBuffer(FileUtils.readFileToString(new File(urlToFile), "utf-8"));
        this.setVariable("nameorder", name);
        this.setVariable("name", client.getName());
        this.setVariable("phone", client.getPhone());
        this.setVariable("email", client.getEmail());
        MimeMessage message = sender.createMimeMessage();
        try {
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject("message from site autoplus.sumy.ua", "UTF-8");
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setContent(templates, "text/html; charset=utf-8");
            message.setText(templates.toString(), "utf-8", "html");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        sender.send(message);
    }
    public void sendMailTyres(String to, Client client, Tyres tyres, String urlToFile) throws IOException {
        templates = new StringBuffer(FileUtils.readFileToString(new File(urlToFile), "utf-8"));
        this.setVariable("nameTyres", tyres.getName());
        this.setVariable("priceTyres", tyres.getPrice());
        this.setVariable("sizeTyres", tyres.getSize());
        this.setVariable("name", client.getName());
        this.setVariable("phone", client.getPhone());
        this.setVariable("email", client.getEmail());
        MimeMessage message = sender.createMimeMessage();
        try {
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject("message from site autoplus.sumy.ua", "UTF-8");
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setContent(templates, "text/html; charset=utf-8");
            message.setText(templates.toString(), "utf-8", "html");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        sender.send(message);
    }
    public void setVariable(String parameter, String value) throws UnsupportedEncodingException {
        if (value == null) {
            value = "not set";
        }
        parameter = "${" + parameter + "}";
        int index = templates.indexOf(parameter);
        while (index != -1) {
            templates.replace(index, index + parameter.length(), value);
            index += value.length();
            index = templates.indexOf(parameter, index);
        }
    }

}