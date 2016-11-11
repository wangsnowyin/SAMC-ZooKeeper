package zkTest;

import java.util.ArrayList;
import java.util.List;

import org.apache.zookeeper.ZooKeeper;
import org.apache.zookeeper.data.Stat;

public class ReconfigOne {
	
	public static void main(String[] args){
		try {
			ZKConnection conn = new ZKConnection();
			ZooKeeper zk = conn.connect("0.0.0.0:2281");
		         
		    List<String> joiningServers = new ArrayList<String>();  
		    joiningServers.add("server.2=localhost:2892:3892:participant;2282");
		    byte[] config = zk.reconfig(joiningServers, null, null, -1, new Stat());
		       
		    zk.close();
		} catch(Exception e) {
			System.out.println(e.getMessage()); // Catches error messages
		}
	}
}
