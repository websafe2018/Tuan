/**
 * 公共控制JS
 *
 * 调用前缀 $.common
 */
$.common = {

    /**
     * 发送ajax请求（GET方法）
     * @param url		-- 【必须】请求URL
     * @param data		-- 【可选】请求参数，支持格式：url参数形式 / json
     * @param fn		-- 【可选】成功的回调函数，参数是接口返回的业务对象data
     * @param errFn		-- 【可选】失败的回调函数，参数是接口返回的整个json数据
     */
    get: function (url, data, fn, errFn) {
        this.request('get', url, data, fn, errFn, true);
    },

    /**
     * 发送ajax请求（POST方法，默认：同步）
     * @param url		-- 【必须】请求URL
     * @param data		-- 【可选】请求参数，支持格式：url参数形式 / json
     * @param fn		-- 【可选】成功的回调函数，参数是接口的业务对象data
     * @param errFn		-- 【可选】失败的回调函数，参数是接口返回的整个json数据
     * @param async		-- 【可选】异步标志位，不设置默认使用同步
     */
    post: function(url, data, fn, errFn, async) {
        this.request('post', url, data, fn, errFn, async);
    },

    /**
     * 发送ajax请求（POST方法，异步）
     * @param url		-- 【必须】请求URL
     * @param data		-- 【可选】请求参数，支持格式：url参数形式 / json
     * @param fn		-- 【可选】成功的回调函数，参数是接口的业务对象data
     * @param errFn		-- 【可选】失败的回调函数，参数是接口返回的整个json数据
     */
    asyncPost: function(url, data, fn, errFn) {
        this.request('post', url, data, fn, errFn, true);
    },

    request: function (method, url, data, fn, errFn, async) {
        if(typeof data == 'function') {
            async = errFn;
            errFn = fn;
            fn = data;
            data = null;
        }
        $.ajax({
            type: method,
            url: url,
            data: data || {},
            dataType: "json",
            cache: false,
            async: !!async,
            success: function(json) {
                if(json.code == -100) {
                    return (window.location.href = '/View/NoticeMessage.aspx?status=2');
                }
                if(json.code == -99) {
                    return (window.location.href = '/View/login.aspx?ReturnUrl=' + window.location.href);
                }
                if(json.code == 0) {
                    fn && fn(json.data);
                    return;
                }
                errFn ? errFn(json) : alert(json.message);
            },
            error: function(xhr, msg, e) {
                errFn ? errFn({error: true, message: msg}) : alert(url + ' jQuery.ajax() exception: ' + (msg || e));
            }
        });
    }

};