/**
 * 版权所有 (c) 2019，zxg
 */
package mybatis_test;

import org.apache.logging.log4j.LogManager;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 信息说明
 * <pre>
 * Modify Information:
 * Author          Date          Description
 * ============   ============= ============================
 * ZhangXingguang  2019/11/24       Create
 * </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application.xml")
public class LogTest {

    Logger logger= LoggerFactory.getLogger("system");

    @Test
    public void test01(){
        System.out.println("测试日志框架的使用");

        logger.trace("测试log4j2---trace");
        logger.debug("测试log4j2---debug");
        logger.info("测试log4j2---info");
        logger.warn("测试log4j2---warn");
        logger.error("测试log4j2---trace");
    }
}
