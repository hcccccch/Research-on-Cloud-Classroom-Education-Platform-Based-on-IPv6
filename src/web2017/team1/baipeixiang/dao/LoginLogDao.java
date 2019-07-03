package web2017.team1.baipeixiang.dao;

import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import web2017.team1.baipeixiang.domain.LoginLog;


@Repository
public class LoginLogDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insertLoginLog(LoginLog loginLog) {
		System.out.println("–¥»Î»’÷æ");
		String sqlStr = "INSERT INTO t_login_log(user_id,ip,login_datetime) "
				+ "VALUES(?,?,?)";
		Object[] args = { loginLog.getUserId(), loginLog.getIp(),
				          loginLog.getLoginDate() };
		jdbcTemplate.update(sqlStr, args);
	}
}