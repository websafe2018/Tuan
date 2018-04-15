package util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * 时间格式化工具类
 *
 */
public class DateFormatUtil {

	private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static Timestamp dateParse(String dateString){
		try {
			Date date=sdf.parse(dateString);
			Timestamp timestamp=new Timestamp(date.getTime());
			return timestamp;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
}
