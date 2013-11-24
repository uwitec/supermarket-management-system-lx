package common;

import java.util.*;

/**
 * 自己编写的字符串工具
 */
public class StringUtil
{
	// 判断一个字符串是否为空
	public static boolean isEmptyString( String str )
	{
		return str==null || str.length()==0;
	}

	// 去掉一个字符串两端的空格
	public static String trim( String str )
	{
		if ( str == null ) return null;
		return str.trim();
	}

	public static String[] strTokenizer( String str, String delim )
	{
		if( isEmptyString( trim( str ) ) ) return null;

		StringTokenizer st = new StringTokenizer( str, delim );
		String[] result = new String[st.countTokens()];
		int i=0;
		while ( st.hasMoreTokens() ) 
		{
			result[i++] = st.nextToken();
		}
		return result;
	}

	public static String getFileName( String filename )
	{
		filename = trim( filename );

		if( isEmptyString( filename ) ) return null;

		int nIndex = filename.lastIndexOf( "\\" );
		if( nIndex > 0 )
			return filename.substring( nIndex+1 );
		return filename;
	}
}
