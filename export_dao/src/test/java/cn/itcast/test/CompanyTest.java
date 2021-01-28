package cn.itcast.test;

import cn.itcast.dao.company.CompanyDao;
import cn.itcast.domain.company.Company;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext-dao.xml")
public class CompanyTest {
    @Autowired
    private CompanyDao companyDao;

    @Test
    public void testOne() throws Exception {
        Company company = companyDao.selectByPrimaryKey("1");
        System.out.println(company.getName());
    }
}
