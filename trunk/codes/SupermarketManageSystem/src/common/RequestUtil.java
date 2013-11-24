package common;

import javax.servlet.http.*;

import org.apache.commons.beanutils.*;

public class RequestUtil
{
	public static void setMsg( Object obj, HttpServletRequest request, String msgname )
	{
		ResourceManager rm = ResourceManager.getManager( obj.getClass() );
		request.setAttribute( "msg", rm.getString( msgname ) );
	}

	public static int getInt( HttpServletRequest request, String name, int defaultvalue )
	{
		String strValue = request.getParameter( name );
		return IntUtil.getInt( strValue, defaultvalue );
	}

	public static void populate( HttpServletRequest request, Object obj )
	{
		try
		{
			BeanUtils.populate( obj, request.getParameterMap() );
		}
		catch( Exception ex )
		{
			ex.printStackTrace( System.err );
		}
	}
}
