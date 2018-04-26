package servlet;


import dao2.MessageDao;
import model.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

/**
 * Created by alphb on 24/04/2018.
 */
@WebServlet(name = "TalkingContentDetailServlet", urlPatterns = "/article")
public class TalkingContentDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int article_id;
        article_id = new Integer(request.getParameter("id"));
        MessageDao messageDao = new MessageDao();
        Message message = null;
        try {
            message = messageDao.queryShowById(article_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("message", message);
        request.getRequestDispatcher("page/talking/article.jsp?id=" + article_id).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
