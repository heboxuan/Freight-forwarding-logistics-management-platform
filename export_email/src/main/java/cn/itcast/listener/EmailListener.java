package cn.itcast.listener;

import cn.itcast.common.utils.MailUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageListener;

import java.util.Map;


/**
 * 使用rabbitMQ发送消息
 *    消息生产者将消息发送到rabbit中
 *    消费者监听rabbit获取消息
 *
 *
 */
public class EmailListener implements MessageListener {


    /**
     * message:消息对象
     *
     */
    public void onMessage(Message message) {
        byte[] body = message.getBody(); //数据
        //将body转化为json，json还原成map集合
        Map map = JSON.parseObject(body, Map.class);
        //调用工具类发送邮件
        String to = (String)map.get("to");
        String subject = (String)map.get("subject");
        String content = (String)map.get("content");
        System.out.println(to);
        System.out.println(subject);
        System.out.println(content);
        try {
            MailUtil.sendMsg(to, subject, content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

