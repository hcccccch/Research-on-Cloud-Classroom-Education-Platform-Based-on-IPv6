package web2017.team1.baipeixiang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import web2017.team1.baipeixiang.dao.LoginLogDao;
import web2017.team1.baipeixiang.dao.UserDao;
import web2017.team1.baipeixiang.domain.LoginLog;
import web2017.team1.baipeixiang.domain.User;
@Transactional
@Service
public class UserService {
    
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LoginLogDao loginLogDao;

	public boolean hasMatchUser(String userName, String password) {
		int matchCount =userDao.getMatchCount(userName, password);
		return matchCount > 0;
	}
	
	public User findUserByUserName(String userName) {
		return userDao.findUserByUserName(userName);
	}
	
	public void loginSuccess(User user) {
		user.setCredits( 5 + user.getCredits());
		LoginLog loginLog = new LoginLog();
		loginLog.setUserId(user.getUserId());
		loginLog.setIp(user.getLastIp());
		loginLog.setLoginDate(user.getLastVisit());
        userDao.updateLoginInfo(user);
        loginLogDao.insertLoginLog(loginLog);
	}	
	public void transfer( String out,  String in,  int credits) {
		userDao.outCredits(out, credits);
		System.out.print(credits);
		//int i = 1/0;//…Ë÷√“Ï≥£
		userDao.inCredits(in, credits);
		System.out.print(credits);
}
	public User queryForCreditsByUser(String user) {
		return userDao.findUserByUserName(user);

		
		// TODO Auto-generated method stub
		
	}
}
