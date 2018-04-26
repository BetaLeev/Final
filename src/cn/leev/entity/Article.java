package cn.leev.entity;

import java.util.Date;

/**
 * Created by alphb on 25/04/2018.
 */
public class Article {

    private int article_id;
    private String article_title;
    private String article_author;
    private String article_content;
    private Date article_date;
    private Date article_last_edit_date;

    public Article(int article_id, String article_author, String article_title, String article_content, Date article_date, Date article_last_edit_date) {
        super();
        this.article_id = article_id;
        this.article_author = article_author;
        this.article_title = article_title;
        this.article_content = article_content;
        this.article_date = article_date;
        this.article_last_edit_date = article_last_edit_date;
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }


    public String getArticle_title() {
        return article_title;
    }

    public void setArticle_title(String article_title) {
        this.article_title = article_title;
    }

    public String getArticle_author() {
        return article_author;
    }

    public void setArticle_author(String article_author) {
        this.article_author = article_author;
    }

    public String getArticle_content() {
        return article_content;
    }

    public void setArticle_content(String article_content) {
        this.article_content = article_content;
    }

    public Date getArticle_date() {
        return article_date;
    }

    public void setArticle_date(Date article_date) {
        this.article_date = article_date;
    }

    public Date getArticle_last_edit_date() {
        return article_last_edit_date;
    }

    public void setArticle_last_edit_date(Date article_last_edit_date) {
        this.article_last_edit_date = article_last_edit_date;
    }


}
