package servlet;

import dao2.MessageDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created by alphb on 25/04/2018.
 */
@WebServlet(name = "articleAddServlet", urlPatterns = "/addArticle")
public class articleAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MessageDao messageDao = new MessageDao();
        Date date = new Date();
//        String author = request.getParameter("author");
        String author = "abc";
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        try {
            messageDao.addMessage(author, title, content, date);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
