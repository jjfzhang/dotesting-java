package com.jjfzhang.rose.world.service;

import java.security.SecureRandom;
import java.util.Random;

public class Test {

    public static final long APP_ID_FOR_DEVELOP = 2000000000L;

    public static final long APP_ID_FOR_TEST = 1000000000L;

    private static Random randNum = new SecureRandom();

    public static String genAppKey(long appId) {
        appId = normalizeAppId(appId);
        long last3bit = appId % 1000;
        long left = appId / 1000;
        long mid5bit = left % 100000;
        left = left / 100000;
        long rand1 = randNum.nextInt(90) + 10;
        long rand2 = randNum.nextInt(90) + 10;
        long appKey = (left * 1000 * 100 * 100000 * 100 + rand1 * 100000 * 100 * 1000 +
                mid5bit * 1000 * 100 + rand2 * 1000 + last3bit);

        return String.valueOf(appKey);
    }

//    public static String genSecretKey()  {
//        Random random=new SecureRandom();
//        byte[] bytes=new byte[16];
//        random.nextBytes(bytes);
//        String aesKey = BASE64Encoder.encode(bytes);
//        Arrays.fill(bytes, (byte)0);
//        return aesKey;
//    }

    public static long normalizeAppId(long appId) {
        if (appId > APP_ID_FOR_DEVELOP) {
            return appId % APP_ID_FOR_DEVELOP;
        } else if (appId > APP_ID_FOR_TEST) {
            return appId - APP_ID_FOR_TEST;
        }
        return appId;
    }

    public static void main(String[] args) {
        String uri = "/appadmin/apppad/top";
        System.out.println(uri.replaceAll("/apppad/", "/app/"));
        System.out.println(uri);
        uri = uri.replaceAll("/apppad/", "/app/");
        System.out.println(uri);
    }
}
