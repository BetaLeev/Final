package dao2;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sun.org.apache.regexp.internal.RE;
import model.Message;

public class MessageDao extends BaseDao {

    public List <Message> queryShow() {

        String sql = "SELECT * FROM MESSAGE";
        List <Message> messageList = new ArrayList <>();
        try {
            getConnection();
            pre = con.prepareStatement(sql);
            re = pre.executeQuery();
            while (re.next()) {
                Message message = getByRe(re);
                messageList.add(message);
            }

        } catch (Exception e) {
        } finally {
            try {
                Close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return messageList;
    }

    public Message queryShowById(int id) throws Exception {

        String sql = "SELECT * FROM MESSAGE WHERE id = ?";
        List <Message> messageList = new ArrayList <>();
        getConnection();
        pre = con.prepareStatement(sql);
        pre.setInt(1, id);
        ResultSet resultSet = pre.executeQuery();
        while (resultSet.next()) {
            Message message = getByRe(resultSet);
            messageList.add(message);
        }
        if (messageList.size() < 1) {
            return null;
        } else {
            Close();
            return messageList.get(0);
        }
    }

    public void addMessage(String author, String title, String content, Date date) throws Exception {
        String sql = "INSERT INTO MESSAGE(author,title,content,date)VALUES(?,?,?,?)";
        getConnection();
        pre = con.prepareStatement(sql);
        pre.setString(1, author);
        pre.setString(2, title);
        pre.setString(3, content);
        pre.setDate(4, (java.sql.Date) date);
    }


    public Message getByRe(ResultSet re) throws Exception {
        int message_id = re.getInt("id");
        String message_author = re.getString("author");
        String message_title = re.getString("title");
        String message_content = re.getString("content");
        String message_date = re.getString("date");
        Message message = new Message(message_id, message_author, message_title, message_content, message_date);
        return message;
    }


}