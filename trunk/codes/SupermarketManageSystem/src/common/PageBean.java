package common;

/**
 * 分页信息Bean
 */
public class PageBean
{
	int currentpage = 0;
	int totalpage = 0;
	String urlpattern = null;
	
	// 构造函数
	public PageBean( int currentpage, int totalpage )
	{
		this.currentpage = currentpage;
		this.totalpage = totalpage;
	}

	// 是否需要分页显示
	public boolean hasMorePage()
	{
		return totalpage > 1;
	}

	// 设置链接的URL
	public void setURLPattern( String urlpattern )
	{
		this.urlpattern = urlpattern;
	}

	// 是否有第一页
	public boolean hasFirstPage( )
	{
		return currentpage > 0;
	}
	// 返回第一页的页号
	public int getFirstPage(  )
	{
		return 0;
	}
	// 得到跳转到第一页的链接
	public String getFirstURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasFirstPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getFirstPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// 是否存在上一页
	public boolean hasPrevPage(  )
	{
		return currentpage > 0;
	}
	// 得到上一页的页号
	public int getPrevPage(  )
	{
		return currentpage > 1 ? currentpage - 1 : 0;
	}
	// 得到跳转到上一页的链接
	public String getPrevURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasPrevPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getPrevPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// 是否有下一页
	public boolean hasNextPage(  )
	{
		return currentpage < totalpage - 1;
	}
	// 得到下一页的页号
	public int getNextPage(  )
	{
		return currentpage + 1;
	}
	// 得到下一页的链接
	public String getNextURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasNextPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getNextPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}

	// 判断是否有尾页
	public boolean hasLastPage(  )
	{
		return currentpage < totalpage - 1;
	}
	// 得到尾页的页号
	public int getLastPage(  )
	{
		return totalpage - 1;
	}
	// 得到跳转到尾页的链接
	public String getLastURL( String title )
	{
		if( urlpattern==null ) throw new Error( "Must set the urlpattern first!" );
		if( hasLastPage() )
		{
			return urlpattern.replaceAll( "CURRENTPAGE", String.valueOf( getLastPage() ) ).replaceAll( "TITLE", title );
		}
		return "";
	}
}
