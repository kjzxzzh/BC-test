package cn.org.cstc.bctest.bean;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Case {
	
	private int  id; //用例idasd 
	
	private String case_no;//测试编号 qqw
	private String case_title;//测试名字
	private String case_child_project;//测试子项目
	private String case_requirement_identify;//测试需求
	private String case_goal;//测试目的
	private String case_basis;//测试依据
	private String case_excute_procedure;//测试步骤
	private String case_expected_result;//预期结果
	private Timestamp case_run_last_time;
	private boolean case_result_lasttime;
}
