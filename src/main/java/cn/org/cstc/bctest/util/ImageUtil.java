package cn.org.cstc.bctest.util;
import java.awt.Canvas;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.AreaAveragingScaleFilter;
import java.awt.image.BufferedImage;
import java.awt.image.FilteredImageSource;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 截取一个图片的中央
 * @author zhangjianbos
 */
public class ImageUtil {
	/**
	 * 截取一个图像的中央区域
	 * @param image 图像File
	 * @param w 需要截图的宽度
	 * @param h 需要截图的高度
	 * @param x1 第一个角落x坐标
	 * @param y1 第一个角落的y坐标
	 * @param x2 第二个角落的x坐标
	 * @param y2 第二个角落的y坐标
	 * @param filePath 生成新图片的位置
	 * @return 返回一个
	 * @throws IOException
	 */
	public static void cutImage(File image, int w, int h,int x1,int y1,int x2,int y2,String filePath) throws IOException {
		
		// 判断参数是否合法
		if (null == image || 0 == w || 0 == h) {
			new Exception ("哎呀，截图出错！！！");
		}
		InputStream inputStream = new FileInputStream(image);
		// 用ImageIO读取字节流
		BufferedImage bufferedImage = ImageIO.read(inputStream);
		BufferedImage distin = null;
		// 返回源图片的宽度。
		int srcW = bufferedImage.getWidth();
		// 返回源图片的高度。
		int srcH = bufferedImage.getHeight();
		distin = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics g = distin.getGraphics();
		g.drawImage(bufferedImage, 0, 0, w, h, x1, y1, x2, y2, null);
		ImageIO.write(distin, "jpg", new File(filePath));
	}

	
	/** 
	  * 根据缩放后图片的宽和高计算缩放的比例 
	  * @version 2011-6-1 
	  * @param source  图片的原始存放路径 
	  * @param w  缩放后的图片的宽度 
	  * @param h  缩放后的图片的高度 
	  * @return 返回缩放后的图片的缓存 
	  */  
	public static BufferedImage equalScale(String source, int w, int h){
	      if(source == null || "".equals(source.trim())){  
	          return null;  
	      }  
	      try {  
	          BufferedImage buffer = ImageIO.read(new File(source));  
	          int sh = buffer.getHeight(null);  
	          int sw = buffer.getWidth(null);  
	          if(sh <= h && sw <= w){  
	              return buffer;  
	          }  
	          int finalW = 0;  
	          int finalH = 0;  
	          if(sh > h && sw < w){  
	              double scale = (double)h / (double) sh;  
	              finalW = (int)(sw * scale);  
	              finalH = h;  
	          }else if(sh < h && sw > w){  
	              finalW = w;  
	              double scale = (double)h / (double) sh;  
	              finalH = (int)(sh * scale);  
	          }else if(sh > h && sw > w){  
	              double scale = (double)h / (double) sh;  
	              if(sh > sw){  
	                  scale = (double)h / (double) sh;  
	              }else if(sw > sh){  
	                  scale = (double)w / (double) sw;  
	              }  
	              finalH = (int)(sh * scale);  
	              finalW = (int)(sw * scale);  
	          }  
	          return zoomImage(buffer, finalW, finalH);  
	      } catch (IOException e) {  
	          e.printStackTrace();  
	      }  
	      return null;  
	  }  

	  /*** 
	   * 缩放图像 
	   * @param buffer 图片缓存 
	   * @param width  缩放后的宽度 
	   * @param height 缩放后的高度 
	   * @return 返回缩放后的 图片缓存 
	   */  
	  public static BufferedImage zoomImage(BufferedImage buffer, int width, int height){  
	      try {  
	          if(buffer == null){  
	              return buffer;  
	          }  
	           AreaAveragingScaleFilter areaAveragingScaleFilter = new AreaAveragingScaleFilter(    
	                      width, height);    
	              FilteredImageSource filteredImageSource = new FilteredImageSource(buffer    
	                      .getSource(), areaAveragingScaleFilter);  
	          BufferedImage result = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);  
	          Graphics g =  result.getGraphics();  
	          Canvas canvas = new Canvas();  
	          g.drawImage(canvas.createImage(filteredImageSource), 0, 0, null);  
	          return result;  
	      } catch (Exception e) {  
	          e.printStackTrace();  
	      }  
	      return null;  
	  } 
	  
	  /***  
	   * 缩放图片 
	   * @param source 原图存放路径 
	   * @param dist   缩放后图片存放的路径 
	   * @param width  缩放后图片的宽度 
	   * @param height 缩放后图片的高度 
	   * @return 缩放成功返回true，否则返回false 
	   */  
	public static boolean zoomImage(String source, String dist, int width, int height){  
		if(source == null || "".equals(source) || dist == null || "".equals(dist)){  
			return false;  
		}  
		try {  
			BufferedImage bi = equalScale(source, width, height);  
          	return ImageIO.write(bi, "jpg", new File(dist));  
		} catch (IOException e) {  
			e.printStackTrace();  
		}  
		return false;  
	} 
	
	public static void main(String[] args) throws Exception {
		/*zoomImage("E:\\2.gif", "E:\\12.gif", 300, 167); 
		
		File file = new File("E:\\12.gif");
		String filepath="E:\\13.gif";
		cutImage(file, 400,400,97, 0,264, 167,filepath);*/
	}
	/**
	 * 获取4位数字验证码 && 存放到Shiro 的 Session里
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	public static void getYZM(HttpServletRequest request,HttpServletResponse response) throws IOException{
		//设置页面不缓存
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires", 0);
		// 在内存中创建图象
		int width=130, height=40;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 获取图形上下文
		Graphics2D g = image.createGraphics(); 
		//生成随机类
		Random random = new Random();
		// 设定背景色
		g.setColor(getRandColor(200,250));
		g.fillRect(0, 0, width, height);
		//设定字体
		g.setFont(new Font("Fixedsys",Font.PLAIN,38));
		//画边框
		//g.setColor(new Color());
		//g.drawRect(0,0,width-1,height-1);
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
		g.setColor(getRandColor(160,200));
		for (int i=0;i<255;i++){
		 int x = random.nextInt(width);
		 int y = random.nextInt(height);
		        int xl = random.nextInt(12);
		        int yl = random.nextInt(12);
		 g.drawLine(x,y,x+xl,y+yl);
		}
		// 取随机产生的认证码(4位数字)
		String sRand="";
		for (int i=0;i<4;i++){
		    String rand=String.valueOf(random.nextInt(10));
		    sRand+=rand;
		    
		    // 将认证码显示到图象中
		    g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
		//调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
			rand += "  ";
		    g.drawString(rand,30*i+16,36);
		}
		// 将认证码存入SESSION
		System.out.println(sRand);
		
		request.getSession().setAttribute("YZM",sRand);
		// 图象生效
		g.dispose();
		// 输出图象到页面
		ImageIO.write(image, "JPEG", response.getOutputStream());
	}
	
	private static Color getRandColor(int fc,int bc){//给定范围获得随机颜色
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
    }
}