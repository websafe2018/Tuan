package util;


import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091100485908";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCN3Y/oT8vvBzgPmRbo8hdV/4ahEqiUHUJcY8VSLWtIzpc80gQ98KROvgcUlIij4f5mZvKRRu6sEeYBFNiAXsiU61Cwmn5nflrXjyRmj9Rdou2W6lPSNYL/N+N8RwN0nBCuUz9Cw+EkXnOenk47pEg+Y/OAjnPbq3yqrJ/h+Q0BBGuvVphby7k4PdIOwBr9HRxolE9yS+6Uqnth+ZCtvRsiUBwzxUaku1oM+EvX0hpgQTkMAvDD5dqg+RUjyh2Z839GeqM9o/c6YVPaRR6VlCdXuPOYDxYU9aGD5t4VDhEZQsShpP6dBk7AeLRG3JRmIOIxE+zVsPhgHBAHSIWWYp+fAgMBAAECggEANwB85+PwPEc/PATttfkOhSAh0VdLlslVTj68ZSUI4FyAlGsUi/M9sO3KDveblnZrTMaDK0ImDP6Pf0HWwsZ83Afz69SqR3PcwpBT25POEVO26/kD8I8gr9S6VRevRkmvyfaqozcQliosh4X27Pa/r7jO0rvoPXXaSs3M2y7VFNxMADkPCgix0x26ytzFTV8lTyTjVqoAC+VYUzfSO0wqmkUP0c8dCKsEY4nW4iZP+A4i+1P+QTdj1LAfGWnGU3Hyk8b2pFqWd44UGHhCibuhAz54SYh2JmoQlb77PC25A5AJOPr+9jJFyA5fpKU2lyTWX5aiT1E8775vmDvBC+3okQKBgQDqDObVFaBkYaRCtfGXXSv7LKyfwuu1Q8JgDTnJdGsPrj10k5wIJe89Xxqf3Y5htLYiE0LVjhf2vtph4X1OOYFIkvUJKPjAhGmtRWXlaXr57rd1HEJzlmRbxyPojT5LVTEv/dJNGfJ1lc/nVhttQcNuCK21oYG56GcY2ukzeHS9WQKBgQCbK3p66c2DSWacWRVHzpsH13ayzYRycXxe6NzcVxvXYWrC4Vkfd0pxqu6F9s6JLp7Gt+Br65WE5M97NysSKa9RwYAyhmKLFsOdsJCloayE7KSlYkBSL7y3cANma9K+JWyuttzmb1kVyR6+V2Gyx8KFy453i1wGjPOhMfXmxOfNtwKBgGePSdvi89M2uP2jj8BPw5Qh0kfmcXEFCE6Dy5vt3SlVCXA5mAKq9k6LdDZkTAnDcgtlxl7Dvqq5C9vfcBharW+1RqLE9DwK2s+GM23s3DMWgypYVLbcRo+tb6AITxX6HgeEIbdn0bZhkVpk6UHQpW5cfLAvRD1ELcn7os/Zbp4RAoGADefCjRtAqIA+asps5sd0Cyra30EdmmfjHlo92J0RyKZZO+eX5gL5r+ACigzJC3AbGHHH8cPl3Ufn9AHIoVMM/AWcKGr0j8RVeV8mR0GKxUqzooKAgxz2C3ZFR7tn4lRWPf3zI89cq2Afmi0Yez39h6HrPXlGoOumtY5Vm/2PTFcCgYEA4SQA/BumqDOSJb+uYTsQ/6dZxgpW9j3E6mVDYMcjiHgF0KsWSBniw+F8TrMr0GqPmkRVkvjc/8BaRdJ7ClFjrqrdasxEag266/e/diQk2tX394bgS0v5LdC/omnYXD2/7bzuJIVIVsQ+TGiIN3bh9LTwiQOxb2UPzbyQlgZV4Fg=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAppri9Phs8CSqSQm/IHMcHEpIP8MlKDjC2EnvNrqz6znTJ4qwN+7P68wfeNxlAOCOUeVOErlAJzdukqfU6ZsWdoiUR6JMLN4nzL4Nu4v2PcFFeAeTbVYhaiMM8VllS1+fb9B1URn43zmTimAyt+I/P2Pb09lx6Fd96RkXWIPUkgN3BSs3U09fLRfqGRsQHBnRcZ8pywgnwnOtbz75EL9XcwWnM0QzyNcAs9afdtsiQ016bccT4P2sx/IrCavSXypbT04/he7uG9e2w4PebWPf2yA/4HNc45kmO51E14cwWApyDrgSB4oMaRITwBwhXCQuOC83IyY80fM5BnRg22c7OwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1:8080/Tuan/return_url.do";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1:8080/Tuan/return_url.do";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

