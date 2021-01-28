package cn.itcast.common.utils;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

import javax.sound.midi.Soundbank;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class ImageUploadUtils {

    private static String accessKey = "Bf4Qncyl0sCAkx7vXpmHOSlwzGjYQRqhETkiZEta";
    private static String secretKey = "5bOse2ZFElVjEDFs4Ds9cOQWxJK9xoMU7Ja_yJjP";
    private static String bucket = "19980920";
    private static String imageUrl = "http://qin84urli.hd-bkt.clouddn.com/";

    /**
     * byte数组上传，抽取工具类
     * 参数：byte数组
     * 返回值：上传到七牛云之后，的请求URL
     *  域名 + 存储到七牛云的图片名称
     *
     */
    public String upload(byte[] uploadBytes ) {
        String url = "http://qin84urli.hd-bkt.clouddn.com/";
        //构造一个带指定 Region 对象的配置类
        Configuration cfg = new Configuration(Region.region0());
        //...其他参数参考类注释
        UploadManager uploadManager = new UploadManager(cfg);
        //默认不指定key的情况下，以文件内容的hash值作为文件名
        String key = null;
        try {
            Auth auth = Auth.create(accessKey, secretKey);
            String upToken = auth.uploadToken(bucket);
            try {
                Response response = uploadManager.put(uploadBytes, key, upToken);
                DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
                imageUrl = url + putRet.key ;//上传到七牛云，存储的图片名称
            } catch (QiniuException ex) {
                Response r = ex.response;
            }
        } catch (Exception ex) {
            //ignore
        }
        return imageUrl;
    }

    public static void main(String[] args) throws Exception {
        File file = new File("E:\\BaiduNetdiskDownload\\项目一\\资料\\day09\\内衬.jpg");
        InputStream input = new FileInputStream(file);
        byte[] byt = new byte[input.available()];
        input.read(byt);
        //调用工具类上传
        String img = new ImageUploadUtils().upload(byt);
        System.out.println(img);
    }
}

