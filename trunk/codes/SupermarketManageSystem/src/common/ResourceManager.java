package common;

import java.util.*;

public class ResourceManager
{
	ResourceBundle bundle = null;

	// 构造函数，得到ResourceBundle的实例
	public ResourceManager( String packageName )
	{
		String bundleName = packageName + ".LocalStrings";
		bundle = PropertyResourceBundle.getBundle(bundleName);
	}

	// 得到某个属性的值
	public String getString( String key )
	{
		return bundle.getString( key );
	}

	// 用于保存ResourceBundle的实例对象
	private static Hashtable managers = new Hashtable();

	// 得到ResourceBundle对象的实例
	public synchronized static ResourceManager getManager( String packageName ) 
	{
		ResourceManager mgr = (ResourceManager)managers.get( packageName );
		if (mgr == null) {
		    mgr = new ResourceManager( packageName );
		    managers.put(packageName, mgr);
		}
		return mgr;
	}

	// 得到ResourceBundle对象的实例
	public synchronized static ResourceManager getManager( Class cls )
	{
	    return getManager( cls.getPackage().getName() );
	}
}
