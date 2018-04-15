package control;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import entity.Account;
import entity.Basicinfo;
import entity.Users;
import service.AccountService;
import service.BasicinfoService;
import service.UsersService;

@Controller
public class BasicinfoControl {

	@Resource
	private BasicinfoService bservice;
	@Resource
	private AccountService aservice;
	@Resource
	private UsersService uservice;
	
	
	@RequestMapping("/addBasicinfo.do")
	public void addBasicinfo(HttpServletResponse res,int uid,String nickname,String education,String school,int  marriage,String address
			,String industry,int scale,String position,String Salary,int isHouse,int isCar
			,String emergeContact,String telNo,String relation,Basicinfo b,Account a){
		
		System.out.println("后台得到："+nickname);
		try {
			Basicinfo bf=	bservice.findBasicByUidtwo(uid);
			
			if(bf!=null){
				a.setUid(uid);
				a.setRealName(nickname);
				b.setUid(uid);
				//b.setNickname(nickname);
				b.setEducation(education);
				b.setSchool(school);
				b.setMarriage(marriage);
				b.setAddress(address);
				b.setIndustry(industry);
				b.setScale(scale);
				b.setPosition(position);
				b.setIncome(Salary);
				b.setIsHouse(isHouse);
				b.setIsCar(isCar);
				b.setEmergeContact(emergeContact);
				b.setTelNo(telNo);
				b.setRelation(relation);
				boolean xx=bservice.updateBasiByUidThree(b);
				boolean dd=aservice.updateAccountByUid(a);
				
			
				
				if(xx==true&&dd==true){
					
					res.getWriter().write("1");//成功
				}else{
					res.getWriter().write("0");//失败
				}
				
			}else{
				a.setUid(uid);
				a.setRealName(nickname);
				b.setUid(uid);
				b.setNickname(nickname);
				b.setEducation(education);
				b.setSchool(school);
				b.setMarriage(marriage);
				b.setAddress(address);
				b.setIndustry(industry);
				b.setScale(scale);
				b.setPosition(position);
				b.setIncome(Salary);
				b.setIsHouse(isHouse);
				b.setIsCar(isCar);
				b.setEmergeContact(emergeContact);
				b.setTelNo(telNo);
				b.setRelation(relation);
				boolean cc=bservice.addBasiByUidThree(b);
				boolean dd=aservice.updateAccountByUid(a);
				if(cc==true&&dd==true){
					
					res.getWriter().write("1");//成功
				}else{
					res.getWriter().write("0");//失败
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
}
	
	
	@RequestMapping("/updateBasiByheadPic.do")
	public void updateBasiByheadPic(String headPic,int uid,HttpServletResponse r,HttpServletRequest re)  {
		// TODO Auto-generated method stub
		 try {
			 boolean b=bservice.updateBasiByheadPic(headPic, uid);
			 if(b!=false){
				 Basicinfo	b1= bservice.findBasicByUidtwo(uid);
				re.getSession().setAttribute("BasicinfoheadPic", b1.getHeadPic());
					r.getWriter().write("1");
				}else{
					r.getWriter().write("0");
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	/**
	 * 头像图片上传
	 * @throws IOException 
	 */

	@RequestMapping(value = "/upfile.do")
	@ResponseBody
	public String upfile(MultipartFile upfile, HttpSession session) {
		
		// * 测试信息
		 
		System.out.println("upfile执行了...");

		System.out.println(upfile.getContentType());

		System.out.println(upfile.getOriginalFilename());

		
		/* * 在MultipartFile接口中定义了如下很多有用的方法。
		 * 
		 * 使用getSize()方法获得文件长度，以此决定允许上传的文件大小。
		 * 
		 * 使用isEmpty()方法判断上传文件是否为空文件，以此决定是否拒绝空文件。
		 * 
		 * 使用getInputStream()方法将文件读取为java.io.InputStream流对象。
		 * 
		 * 使用getContentType()方法获得文件类型，以此决定允许上传的文件类型。
		 * 
		 * 使用transferTo（）方法将上传文件写到服务器上指定的文件。
		 */

		// 获取上传的文件名

		String fileName =System.currentTimeMillis()+ upfile.getOriginalFilename();

		String root_path = session.getServletContext().getRealPath("imgs");// 获取自定义缓存文件夹路径

		File file = new File(root_path);
		// 如果文件夹不存在，则创建
		if (!file.exists()) {

			file.mkdirs();

		}
		// 构建图片url路径，为显示图片做准备
		String url_root = session.getServletContext().getContextPath();

		String file_url = url_root + "/imgs/" + fileName;

		try {

			File file2 = new File(file, fileName);
			upfile.transferTo(file2);// 将上传的文件移动到指定文件夹
			
			
			
			Users  user= (Users)(session.getAttribute("users"));
			int uid=user.getId();
			 boolean b=bservice.updateBasiByheadPic(file_url, uid);
			 
			 
  			 if(b!=false&&file2.exists()==true){
  				 //System.out.println("getAbsolutePath  "+file2.getAbsolutePath()+"\n getPath"+file2.getPath()+"\nexists"+file2.exists()+"\ngetCanonicalPath"+file2.getCanonicalPath());
  				 Basicinfo	b1= bservice.findBasicByUidtwo(uid);
  				session.setAttribute("BasicinfoheadPic",file_url);
  				return "1";// 返回图片url给ajax
  				}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return "0";// 返回图片url给ajax
	}
	
	
	
	
	

	@RequestMapping("/updateBasiBynickname.do")
	public void updateBasiBynickname(String nickname,int uid ,HttpServletResponse r,HttpServletRequest re)  {
		// TODO Auto-generated method stub
		  try {
			boolean b= bservice.updateBasiBynickname(nickname, uid);
			if(b!=false){
				
				try {
					/*Users user=uservice.findUserById(uid);
					re.getSession().setAttribute("users",user);*/
					r.getWriter().write("1");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
				
			}else{
				r.getWriter().write("0");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}