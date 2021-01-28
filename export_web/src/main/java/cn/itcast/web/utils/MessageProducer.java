package cn.itcast.web.utils;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageProducer {

    @Autowired
    private RabbitTemplate rabbitTemplate;

    public void send(String key,Object message) {
        rabbitTemplate.convertAndSend(key,message);
    }
}