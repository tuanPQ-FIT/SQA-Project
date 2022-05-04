package com.bookworm.service;

import com.bookworm.model.Message;
import com.bookworm.model.User;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.exceptions.UnirestException;

import java.util.List;

public interface MessageService {
    Message saveMessage(Message message);

    List<Message> getMessages();

    Message getMessageById(Long id);

    void setMessageRead(Long id);

    void delete(Message message);

    void sendMessageToUser(User toUser, String content);

    /*
        How to use send mail function
        ============================
        HttpResponse<JsonNode> result = sendMail(.....);
        if(result == null || result.getStatus() != 200) {
            String exceptionResponse = result.getBody().toString();
            throw new ServiceException((result.getStatus() + result.getStatusText()), exceptionResponse);
        }
     */
    JsonNode sendEmail(String from, String to, String subject, String content) throws UnirestException;
}
