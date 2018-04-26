package model;

import sun.misc.resources.Messages_es;

public class Message {
    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public String getMessage_author() {
        return message_author;
    }

    public void setMessage_author(String message_author) {
        this.message_author = message_author;
    }

    public String getMessage_title() {
        return message_title;
    }

    public void setMessage_title(String message_title) {
        this.message_title = message_title;
    }

    public String getMessage_content() {
        return message_content;
    }

    public void setMessage_content(String message_content) {
        this.message_content = message_content;
    }

    public String getMessage_date() {
        return message_date;
    }

    public void setMessage_date(String message_date) {
        this.message_date = message_date;
    }

    private int message_id;
    private String message_author;
    private String message_title;
    private String message_content;
    private String message_date;


    public Message(int message_id, String message_author, String message_title, String message_content, String message_date) {
        super();
        this.message_id = message_id;
        this.message_author = message_author;
        this.message_title = message_title;
        this.message_content = message_content;
        this.message_date = message_date;
    }


}
