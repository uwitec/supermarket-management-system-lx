package common;

/**
 * <p>负责字符串的处理 </p>
 */
import java.util.*;

public class dataFormat {
  public dataFormat() {  }
  /**
   * 把字符串转换成适合于网页显示的文本
   * @param s
   * @return
   */
  public static String toHtml(String s) {
     if (s==null) return s;
     s=strReplace(s,"&","&amp;");
     s=strReplace(s,"<","&lt;");
     s=strReplace(s,">","&gt;");
     s=strReplace(s,"\"","&quot;");
     s=parseReturn(s,"<br>\n&nbsp;&nbsp;&nbsp;&nbsp;");
     return s;
   }
   /**
    * 把字符串sBody中的sFrom用sTo替换
    * @param sBody
    * @param sFrom
    * @param sTo
    * @return
    */
   public static String strReplace(String sBody, String sFrom, String sTo) {
      int i,j,k,l;
      if (sBody==null || sBody.equals("")) return "";
      i = 0;
      j = sFrom.length();
      k = sTo.length();
      StringBuffer sss = new StringBuffer(sBody.length());
      boolean bFirst=true;
      l = i;
      while (sBody.indexOf(sFrom,i)!=-1) {
        i = sBody.indexOf(sFrom,i);
        sss.append(sBody.substring(l,i));
        sss.append(sTo);
        i += j;
        l = i;
      }
      sss.append(sBody.substring(l));
      return sss.toString();
    }
    /**
       * 把字符串中的"\r\n"转换成"\n"
       * @param String sBody  : 要进行替换操作的字符串
       * @param String sEndwith : 要替换成为的字符串
       */
      public static String parseReturn(String sBody, String sEndwith) {
        StringTokenizer t = new StringTokenizer(sBody, "\r\n");
        StringBuffer sss = new StringBuffer(sBody.length());
        boolean bFirst=true;
        if (sEndwith.trim().equals("")) sEndwith="\n";
        while (t.hasMoreTokens()) {
          String s=t.nextToken();
          s=s.trim();
          while (s.startsWith("　")) s=s.substring(2);
          if (!s.equals("")) {
             if (bFirst) {
              bFirst=false;
            } else {
              sss.append(sEndwith);
            }
            sss.append(s);
         }
        }
        return sss.toString();
      }
      /**
          * 将字符串格式化成 HTML 代码输出
          * 只转换特殊字符，适合于 HTML 中的表单区域
          * @param str 要格式化的字符串
          * @return 格式化后的字符串
          */
         public static String toHtmlInput(String str) {
             if (str == null)    return null;
             String html = new String(str);
             html = strReplace(html, "&", "&amp;");
             html = strReplace(html, "<", "&lt;");
             html = strReplace(html, ">", "&gt;");
             return html;
         }
      /**
     * 将普通字符串格式化成数据库认可的字符串格式
     *
     * @param str 要格式化的字符串
     * @return 合法的数据库字符串
     */
    public static String toSql(String str) {
        String sql = new String(str);
        return strReplace(sql, "'", "''");
    }
}