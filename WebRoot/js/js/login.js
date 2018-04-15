$(function(){
    /*
    if(formList!=undefined && formList.length>0){
        formList.forEach(function (element, index) {
            var frameId = "formFrame_"+index;
            $("<iframe/>",{id:frameId,frameborder:"0",scrolling:"no",sandbox:"allow-scripts",style:"width: 1px;height: 1px"}).appendTo('#myCode')
            $('<form />', {action : element, method:"post", style:"display:none;",target:frameId}).appendTo('#'+frameId).submit();
        })
    }
    */


    $("input").click(function(){
        $(this).css({"border-color":"#d5d5d5"});
        $(this).parent().find(".input-tip").css({"visibility":"hidden"});
    });


    $(".login-box").keypress(function (e) {
        if (e.keyCode == "13") {
            document.getElementById('loginBtn').onclick();
        }
    });

    var cookieValue = jaaulde.utils.cookies.get("TDUserName");

    if ( cookieValue != null && cookieValue !='' ) {
        $("#username").val(cookieValue);
        $("#isRemember").attr("checked", true);
    }

    var Login = function(){
        this.color = {
            red: '#FF0000',
            green: '#48D6A2',
            notEnpty:"#d5d5d5"
        };
        this.status = null;
    };

    Login.prototype.checkForm = function(){
        var username = document.getElementById('username'),
            password = document.getElementById('password');
        if(username.value == ''){
            this.showMsg('username', '<i></i>请输入用户名', 'error');
            return false;
        }
        /*           if(username.value != ""){
         this.showMsg('username', '', 'notEnpty');
         return false;
         } */
        if(password.value == ''){
            this.showMsg('password', '<i></i>请输入密码', 'error');
            return false;
        }
        if(password.value.indexOf(' ')>-1){
            this.showMsg('password', '<i></i>密码不能包含空格', 'error');
            return false;
        }
        return true;
    };

    Login.prototype.showMsg = function(ele, text, status){
        var obj = document.getElementById(ele),
            tipObj = document.getElementById(ele).nextSibling.nextSibling;

        tipObj.innerHTML = text;

        switch(status){
            case 'error':
                obj.style.borderColor = this.color.red;
                break;
            case 'right':
                obj.style.borderColor = this.color.green;
                break;
            case 'notEnpty':
                obj.style.borderColor = this.color.green;
                break;
        }

        tipObj.style.visibility = 'visible';
    };

    Login.prototype.changeLoginBtn = function(doLogin){
        if(!doLogin){
            document.getElementById("loginBtn").text="登录";
        }else{
            document.getElementById("loginBtn").text="登录中...";
        }
    };


    var login = new Login();

    var postLoginData = function (rsaKey,isRemember) {
        var t = new Date().getTime();
        var reqData = {
            "un":$("#username").val(),
            "pd": $("#password").val(),
            "isRemember" : isRemember,
            "loadType":$("#loadType").val(),
            "encrypt":"0",
            "t":t
        };
        if(rsaKey!=''){
            var encrypt = new JSEncrypt();
            encrypt.setPublicKey(rsaKey);
            reqData.un = encrypt.encrypt(reqData.un);
            reqData.pd = encrypt.encrypt(reqData.pd);
            reqData.encrypt = "1";
        }


        $.ajax({
            type: "POST",
            url: "/2login",
            async: false,
            data: reqData,
            error:function () {
                login.changeLoginBtn(false);
            },
            success: function(data){
                if ( data.errorCode =='002') {
                    login.showMsg('username', '<i></i>'+data.errorMsg, 'error');
                    login.changeLoginBtn(false);
                } else if(data.errorMsg != ''  &&  data.errorMsg != null){
                    login.showMsg('password', '<i></i>'+data.errorMsg, 'error');
                    login.changeLoginBtn(false);
                }else{
                    var returnUrl = $("#returnUrl").val();
                    window.location.href= "/broadcast/index?returnUrl="+encodeURIComponent(returnUrl);
                }
            }
        });
    };



    document.getElementById('loginBtn').onclick = function(){
        login.changeLoginBtn(true);
        if(login.checkForm()){
            var isRemember = 0;
            if ($("#isRemember").attr("checked") == "checked") {
                isRemember = 1;
            }
            var t = new Date().getTime();
            $.ajax({
                type: "GET",
                url: "/generatorKey?t="+t,
                dataType:"text",
                async: false,
                error:function () {
                    login.changeLoginBtn(false);
                    postLoginData("",isRemember);
                },
                success: function(data){
                    postLoginData(data,isRemember);
                }
            });
        }else{
            login.changeLoginBtn(false);
        }

    };
    
    

});