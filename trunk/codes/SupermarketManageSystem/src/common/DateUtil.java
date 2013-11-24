package common;

import java.sql.*;
import java.text.*;

public class DateUtil
{
	public static String formatTimestamp( Timestamp timestamp )
	{
		SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
		return sdf.format( timestamp );
	}
}
