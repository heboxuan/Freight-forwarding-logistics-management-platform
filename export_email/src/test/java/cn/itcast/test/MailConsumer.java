package cn.itcast.test;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;

public class MailConsumer {

    public static void main(String[] args) throws IOException {
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-consumer.xml");
        ac.start();
        System.in.read();
    }
}
