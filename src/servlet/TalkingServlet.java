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
 * Created by alphb on 22/04/2018.
 */
@WebServlet(name = "talkingServlet", urlPatterns = "/talking")
public class TalkingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MessageDao messageDao = new MessageDao();
        List <Message> messageList;
        messageList = messageDao.queryShow();
        request.setAttribute("list", messageList);
        request.getRequestDispatcher("page/talking/talking1.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
