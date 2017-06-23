package cn.org.cstc.bctest.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.dao.UserDao;

public interface UserMapper {
	@Select("select * from user where id = #{id}")
	@ResultType(User.class)
	public User selectUserById(int id);

	
	@Insert("insert into user(id,username,mobile,register_time,last_login_time,password) "
			+ "values (#{id}, #{name},#{mobile},#{regesterTime},#{lastLoginTime},#{password})")
	@ResultType(Boolean.class)
	public boolean InsertUser(User user);
	
	@SelectProvider(type=UserDao.class, method="selectUserByUser")
	@ResultType(User.class)
	public User selectUserByUser(User user);
	
	@Select("select * from user where username = #{userName}")
	@ResultType(User.class)
	public User selectUserByUsername(String userName);
	
	@Update("update user set last_login_time = CURRENT_TIMESTAMP() where id = #{id}")
	public void updateLoginTime(int id);
}
