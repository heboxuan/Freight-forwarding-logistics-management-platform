package cn.itcast.test;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;

public class ProviderTest {
    public static void main(String[] args) throws IOException {
        //1.加载spring配置文件
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath*:spring/applicationContext-*.xml");
        //2.启动spring容器lasspath:applicationConte
        ac.start();
        //3.输入任一项关闭
        System.in.read();
    }

}
