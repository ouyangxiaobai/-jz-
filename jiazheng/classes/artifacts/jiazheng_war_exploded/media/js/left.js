/**
 * Created by Mark on 2014/7/21.
 */
$(function(){
//    var aboutusId = $("#aboutusId").val();
//    if(aboutusId == undefined || aboutusId == ""){
//        window.top.location.href = getIP()+"admin/login.jsp";
//    }
	
	/*
    $.ajax(getIP()+"powerMenu.action?getUserMenu").done(function(data){
        var html = "";
        $.each(data,function(i,val){
            html += "<li> <h2 class='obtain'>"+val.menuName+"<i></i></h2>"; 
            html += "<div class='secondary'>";
            $.each(val.subMenuList,function(y,val) {
            	 
            	
            		
            	html+="  <h3><a href='javascript:void(0)' onclick=openddd('"+val.url+"')>  "+val.menuName1+"</a></h3>";
            }); 
            
            html += " </div></li>";
        });
    
        $('#leftmenuclick').html(html);
    }).fail();
    */
    
    
    
    
    var html = "";
    var page=0;
    $.ajax({
        url: getIP()+"powerMenu.action?getUserMenu",
        type: "POST",
        async: false, 
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        success: function (data) {
  
        	$.each(data,function(i,val){
                html += "<li> <h2 class='obtain'>"+val.menuName+"<i></i></h2>"; 
                html += "<div class='secondary'>";
                $.each(val.subMenuList,function(y,val) {
                	  
                		
                	html+="  <h3><a href='javascript:void(0)' onclick=openddd('"+val.url+"')>  "+val.menuName1+"</a></h3>";
                }); 
                
                html += " </div></li>";
            });
        
            $('#leftmenuclick').html(html);
        	
        	 
        }

    });

    
    
    
});
