function replacePageUrl(url,pageNum,pageSize){
	if(url.indexOf('page')>0){
		return window.location.href.replace(/(page=)(\d+)(&?)/,'$1'+pageNum+'$3').replace(/(pageSize=)(\d+)(&?)/,'$1'+pageSize+'$3');
	}
	return   window.location.search===''?window.location.href+'?page='+pageNum+'&pageSize='+pageSize:window.location.href+'&page='+pageNum+'&pageSize='+pageSize;
}
      
function pager(currentPageNum,pageSize,totalRow){
	var pagehtml="";
	if(totalRow==0)return pagehtml;
	var totalPage = totalRow%pageSize==0?totalRow/pageSize:parseInt(totalRow/pageSize)+1;
	if(totalPage==0 || totalPage==1) return pagehtml;
	
	if(currentPageNum==null ||　currentPageNum=="" || currentPageNum==undefined){
		currentPageNum = 1;
	}
	var remainder= currentPageNum%10;
	  	
	var quotient= parseInt(currentPageNum/10);
	
	pagehtml+="<a " +(currentPageNum!=1 ? ("href=\""+ replacePageUrl(window.location.href,1,pageSize) +"\"") : "")  + "style=\"margin-right:5px;\""+(currentPageNum==1?"disabled=disabled":"")+">首页</a>";
	
	pagehtml+="<a " +(currentPageNum!=1 ? ("href=\""+ replacePageUrl(window.location.href,currentPageNum-1,pageSize) +"\"") : "")  + "style=\"margin-right:5px;\""+(currentPageNum==1?"disabled=disabled":"")+">上一页</a>";
	
	if(quotient>=1 && currentPageNum>10){
		if(remainder==0){
			pagehtml+="<a href=\""+ replacePageUrl(window.location.href,(quotient-1)*10,pageSize) +"\" style=\"margin-right:5px;\">...</a>";
		}else{
			pagehtml+="<a href=\""+ replacePageUrl(window.location.href,quotient*10,pageSize) +"\" style=\"margin-right:5px;\">...</a>";
		}
	}
	
	var i= 0;
	if(remainder==0){
		for(i=(quotient-1)*10+1;i <= (quotient * 10) && i<=totalPage;i++){
			if(i==currentPageNum){
				pagehtml+="<span class=\"current\" style=\"margin-right:5px;\">"+currentPageNum+"</span>";
			}else{
				pagehtml+="<a href=\""+replacePageUrl(window.location.href,i,pageSize) +"\" style=\"margin-right:5px;\">"+i+"</a>";
			}				   
		}
		
	  	if(currentPageNum!=totalPage){
	  		pagehtml+="<a href=\""+replacePageUrl(window.location.href,currentPageNum+1,pageSize)+"\" style=\"margin-right:5px;\">...</a>";
	  		pagehtml+="<a href=\""+ replacePageUrl(window.location.href,currentPageNum+1,pageSize) +"\" style=\"margin-right:5px;\">下一页</a>";
	  		pagehtml+="<a href=\""+ replacePageUrl(window.location.href,totalPage,pageSize)+"\" style=\"margin-right:5px;\">尾页</a>";
	  	}else{
	  		pagehtml+="<a disabled=disabled style=\"margin-right:5px;\">下一页</a>";
  			pagehtml+="<a disabled=disabled style=\"margin-right:5px;\">尾页</a>";
	  	}
	}else{
		for(i=quotient*10+1;i <=( (quotient+1) * 10) && i<=totalPage;i++){
			if(i==currentPageNum){
				pagehtml+="<span class=\"current\" style=\"margin-right:5px;\">"+currentPageNum+"</span>";
			}else{
				pagehtml+="<a href=\""+replacePageUrl(window.location.href,i,pageSize)+"\" style=\"margin-right:5px;\">"+i+"</a>";
			}				   
		}
		
  		if(((quotient+1)*10)<totalPage){
  			pagehtml+="<a href=\""+replacePageUrl(window.location.href,((quotient+1)*10+1),pageSize)+"\" style=\"margin-right:5px;\">...</a>";
  		}
  		
  		if(currentPageNum!=totalPage){
  			pagehtml+="<a href=\""+replacePageUrl(window.location.href,currentPageNum+1,pageSize)+"\" style=\"margin-right:5px;\">下一页</a>";
  			pagehtml+="<a href=\""+replacePageUrl(window.location.href,totalPage,pageSize)+"\" style=\"margin-right:5px;\">尾页</a>";
  		}else{
  			pagehtml+="<a disabled=disabled style=\"margin-right:5px;\">下一页</a>";
  			pagehtml+="<a disabled=disabled style=\"margin-right:5px;\">尾页</a>";
  		}
	}
	return pagehtml;
}