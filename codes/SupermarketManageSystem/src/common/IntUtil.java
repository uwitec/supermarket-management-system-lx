package common;

public class IntUtil
{
	// 将字符串转换为整数
	public static int getInt( String str, int defaultvalue )
	{
		try
		{
			return Integer.parseInt( str );
		}
		catch( Exception ex )
		{
			return defaultvalue;
		}
	}
}
