<table cellpadding="0" cellspacing="0" border="0" bgcolor="#dcdcdc" width="100%" style="background: #fff;" class="table_t"  >
            <thead >
                <tr>
                    <th rowspan="2" style="border-right: 2px solid #f0f0f0;">序号</th>
                    <th rowspan="2" style="border-right: 2px solid #f0f0f0;">测试编号</th>
                    <th rowspan="2" style="border-right: 2px solid #f0f0f0;">测试标题</th>
                    <th rowspan="2" style="border-right: 2px solid #f0f0f0;">测试子项目</th>
                    <th colspan="2" style="border-bottom: 2px solid #f0f0f0;border-right: 2px solid #f0f0f0; ">上一次</th>
                    <th rowspan="2">节点操作</th>
                </tr>
                <tr>
                    <th style="border-right: 2px solid #f0f0f0;">运行结果</th>
                    <th>运行时间</th>
                    
                </tr>
            </thead>
            <tbody>
            <#list cases as case>
              <tr>
													<th>${case.id}</th>
													<th>${case.case_no}</th>
													<th>${case.case_title}</th>
													<th>${case.case_child_project}</th>
													<th id = "runstatus${case.id}">${case.case_result_lasttime}</th>
													<th>${case.case_run_last_time}</th>
													<th><a href="username_xq.html" class="btn btn-warning">查看</a>&nbsp; &nbsp;<a href="username_xg.html" class="btn sancu">修改</a>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;		
				<button class="btn btn-warning ladda-button" data-style="slide-down" id = "${case.id}" onclick = "caseRun(this)"><span class="ladda-label">执行</span></button>
				</th>
			</tr>
			</#list>
            </tbody>
        </table>	
        
<nav aria-label="Page navigation" style="background: #fff;">
  <ul class="pagination pull-right" style="margin-right: 12%;">
  
    <li>
    <#if nowPage == 1>
    	 <a href="#" aria-label="Previous">
         	<span aria-hidden="true">&laquo;</span>
      	 </a>
    <#else>
      <a onclick = "getCaseList(${nowPage-1})" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
      </#if>
    </li>
    
    
    <#list pages as page>
     	<#if page == nowPage>
     	<li class="active"><a onclick = "getCaseList(${page})">${page}</a></li>
     	<#else>
     	<li ><a onclick = "getCaseList(${page})">${page}</a></li>
     	</#if>
    </#list>
    

    
	<li>
	    <#if nowPage ==pageSum>
	    <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    	 
	    <#else>
	    <a onclick = "getCaseList(${nowPage+1})" href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	      </#if>
    </li>
    
  </ul>
  <div style="clear: both;">
  	
  </div>
</nav>			