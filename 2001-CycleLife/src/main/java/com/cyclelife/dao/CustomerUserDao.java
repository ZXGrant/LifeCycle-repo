/**
 * 版权所有 (c) 2019，中金支付有限公司
 */
package com.cyclelife.dao;

import com.cyclelife.domain.CustomerUser;
import org.springframework.stereotype.Repository;

/**
 * 信息说明
 * <pre>
 * Modify Information:
 * Author          Date          Description
 * ============   ============= ============================
 * ZhangXingguang  2019/10/31       Create
 * </pre>
 */
@Repository
public interface CustomerUserDao {

     CustomerUser findCustomerUserByPhoneNumber(String phoneNumber);
}
