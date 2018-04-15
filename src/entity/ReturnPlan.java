package entity;

import java.sql.Timestamp;
import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;
/**
 * 回款计划对象
 * @author Administrator
 *
 */
public class ReturnPlan {
		
		private int sid;	//散标编号

		@JSONField(format="yyyy-MM-dd")
		private Timestamp returnTimes;  //还款时间集合
		
		private double returnMoney; //每月应回本金
		
		private double returnIncome;//每月应回利息
		
		private int style; //回款状态

		public int getSid() {
			return sid;
		}

		public void setSid(int sid) {
			this.sid = sid;
		}

		public Timestamp getReturnTimes() {
			return returnTimes;
		}

		public void setReturnTimes(Timestamp returnTimes) {
			this.returnTimes = returnTimes;
		}

		public double getReturnMoney() {
			return returnMoney;
		}

		public void setReturnMoney(double returnMoney) {
			this.returnMoney = returnMoney;
		}

		public double getReturnIncome() {
			return returnIncome;
		}

		public void setReturnIncome(double returnIncome) {
			this.returnIncome = returnIncome;
		}

		public int getStyle() {
			return style;
		}

		public void setStyle(int style) {
			this.style = style;
		}

		public ReturnPlan(int sid, Timestamp returnTimes, double returnMoney, double returnIncome, int style) {
			super();
			this.sid = sid;
			this.returnTimes = returnTimes;
			this.returnMoney = returnMoney;
			this.returnIncome = returnIncome;
			this.style = style;
		}

		public ReturnPlan() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		

		
		
}
