package cn.org.cstc.bctest.controller.account;

import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.neo4j.cypher.internal.compiler.v2_1.planner.logical.steps.idSeekLeafPlanner;
import org.springframework.stereotype.Component;


@ServerEndpoint("/account/caseRun")  
@Component 
public class CaseRunController {
	 	private static int onlineCount = 0;  
	  
	    private static CopyOnWriteArraySet<CaseRunController> webSocketSet = new CopyOnWriteArraySet<>();  
	  
	    private Session session; 
	    
	    @OnOpen  
	    public void onOpen (Session session) throws IOException, InterruptedException{  
	        this.session = session;  
	        webSocketSet.add(this);  
	        addOnlineCount();  
	        System.out.println("有新链接加入!当前在线人数为" + getOnlineCount());
	        runCase();
	    }  
	    
	    @OnClose  
	    public void onClose (){  
	        webSocketSet.remove(this);  
	        subOnlineCount();  
	        
	        System.out.println("有一链接关闭!当前在线人数为" + getOnlineCount());  
	    }  
	  

	  
	    public void sendMessage (String message) throws IOException {
	    	System.out.println("send"+ message);
	        this.session.getBasicRemote().sendText(message);  
	    }  
	    
	    public void runCase() throws IOException, InterruptedException{
	    	System.out.println("开始运行测试");
	    	int i = 0;
	    	while( i <5){
	    		i++;
	            this.sendMessage("123");
				Thread.sleep(500);
	        }
	    	this.sendMessage("END");
	    }
	  
	    public static synchronized  int getOnlineCount (){  
	        return CaseRunController.onlineCount;  
	    }  
	  
	    public static synchronized void addOnlineCount (){  
	    	CaseRunController.onlineCount++;  
	    }  
	  
	    public static synchronized void subOnlineCount (){  
	    	CaseRunController.onlineCount--;  
	    }  
}
