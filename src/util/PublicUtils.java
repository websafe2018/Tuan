package util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;



public class PublicUtils {

	public static int getRandom(String telno){
		 Integer num=(int) Math.floor(Math.random()*9000)+1000;
		// String number=num.toString();
		/*try {
			SendSms.send(number, telno, "100006");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return num;
	}
	
	public static String getBankName(String bankNum){
		Map<String, String> bankMap=new HashMap<String, String>();
		bankMap.put("622848", "农业银行");
		bankMap.put("621785", "中国银行");
		bankMap.put("622262", "交通银行");
		bankMap.get(bankNum);
		return bankMap.get(bankNum);
	}
	
	public static String getSerial(){
		Integer num=(int) Math.floor(Math.random()*9000)+1000000000;
		SimpleDateFormat format=new SimpleDateFormat("yyMMdd");
		String aaa=format.format(new Date())+num.toString();
		return aaa;
	}

}
