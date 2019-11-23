/**
 * 版权所有 (c) 2019，zxg
 */
package mybatis_test;

import com.cyclelife.biz.CustomerUserBiz;
import com.cyclelife.domain.CustomerUser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 信息说明
 * <pre>
 * Modify Information:
 * Author          Date          Description
 * ============   ============= ============================
 * ZhangXingguang  2019/11/23       Create
 * </pre>
 */

//@RunWith就是一个运行器
//@RunWith(JUnit4.class)就是指用JUnit4来运行
//@RunWith(SpringJUnit4ClassRunner.class),让测试运行于Spring测试环境
//@RunWith(Suite.class)的话就是一套测试集合
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application.xml")
public class mybatistest1 {

    @Autowired
    private CustomerUserBiz customerUserBiz;

    @Test
    public void test01(){

        System.out.println("222");
        CustomerUser userByPhone = customerUserBiz.findUserByPhone("19910210257");

        System.out.println(userByPhone.getRealName());

    }
}
