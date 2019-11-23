/**
 * 版权所有 (c) 2019，zxg
 */
package com.cyclelife.biz;

import com.cyclelife.dao.CustomerUserDao;
import com.cyclelife.domain.CustomerUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 信息说明
 * <pre>
 * Modify Information:
 * Author          Date          Description
 * ============   ============= ============================
 * ZhangXingguang  2019/11/23       Create
 * </pre>
 */
@Service
public class CustomerUserBiz {

    @Autowired
    private CustomerUserDao customerUserDao;

    public CustomerUser findUserByPhone(String phoneNumber){

        CustomerUser customerUser = null;
        try {
            customerUser = customerUserDao.findCustomerUserByPhoneNumber(phoneNumber);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return customerUser;

    }
}
