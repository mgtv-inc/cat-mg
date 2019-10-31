package com.dianping.cat.demo;

import com.dianping.cat.Cat;
import com.dianping.cat.message.Event;
import com.dianping.cat.message.Transaction;
import org.junit.Test;

/**
 * @program: parent
 * @description: 对Transaction本地测试
 * @author: Abel(wuhong @ mgtv.com)
 * @create: 2019-10-22 19:50
 **/
public class LocalTransactionTest {


    @Test
    public void testLocalToTransaction() {
        for (int j = 0; j <= 100000; j++) {
            Transaction t = Cat.newTransaction("http://172.28.126.249:801", "c");

            try {
                Cat.logEvent("URL.Server", "serverIp", Event.SUCCESS, "ip=${serverIp}");
                Cat.logMetricForCount("metric.key");
                Cat.logMetricForDuration("metric.key", 5);

                int i = 0;
                i++;

                t.setStatus(Transaction.SUCCESS);
            } catch (Exception e) {
                t.setStatus(e);
                Cat.logError(e);
            } finally {
                t.complete();
            }
            if(j==1000){
                System.out.println("plause");
            }
        }

    }
}
