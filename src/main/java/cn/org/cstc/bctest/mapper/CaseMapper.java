package cn.org.cstc.bctest.mapper;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import cn.org.cstc.bctest.bean.Case;

public interface CaseMapper {

	@Select("select count(*) from case_detail where case_title like   concat('%',#{key},'%')")
	public int getCaseSum(@Param("key") String key);
	
	@Select("select * from case_detail where case_title like   concat('%',#{key},'%') limit #{start},#{number}")
	@Results({
			@Result(column="id", property="id"),
			@Result(column="case_no", property="case_no"),
			@Result(column="case_title", property="case_title"),
			@Result(column="case_child_project", property="case_child_project"),
			@Result(column="case_requirement_identify", property="case_requirement_identify"),
			@Result(column="case_goal", property="case_goal"),
			@Result(column="case_basis", property="case_basis"),
			@Result(column="case_excute_procedure", property="case_excute_procedure"),
			@Result(column="case_expected_result", property="case_expected_result"),
			@Result(column="case_run_last_time", property="case_run_last_time"),
			@Result(column="case_result_lasttime", property="case_result_lasttime")
			
			})
		
	public List<Case> getCaseSet(@Param("start")int start,@Param("number") int number,@Param("key") String key);
	
}
