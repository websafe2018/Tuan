package control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;

import entity.Account;
import entity.Body;
import entity.Rechargerecord;
import entity.Record;
import entity.Users;
import service.AccountService;
import service.BodyService;
import service.RechargerecordService;
import service.RecordService;
import service.UsersService;
import util.AlipayConfig;

@Controller
public class RechargeControl {
	
	@Resource
	private AccountService service;
	@Resource
	private UsersService uservice;
	@Resource
	private RecordService rservice;
	@Resource
	private RechargerecordService reservice;
	@Resource
	private BodyService bservice;

	/*
	 * 获取订单数据接口
	 */
	@RequestMapping("/recharge.do")
	public void recharge(HttpServletRequest req, HttpSession session, HttpServletResponse rep,@RequestParam(defaultValue="0")double money) throws Exception{
		//获得用户的用户名
		Body body1=(Body) session.getAttribute("myBody");
		String  userName=body1.getU_userName();
		

      //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = System.currentTimeMillis()+"";
        //付款金额，必填
        String total_amount = money+"";
        //订单名称，必填
        String subject = userName;
        //商品描述，可空
        String body = "";
        //用户id
        String merpri=body1.getId()+"";
       File file=new File("C:/temp.txt");
       OutputStream out=new FileOutputStream(file);
       out.write(merpri.getBytes());
       out.flush();
       out.close();

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
                + "\"total_amount\":\""+ total_amount +"\"," 
                + "\"subject\":\""+ subject +"\"," 
                + "\"body\":\""+ body +"\"," 
              /*  + "\"extra_common_param\":\""+ merpri +"\"," */
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        rep.setContentType("text/html;charset=" + AlipayConfig.charset);
        rep.getWriter().write(result);//直接将完整的表单html输出到页面
        rep.getWriter().flush();
        rep.getWriter().close();
	}
	
	/**
     * 回调路径return_url
     * @param request
     * @param response
	 * @throws Exception 
     */
    @RequestMapping("/return_url.do")
    public String returnUrl(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception{
        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map requestParams = request.getParameterMap();
        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                            : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用。
            //valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }
        //切记alipaypublickey是支付宝的公钥，请去open.alipay.com对应应用下查看。
        //boolean AlipaySignature.rsaCheckV1(Map<String, String> params, String publicKey, String charset, String sign_type)
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset,AlipayConfig.sign_type);
        if(signVerified) {
            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
            
            //用户id
            InputStream in=new FileInputStream("C:/temp.txt");
            byte[] bs=new byte[1024];
            int len=in.read(bs);
            String str=new String(bs,0,len);
            
            /*String id= new String(request.getParameter("merpri").getBytes("ISO-8859-1"),"UTF-8");*/
            //String idid= new String(request.getParameter("extra_common_param").getBytes("ISO-8859-1"),"UTF-8");
            System.out.println("id:"+str);
            
            int uid=Integer.parseInt(str);

            request.setAttribute("out_trade_no", out_trade_no);
            request.setAttribute("trade_no", trade_no);
            request.setAttribute("total_amount", total_amount);
            
            
            
            Body body=bservice.getBody(uid);
            Users u=uservice.findVipById(uid);
        	Account acc = service.findAccByUidtwo(uid);
        	double a=acc.getAcBalance();
        	int aid=acc.getId();
        	double b=Double.parseDouble(total_amount);
        	System.out.println("acc.getAcBalance()"+a+"id+"+acc.getId()+"ad"+acc.getRealName());
			//acc.setAcBalance(a+b);
			//System.out.println("充值后"+acc.getAcBalance());
            Timestamp t=new Timestamp(System.currentTimeMillis());
            //System.out.println("充值金额“"+b);
            
            //充值记录
			Rechargerecord re=new Rechargerecord();
			re.setAid(acc.getId());
			re.setChargeMoney(b);
			re.setChargeNumber(trade_no);
			re.setChargeTime(t);
			re.setChargeType("支付宝");
			re.setRealName(acc.getRealName());
            if(out_trade_no!=null&&trade_no!=null&&total_amount!=null){
            	System.out.println("充值成功");
	            if(service.rechargeAcc((b+a), aid)>0){
	            	re.setChargeStatus(0);
	            	//充值记录
	                Record r=new Record();
	                r.setBlance(acc.getAcBalance());
	        		r.setRemarks("收入");
	        		r.setrMoney(b);
	        		r.setrType("充值");
	        		r.setUid(body.getId());
	        		r.setrTime(t);
	        		Body mybody=bservice.getBody(uid);
	        		//session.setAttribute("myBody", mybody);
	            	rservice.addRecord(r);
	            	//request.setAttribute("users", u);
	            	session.setAttribute("users", u);
            	}else{
            		System.out.println("充值未到账");
            		re.setChargeStatus(1);
            	}
				
	            reservice.addRecharge(re);
            }
            

        }else{
            request.setAttribute("reason", "验签失败");
        	System.out.println("充值失败");
            
        }
        request.setAttribute("signVerified", signVerified);
        
        return "redirect:/myAcc.do";
    }
}
