package cn.itcast.service.impl;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import cn.itcast.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public class AccountServiceImpl implements AccountService{


    public List<Account> findAll() {
        System.out.println("业务层：查询所有账户...");
        return null;
    }

    public void save(Account account) {
        System.out.println("业务层：保存帐户...");

    }
}
