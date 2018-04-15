<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
团贷网- P2P理财、P2P网贷首选网站,安全可靠的互联网金融平台！
</title><script src="${pageContext.request.contextPath }/js/js/hm.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/account_borrowReturnPlanList.js"></script>
<script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js1/webaccess.js"></script>
<script>var TINGYUN=function(e,t,n){function r(e){var t=!!e&&"length"in e&&e.length,n=typeof e;return"function"!==n&&("array"===n||0===t||"number"==typeof t&&t>0&&t-1 in e)}function i(e,t){var n,i=0;if(e)if(r(e))for(n=e.length;i<n&&!1!==t.call(e[i],e[i],i);i++);else for(i in e)if(!1===t.call(e[i],e[i],i))break;return e}function o(e){return function(t){return"Array"===e&&Array.isArray?Array.isArray(t):Object.prototype.toString.call(t)==="[object "+e+"]"}}function a(e){switch(typeof e){case"object":if(!e)return null;if(e instanceof Array)return i(e,function(t,n){e[n]=a(t)}),"["+e.join(",")+"]";if(e instanceof Date)return e.getTime().toString();var t="";return i(e,function(e,n){Ce(e)||(t+=a(n)+":"+a(e)+",")}),t&&(t=t.substr(0,t.length-1)),"{"+t+"}";case"string":return Ae+e.replace(Le,"\\$1").replace(Oe,"\\n")+Ae;case"number":return isNaN(e)?null:e;case"boolean":return e;case"function":return a(e.toString());case"undefined":default:return'"undefined"'}}function u(e){return e&&qe(e)?ke(e):e}function c(e,t,n,r){var i=function(){return Be(e,t,i),n.apply(this,arguments)};return je(e,t,i,r)}function s(e,t){return Function.prototype.apply.apply(e,t)}function f(e,t){return function(){e.apply(t,arguments)}}function l(e){return Me?Me(e):e}function d(e){return arguments.length<2||!e?e:(i(He.call(arguments,1),function(t){i(t,function(t,n){e[n]=t})}),e)}function h(e,t){for(var n=-1,r=0,i=null==e?0:e.length,o=[];++n<i;){var a=e[n];t(a,n,e)&&(o[r++]=a)}return o}function v(e,t){return e?t?e.replace(/\{(\w+.?\w+)\}/g,function(e,n){return t[n]||""}).replace(/\{(\d+)\}/g,function(e,n){return t[n]||""}):e:""}function p(e){return setTimeout(e,0)}function m(){}function g(){return+new Date}function y(e){return function(){if(null!==e){var t=e;e=null,t.apply(this,arguments)}}}function S(e){return e?qe(e)?e.length:t.ArrayBuffer&&e instanceof ArrayBuffer?e.byteLength:t.Blob&&e instanceof Blob?e.size:e.length?e.length:0:0}function E(e){return Fe!==Ue&&/^https/i.test(e&&e.protocol||Fe)?"https:":Ue}function _(e,t,n,r){var o=null;return e&&t&&(o=E(r)+"//"+e+t,n&&(o+="?",i(n,function(e,t){var n=[l(t),"=",l(e),"&"];o+=n.join("")}),o+="__r="+g())),o}function w(){this.events={}}function b(e){return!(e in $e)||$e[e]}function T(e){var t=Xe.cookie.match(new RegExp("(^|;\\s*)("+e+")=([^;]*)"));return t?t[3]:null}function x(e,t,n){var r=e+"="+t;if(n){var i=new Date;i.setTime(i.getTime()+1e3*n),r+=";expires="+i.toGMTString()}Xe.cookie=r}function k(e,t,n){var r=Xe.createElement(e);try{for(var i in t)r[i]=t[i]}catch(a){var o="<"+e;for(var i in t)o+=" "+i+'="'+t[i]+'"';o+=">",n||(o+="</"+e+">"),r=Xe.createElement(o)}return r}function I(e,t,n,r){Ce(n)&&(r=n);var i=k("div",{style:gt}),o=k("iframe",{name:"ty_form",width:0,height:0,style:gt}),a=k("form",{style:gt,action:e,enctype:"application/x-www-form-urlencoded",method:"post",target:"ty_form"}),u=k("input",{name:"data",type:"hidden"},!0);u.value=Ie(t),a.appendChild(u),i.appendChild(o),i.appendChild(a),Xe.body.appendChild(i),a.submit(),o.onreadystatechange=function(){o.readyState!==st&&4!==o.readyState||(r(null,o.innerHTML),Xe.body.removeChild(i))}}function q(e,t,n){if(e&&n&&Ce(n)){var r=e[t];if(!r||!r._wrapped){var i=n(r);return i&&(i._wrapped=!0),e[t]=i,i}}}function N(e){Et&&e()}function C(e){return function(){Et&&e.apply(this,arguments)}}function R(){Et=!1}function A(){Tt.on(it,y(function(){e();var t=g();N(function(){_t.load=t}),qt.loadEventEnd=t})),i([it,ot,at,ut],function(e){je(t,e,function(t){N(function(){(_t.e[e]||(_t.e[e]=[])).push(g())}),Tt.emit(e,t)})});var e=y(function(){var e=g();N(function(){_t.end=e}),qt.domContentLoadedEventEnd=e,Xe.querySelectorAll&&(bt.resources=bt.resources||[],i(Xe.querySelectorAll("head>link,head>script"),function(e){var t;"LINK"==e.tagName?t=e.href:"SCRIPT"!=e.tagName||e.defer||e.async||(t=e.src),t&&bt.resources.push(t)}))});je(Xe,"DOMContentLoaded",e),je(Xe,ct,function(t){Xe.readyState===st&&e()});var n=y(function(){qt.touch=g()});i(["scroll","click","keypress"],function(e){c(Xe,e,n)}),q(t,"requestAnimationFrame",function(e){return function(){if(!qt.firstPaint){var n=g();N(function(){_t.an.count++,_t.an.t=n}),qt.firstPaint=n,t.requestAnimationFrame=e}return e.apply(this,arguments)}})}function L(e){D(e,xt)}function O(e){D(e,kt)}function D(e,t){var n="ok";if(!e)return n=t.length?t.join("\n"):n;t.push(e)}function j(){var e=this;e.xhrs={},e.errs=[],w.call(e)}function B(e,t){this.flags=0,Ce(e.create)&&(this.create=e.create,this.flags|=Dt),Ce(e.before)&&(this.before=e.before,this.flags|=jt),Ce(e.after)&&(this.after=e.after,this.flags|=Bt),Ce(e.error)&&(this.error=e.error,this.flags|=Mt),this.data=t}function M(e,t){if(!Pt){if(!Re(e)||!e)throw new TypeError("callbacks arguments must be an object");return Pt=new B(e,t)}}function H(e){var t=Pt.data;if(0!=(Pt.flags&Dt)){var n=Pt.create(Pt.data);n!==undefined&&(t=n)}return function(){0!=(Pt.flags&jt)&&Pt.before(this,t);try{var n=e.apply(this,arguments)}catch(r){throw 0!=(Pt.flags&Mt)&&Pt.error(t,r),r}return 0!=(Pt.flags&Bt)&&Pt.after(this,t),n}}function P(e){return!Pt||Pt.flags<=0?e:H(e)}function F(){function e(e){return function(t){return Ce(t)&&(arguments[0]=P(t)),e.apply?e.apply(this,arguments):s(e,[this,arguments])}}if(t.EventTarget){var n=t.EventTarget.prototype;q(n,"addEventListener",function(e){return function(t,n,r){return Ce(n)&&(n.__wrap=P(n),arguments[1]=n.__wrap),e.apply(this,arguments)}}),q(n,"removeEventListener",function(e){return function(t,n){return n.__wrap?e.call(this,t,n.__wrap):e.apply(this,arguments)}})}q(t,"setTimeout",e),q(t,"setInterval",e)}function U(){this.id=null,this.active=null,this._set=[]}function z(){F();var e=new U;return e.id=M({create:function(){return e.active},before:function(t,n){n&&e.enter(n)},after:function(t,n){n&&e.exit(n)},error:function(t,n){if(t){try{n.moduleId=t.moduleId}catch(r){}e.exit(t)}}}),e}function Y(e){Ot&&console.warn(e||"Event key required!")}function X(e){e=e||{},this.key=e.key;var t=e.timeout||6e5;this.i=t?setTimeout(f(this.fail,this),t):null,this.status=1,this.remain=0,this.xhrs=[],this.s=g(),this.e=null,this.called=this.sent=!1}function G(){if(Object.defineProperty){var e=t[ht];Object.defineProperty(t,ht,{get:function(){return $t++>0&&t.console&&console.warn("window.%s is deprecated, use window.%s instead.",ht,vt),e}})}}function J(e){try{return u(e)}catch(t){L(t&&t.message)}return null}function $(){return qt.domContentLoadedEventEnd||qt._end}function K(){return qt.loadEventEnd||qt._end}function V(e){function r(t){return e[t]>0?e[t]-a:0}var o={},a=n;if(e){N(function(){var t=_t.t={};i(e,function(e,n){Ce(e)||(t[n]=e)})}),a=e.navigationStart,o={f:r(Qt),qs:r(Wt),rs:r(Zt),re:r(en),os:r(tn),oe:r(nn),oi:r(rn),oc:r(on),ls:r(an),le:r(un),tus:r(cn),tue:r(sn)};var u=r(ln),c=r(dn),s=r(hn),f=r(vn),l=r(pn),d=r(mn);d-l>0&&(o.cs=l,o.ce=d),c-u>0&&(o.ds=u,o.de=c),(f-s>0||f>0)&&(o.es=s,o.ee=f),0==o.le&&(o.ue=K()-a),qt._le=o.ue||o.le;var h,v;if(e.msFirstPaint)h=e.msFirstPaint,N(function(){_t.fp="m_"+h});else if((v=t.chrome)&&v.loadTimes){var p=v.loadTimes();p&&p.firstPaintTime&&(h=1e3*p.firstPaintTime),N(function(){_t.fp="c_"+p.firstPaintTime})}else qt.firstPaint&&(h=qt.firstPaint,N(function(){_t.fp=h}));h&&(o.fp=Math.round(h-a),qt.fp=o.fp),e[gn]&&(o.sl=r(gn))}else o={t:a,os:$()-a,ls:K()-a};return o.je=qt.errs&&qt.errs.length||0,qt.ct&&(o.ct=qt.ct-a),qt.touch&&(o.fi=qt.touch-a),o}function Q(e){var t={tr:!1,tt:l(Xe.title),charset:Xe.characterSet};wt.resources&&d(t,wt.resources),N(function(){t.debug=_t}),R();var n=qt.errs;i(n,function(e,t){n[t]=e.toObject()}),t.err=n;var r="getEntriesByType";return e[r]?(t.tr=!0,t.res=[],i(e[r]("resource"),function(e){function n(t){var n=e[t];return n>0?n:0}var r=e.initiatorType,i=e.name,o={o:n("startTime"),rt:r,n:i,f:n(Qt),ds:n(ln),de:n(dn),cs:n(pn),ce:n(mn),sl:n(gn),qs:n(Wt),rs:n(Zt),re:n(en),ts:e.transferSize||0,es:e.encodedBodySize||0};if("xmlhttprequest"===r){var a=W(i);a&&(o.aid=a.id,o.atd=a.trId,o.an=a.action,o.aq=a.time&&a.time.qu,o.as=a.time&&a.time.duration)}t.res.push(o)})):O(v(Rt,[r])),t}function W(e){var t;return i(qt.xhrs,function(n,r){if(r&&r.indexOf(e)>-1)return t=n,!1}),t}function Z(e){var t={};return e&&(t.id=e.id,t.a=e.a,t.q=e.q,t.tid=e.tid,t.n=e.n),t}function ee(e){var t=0,n=e.timing;return n?e.getEntriesByName&&(t=n.domLoading,i(bt.resources,function(r){var i=e.getEntriesByName(r);if(1==i.length){var o=i[0].responseEnd+n.navigationStart;o>t&&(t=o)}}),t-=n.navigationStart):O("fp=0"),N(function(){_t._fp=t}),Math.round(t)}function te(e,n,r,o){var a=r||0,u=wt.firstScreenResources;if(u&&u.length&&e.getEntriesByName)return i(u,function(t){var n=e.getEntriesByName(t);if(n.length){var r=n[0].responseEnd;r>a&&(a=r)}}),o.fs_s=1,Math.round(a);if(!Xe.createElement("img").getBoundingClientRect)return N(function(){_t.fs=a}),a;if(e.getEntriesByName){var c=t.innerHeight,s=[];i(Xe.querySelectorAll("img"),function(e){!re(e)&&""!=e.src&&ne(e)<c&&s.push(e.src)});var f=(n.loadEventEnd||qt.loadEventEnd)-n.navigationStart;i(s,function(t){var n=e.getEntriesByName(t);if(n.length){var r=n[0],i=r.responseEnd;r.fetchStart<=f&&i>a&&(a=i)}})}return Math.round(a)}function ne(e){var n;if("undefined"==typeof e.getBoundingClientRect)return undefined;n=e.getBoundingClientRect();var r=t.pageYOffset;return n.top+(0===r?0:r||Xe.scrollTop||0)-(Xe.clientTop||0)}function re(e){var n="none";if(t.getComputedStyle){var r=e.ownerDocument.defaultView;r&&r.opener||(r=t),n=r.getComputedStyle(e).display}else e.currentStyle&&(n=e.currentStyle.display);return n&&"none"==n}function ie(e){var t=n,r=0;return e&&(t=e.navigationStart||t,r=e.domContentLoadedEventEnd||e.domInteractive||e.domLoading||r),(r=qt.domContentLoadedEventEnd||r||qt._end)-t}function oe(e){if(e){var t=e.fetchStart;if(t)return t-e.navigationStart}return undefined}function ae(e){return function(t,n){var r=this;if(!r[mt]){var i=r[ht]={};i.method=t,i.url=n,i.id=Tn++;var o=Ut.get("event");o&&(i.key=o.key,o.remain++)}try{return e.apply(r,arguments)}catch(a){}return s(e,[r,arguments])}}function ue(e){return function(t){var n=this;if(!n[mt]){var r=n[ht];r&&(r.start=g(),r.reqSize=S(t)),ce(n),n.setRequestHeader&&$e.id&&r&&In(r.url)&&(r.r=g()%1e9,n.setRequestHeader("X-Tingyun-Id",$e.id+";r="+r.r))}try{return e.apply(n,arguments)}catch(i){}return s(e,[n,arguments])}}function ce(e){function t(t){return P(function(){se(e);var n;if(Ce(t)){var r=e[ht];if(r&&4==e.readyState)var i=g();n=t.apply(this,arguments),r&&4==e.readyState&&(r.cbTime=g()-i,e[ht]=null)}return n})}function n(t){e[ht]&&(e[ht].errorCode=t)}if(e[kn])q(e,kn,t);else try{je(e,ct,P(function(){se(e)})),i(xn,function(t,r){je(e,r,function(){n(t)})})}catch(r){return void p(function(){i(xn,function(t,r){var i="on"+r;e[i]?q(e,i,function(e){if(n(t),Ce(e))return e.apply(this,arguments)}):e[i]=function(){n(t)}}),q(e,kn,t)})}p(function(){q(e,kn,t)})}function se(e){var t=e[ht];if(t&&(t.end=g(),t.readyState=e.readyState,4==e.readyState)){t.status=e.status,t.resSize=fe(e);var n=Ut.get("event");p(function(){var r=!1;if(i(bn,function(e){if(e.id===t.id)return r=!0,!1}),!r){var o=le(t,e);n&&n.key==t.key&&(n.xhrs.push(o),0==--n.remain&&n._end()),qt.xhrs&&(wn(t),qt.xhrs[t.url]=o),bn.push(o)}})}}function fe(e){var t=0;if(""==e.responseType||"text"==e.responseType)t=S(e.responseText);else if(e.response)t=S(e.response);else try{t=S(e.responseText)}catch(n){}return t}function le(e,t){if(e){var n=e.status,r={id:e.id,req:e.method+" "+e.url,start:e.start,du:n>0?e.end-e.start:0,cb:e.cbTime||0,status:n,err:e.errorCode?e.errorCode:0,rec:e.resSize,send:e.reqSize};if(e.r){var i=he(t,e);i&&(r.s_id=i.id,r.s_name=i.action,i.time&&(r.s_du=i.time.duration,r.s_qu=i.time.qu),r.t_id=i.trId)}return r}}function de(e,t){if(e&&e.getResponseHeader)return e.getResponseHeader(t)}function he(e,t){var n=J(de(e,"X-Tingyun-Tx-Data"));return n&&n.r&&ve(n.r)===ve(t.r)?n:null}function ve(e){return e+""}function pe(){return setInterval(function(){if(bn&&bn.length){var e=[];i(bn,function(t){e.push(t)}),qt.emit("send","/xhr1",null,{xhr:e},function(){bn=h(bn,function(t){return e.indexOf(t)<0})}),Pe()&&!t.XDomainRequest&&(bn=[])}},En)}function me(){var e=Ge&&Ge.prototype;return e?(q(e,"open",ae),q(e,"send",ue)):Ge&&(t.XMLHttpRequest=function(){var e=new Ge;return q(e,"open",ae),q(e,"send",ue),e}),pe()}function ge(e){this.limit=e,this.reset()}function ye(e,t,n,r){return String(e)+String(t)+String(n)+String(r)}function Se(e,t,n,r,i,o,a){var u=this;u.id=e,u.time=g(),u.msg=t,u.lineno=r,u.colno=i,u.filename=n,u.count=1,u.stack=o&&o.stack||"",u.module=a,u.fix();var c=Rn[e];u.ep=c?0:1,Rn[e]=!0}function Ee(e){var t=function(e){var t=[];return i(e,function(e){t.push(e.toObject())}),t}(Cn.c);if(!t||!t.length)return null;qt.emit("send","/err1",{fu:Nn||Nn++,os:parseInt((g()-(bt.pfStart||n))/1e3)},{datas:t},f(Cn.reset,Cn))}function _e(e,t,n,r,o){if(t||!Qe){var a=!1;if(i(Je.domains,function(e){if(a=e.test(t))return!1}),!a){var u=o&&o.moduleId,c=ye(e,n,r,u),s=Cn.get(c);s?s.increase():(s=new Se(c,e,t,n,r,o,u),Cn.add(c,s),qt.errs&&qt.errs.push(s))}}}function we(){var e=t.onerror;t.onerror=function(t,n,r,i,o){if(_e(t,n,r,i,o),Ce(e))return e.apply(this,arguments)},t.onerror._ty=!0}function be(){var e=t.onerror;e&&e._ty||we()}function Te(){var e=Pe();return e?we():je(t,rt,function(e){var n,r,i,o,a;g();(e instanceof t.Event||t.ErrorEvent&&e instanceof t.ErrorEvent)&&(n=e.message||e.error&&(e.error.message||e.error.constructor.name)||"",r=e.lineno||0,i=e.colno||0,(o=e.filename||e.error&&e.error.filename||e.target&&e.target.baseURI||"")==Xe.URL&&(o="#"),a=e.error),_e(n,o,r,i,a)}),Tt.on([it,ot,at,ut],function(e){Ee()}).on(it,function(){e&&p(be)}),setInterval(Ee,qn)}function xe(){Array.prototype.indexOf||(Array.prototype.indexOf=function(e,t){var n=this.length>>>0;if((t|=0)<0)t=Math.max(n-t,0);else if(t>=n)return-1;if(e===undefined){do{if(t in this&&this[t]===undefined)return t}while(++t!==n)}else do{if(this[t]===e)return t}while(++t!==n);return-1})}var ke,Ie,qe=o("String"),Ne=o("Array"),Ce=o("Function"),Re=o("Object"),Ae='"',Le=/([\"\\])/g,Oe=/\n/g,De=t.JSON;De&&De.parse&&De.stringify?(ke=function(e){return JSON.parse(e)},Ie=function(e){return JSON.stringify(e)}):(ke=function(e){return new Function("return "+e)()},Ie=a);var je,Be;t.addEventListener?(je=function(e,t,n,r){return e.addEventListener(t,n,r)},Be=function(e,t,n){return e.removeEventListener(t,n)}):(je=function(e,t,n){return e.attachEvent("on"+t,n)},Be=function(e,t,n){return e.detachEvent("on"+t,n)});var Me=t.encodeURIComponent,He=[].slice,Pe=new Function("return!+[1,]"),Fe=t.location.protocol,Ue="http:",ze=function(){function e(e){return e<0?NaN:e<=30?0|Math.random()*(1<<e):e<=53?(0|Math.random()*(1<<30))+(0|Math.random()*(1<<e-30))*(1<<30):NaN}function t(e,t){for(var n=e.toString(16),r=t-n.length,i="0";r>0;r>>>=1,i+=i)1&r&&(n=i+n);return n}return function(){return t(e(32),8)+"-"+t(e(16),4)+"-"+t(16384|e(12),4)+"-"+t(32768|e(14),4)+"-"+t(e(48),12)}}();w.prototype={on:function(e,t){var n=this;return qe(e)?(n.events[e]||(n.events[e]=[])).push(t):Ne(e)&&i(e,function(e){n.on(e,t)}),n},off:function(e,t){var n=arguments.length,r=this;if(0===n)return r.events={},r;var i=r.events[e];if(!i)return r;if(1===n)return r.events[e]=null,r;for(var o=i.length;o--;)if(i[o]===t){i.splice(o,1);break}return r},emit:function(e){var t=[].slice.call(arguments,1),n=this.events[e];return n&&i(n,function(e){return e.apply(this,t)}),this},unshift:function(){var e=this;return(e.events[event]||(e.events[event]=[])).unshift(fn),e}};var Ye=t.Error,Xe=t.document,Ge=t.XMLHttpRequest,Je={};e(Je);var $e=Je.server||{};$e=d({fp_threshold:2e3,fs_threshold:4e3,dr_threshold:4e3},$e);var Ke,Ve,Qe=b("ignore_err"),We=b("debug"),Ze=t.location,et=t.navigator,tt=t.HTMLElement;({localStorage:function(){try{var e=ze();return t.localStorage.setItem(e,e),t.localStorage.removeItem(e),!0}catch(n){return!1}}()}).localStorage?(Ke=function(e){return t.localStorage.getItem(e)},Ve=function(e,n){return t.localStorage.setItem(e,n),n}):(Ke=T,Ve=x);var nt,rt="error",it="load",ot="unload",at="beforeunload",ut="pagehide",ct="readystatechange",st="complete",ft="TY_DISTINCT_ID",lt="TY_SESSION_ID",dt=86400,ht="_ty_rum",vt="TINGYUN",pt=2,mt="__ign",gt="display:none",yt="POST",St=function(e,t){t=t||m;var n=new Image;je(n,ct,function(){"loaded"!=n.readyState&&4!=n.readyState||t(null)},!1),je(n,it,function(){t(null)},!1),je(n,rt,function(){t(rt)},!1),n.src=e};t.XDomainRequest?nt=function(e,t,n,r){Ce(n)&&(r=n);var i=new XDomainRequest;i.open(yt,e),i.onload=function(){r(null,i.responseText)},i.onerror=function(e){r(e)},i.send(Ie(t))}:Pe()?nt=I:et.sendBeacon?St=nt=function(e,t,n,r){Ce(n)&&(r=n,n=null),et.sendBeacon(e,Ie(t))&&r&&r()}:nt=function(e,t,n,r){Ce(n)&&(r=n,n=null);var i=y(r),o=new Ge;o[mt]=!0,o.overrideMimeType&&o.overrideMimeType("text/html"),o.onreadystatechange=function(){4==o.readyState&&200==o.status&&i(null,o.responseText)},o.onerror=i,t=Ie(t);try{o.open(yt,e,!0)}catch(u){return I(e,t,i)}for(var a in n)o.setRequestHeader(a,n[a]);o.send(t)};var Et=We,_t={start:n,e:{},an:{count:0},visible:[]},wt={},bt={};!function(){if(We){var e,t;"undefined"!=typeof Xe.hidden?(e="hidden",t="visibilitychange"):"undefined"!=typeof Xe.msHidden?(e="msHidden",t="msvisibilitychange"):"undefined"!=typeof Xe.webkitHidden&&(e="webkitHidden",t="webkitvisibilitychange"),"undefined"==typeof Xe.addEventListener||"undefined"==typeof Xe[e]||je(Xe,t,C(function(){_t.visible.push([Xe[e],g()])}))}}();var Tt=new w,xt=[],kt=[],It=j.prototype;It.start=function(){if(!$e.key)return L("missing config, agent disabled!"),!1;var e=t[ht]||t[vt];return e&&e.server?(L("already loaded!"),!1):(A(),this)},d(It,w.prototype);var qt=new j;qt.on("send",function(e,t,n,r){var i=_($e.beacon,e,d({},Nt,t||{}));switch(r=r||m,e){case"/pf":n?nt(i,n,function(){qt.xhrs=qt.errs=null,r()}):St(i,r);break;default:nt(i,n,r)}});var Nt={pvid:ze(),ref:Xe.URL,referrer:Xe.referrer,key:$e.key,v:"1.7.1",av:"1.7.1",did:function(){var e=Ke(ft);return e||Ve(ft,ze(),dt)}(),sid:function(){var e=T(lt);return e||(e=ze(),x(lt,e)),e}()},Ct=tt?function(e){return e instanceof tt}:function(e){e&&"object"==typeof e&&1===e.nodeType&&qe(e.nodeName)},Rt="{0} not support",At="illegal argument",Lt={},Ot="undefined"!=typeof t.console,Dt=1,jt=2,Bt=4,Mt=8,Ht=B.prototype;Ht.create=Ht.before=Ht.after=Ht.error=null;var Pt;U.prototype={createContext:function(){return Object.create?Object.create(this.active):z(this.active)},get:function(e){if(this.active)return this.active[e]},set:function(e,t){if(this.active)return this.active[e]=t},enter:function(e){if(!e)throw new Ye("context required!");this._set.push(this.active),this.active=e},exit:function(e){if(!e)throw new Ye("context required!");if(e!==this.active){var t=this._set.lastIndexOf(e);if(t<0)throw new Ye("context not currently entered!");this._set.splice(t,1)}else this.active=this._set.pop()},bind:function(e,t){t||(t=this.active?this.active:this.createContext());var n=this;return function(){n.enter(t);try{return e.apply(this,arguments)}catch(r){try{r.moduleId=t.moduleId}catch(i){}throw r}finally{n.exit(t)}}}};var Ft=!1,Ut=(Ft||(Ut=z(),Ft=!0),Ut),zt=Y.prototype;zt.fail=zt.end=m;var Yt=X.prototype;Yt.end=Yt.finish=Yt.fail=null,Yt.send=function(e){var t=this;t.sent=!0;var n=e.event&&e.event.xhrs||[];i(n,function(e){e.start=e.start-t.s});var r={key:t.key,duration:t.e-t.s,status:t.status,xhrs:n};qt.emit("send","/spe",null,r,m)};var Xt={},Gt={host:"cshst",url:"csurl"},Jt={version:"1.7.1",config:function(e,t){var n;if(Re(e))n=e;else{if(!qe(e)||t===undefined)throw new Ye(At);(n={})[e]=t}return i(n,function(e,t){t in Gt?wt[Gt[t]]=e:wt[t]=e}),this},DIAGNOSE_HREF:pt,diagnose:function(e){function t(e,t,r){var i=r||"log",o=n[e]||(n[e]={});o[i]=o[i]||"",o[i]+=t}var n={},r=L();if(t("Status",r,"ok"!==r),t("Debug",O()),i(Lt,function(e,n){t("Timeline",n+": "+e.toString())}),!e&&Ot)console.log("[TingYun Agent Diagnosis]\n"),i(n,function(e,t){i(console[t],function(e,t){console[t](e)})});else{if(e!==pt)return Ie(n);Ze.href=Ze.href+"#"+Ie(n)}},createEvent:function(e){var t=(e=e||{}).key;if(!t)return new Y;if(Xt[t])return new Y("event "+t+" is executing");Xt[t]=!0;var n=Ut.createContext();Ut.enter(n);var r=new X(e);return Ut.set("event",r),r._end=function(){var e=this;!e.sent&&0===e.remain&&e.called&&e.finish().send(n)},r.end=function(e){var t=this;t.called?Ot&&console.warn("Event "+this.key+"has ended or failed!"):(t.called=!0,Ut.exit(n),t.status=arguments.length?e:1,t._end())},r.finish=function(e){var t=this;return t.e=g(),t.i&&clearTimeout(t.i),delete Xt[t.key],t},r.fail=function(){this.end(0)},r},logFirstScreen:function(e){if(e){var t=wt.firstScreenResources=wt.firstScreenResources||[];Ne(e)||(e=[e]),i(e,function(e){if(qe(e))t.push(e);else if(Ct(e)){var n=e.src||e.href;n&&t.push(n)}})}},addExcludedDomain:function(e){Ne(e)||(e=[e]),i(e,function(e){if(e){if(!(e instanceof RegExp))throw new Ye("parameter's type requires RegExp");(Je.domains||(Je.domains=[])).push(e)}})}};t[ht]=t[vt]=Jt;var $t=0,Kt={},Vt=t.screen;Vt&&(Kt.sh=Vt.height,Kt.sw=Vt.width);var Qt="fetchStart",Wt="requestStart",Zt="responseStart",en="responseEnd",tn="domContentLoadedEventStart",nn="domContentLoadedEventEnd",rn="domInteractive",on="domComplete",an="loadEventStart",un="loadEventEnd",cn="unloadEventStart",sn="unloadEventEnd",ln="domainLookupStart",dn="domainLookupEnd",hn="redirectStart",vn="redirectEnd",pn="connectStart",mn="connectEnd",gn="secureConnectionStart",yn=function(e){if(!e.agent){var n=t._ty_rum;if(n&&n.agent)e.agent=n.agent;else{var r=T("TINGYUN_DATA");if(r){try{e.agent=J(decodeURIComponent(r))}catch(i){L(i&&i.message)}x("TINGYUN_DATA","",-1e3)}}}return e.agent}(Je),Sn=function(){var e=t.performance,r=!!e;r||O(v(Rt,["pf"]));var o=y(function(){function t(e){return e?"1":"0"}var o=Z(yn),a=e&&e.timing,u=d(V(a),o,wt),c=d({},Kt);qt.fp?(c.fp=qt.fp,r&&qt.fp>qt._le&&(O("fp>le"),c.fp=ee(e),c.__fp=2)):r?(c.fp=ee(e),c.__fp=1):c.fp=c.__fp=0,c.dr=ie(a),r?c.fs=te(e,a,c.fp,c):c.__fs=0;var s,f="";if(r){var l=Math.max(u.ls,0);l||(l=K()-a.navigationStart||n),c.trace=l;var h=oe(a);i(["fp","fs","dr","trace"],function(e){f+=t((h?c[e]-h:c[e])>=$e[e+"_threshold"])}),delete c.trace,f.indexOf("1")>-1&&(s=Q(e))}c.trflag=f||"0000",bt.pfStart=g(),delete u.firstScreenResources,qt.emit("send","/pf",d(u,c),s,function(){O("pf sent!"),qt.xhrs=qt.errs=null})});return Tt.on(it,function(){p(o)}).on([ot,at,ut],o)},En=2e3,_n=function(e){var t=[];return i($e.custom_urls,function(e){try{t.push(new RegExp(e))}catch(n){L(n&&n.message)}}),t}(),wn=_n.length?function(e){var t=e.url;!qt.ct&&t&&i(_n,function(n){if(t.match(n))return qt.ct=e.end+e.cbTime,!1})}:m,bn=[],Tn=0,xn={error:990,abort:905,timeout:903},kn="on"+ct,In=function(){function e(e){var r=e;return t&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}var t=/(msie|trident)/i.test(et.userAgent),n=Xe.createElement("a"),r=e(Ze.href);return function(t){var n=e(t);return n.protocol===r.protocol&&n.host===r.host}}(),qn=1e4,Nn=0;ge.prototype={add:function(e,t){this.len>this.limit||this.get(e)||(this.c[e]=t,this.len++)},get:function(e){return this.c[e]},reset:function(){this.c={},this.len=0}};var Cn=new ge(100),Rn={},An=/([a-z]+:\/{2,3}.*):(\d+):(\d+)/;return Se.prototype={increase:function(){this.count++},fix:function(){var e=this,t=e.stack;if(e.module&&t&&qe(t)&&e.filename){t=t.split(/\n/);var n=An.exec(t[0])||An.exec(t[1]);n&&n[1]!=e.filename&&(e.filename=n[1]||e.filename,e.lineno=n[2]||e.lineno,e.colno=n[3]||e.colno)}},toObject:function(){var e=this;return{o:e.time,e:e.msg,l:e.lineno,c:e.colno,r:e.filename,ec:e.count,s:e.stack,m:e.module,ep:e.ep}}},xe(),qt.start()&&(Sn(),me(),Te()),qt._end=g(),N(function(){_t._end=qt._end}),G(),Jt}(function(ty_rum){ty_rum.server = {beacon:"beacon.tingyun.com",beacon_err:"beacon-err.tingyun.com",key:"oUQGQZGPti0",trace_threshold:7000,ignore_err:false,fp_threshold:2000,fs_threshold:4000,dr_threshold:4000,id:"4aFM93gEJaM"};ty_rum.agent={id:'hURMz5HxrV4#sHBikFjUF6A',n:'WebAction/ASP/member%2Faccount_borrowReturnPlanList.aspx',tid:'67cc3c32d04ff460fd34',q:0,a:443};},window,+new Date);</script><link rel="dns-prefetch" href="https://image.tuandai.com/"><link rel="dns-prefetch" href="https://js.tuandai.com/"><link rel="dns-prefetch" href="https://vip.tuandai.com/"><link rel="dns-prefetch" href="https://hd.tuandai.com/"><link rel="dns-prefetch" href="https://bbs.tuandai.com/"><meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="https://js.tuandai.com/images/default/favicon.ico?v=20150513">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/base20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/public20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/new.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account-new.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/account-public.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/bind_bank.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css1/xiamen-bank.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css1/cgt20161107.css">
<style type="text/css">
        #leftMenu {
            border: 1px solid #e6e6e6;
        }

		
        .dv_r_5, .dv_r_5_1, .dv_r_5_2 {
            padding-left: 40px;
            height: 42px;
            line-height: 40px;
            background: url(//js.tuandai.com/images/member/baktag.jpg) no-repeat;
            background-repeat: no-repeat;
            font-family: 宋体;
            font-size: 14px;
            text-align: left;
            background-position: 0 0;
            border: 1px solid #e6e6e6;
            cursor: pointer;
            position: relative;
        }

        .dv_r_5_1, .dv_r_5_2, .dv_r_5_3, .dv_r_5_4, .dv_r_5_5, .dv_r_5_6, .dv_r_5_7 {
            border-top: 0;
        }

        .dv_r_5_1 {
            background-position: 0 -42px;
        }

        .dv_r_5_2 {
            background-position: 0 -84px;
        }

        .dv_r_5_3 {
            background-position: 0 -126px;
        }

        .dv_r_5_4 {
            background-position: 0 -126px;
        }

        .dv_r_5_5 {
            background-position: 0 -126px;
        }

        .dv_r_5_6 {
            background-position: 0 -168px;
        }

        .dv_r_6 {
            height: 100%;
            overflow: hidden;
            line-height: 25px;
            text-align: left;
        }

            .dv_r_6 ul {
                margin: 0px;
                padding: 0px;
                list-style: none;
                background-color: #fff;
                padding-bottom: 0px;
                padding-top: 0px;
                border: 1px solid #e6e6e6;
                border-top: none;
            }

                .dv_r_6 ul li {
                    height: 38px;
                    line-height: 34px;
                    padding-left: 35px;
                    background: url(//js.tuandai.com/images/member/bakdotted.jpg);
                    background-position: bottom;
                    background-repeat: no-repeat;
                }

                .dv_r_6 ul .over {
                    background: #f5f5f5;
                }

                .dv_r_6 ul li a {
                    text-decoration: none;
                }

                .dv_r_6 ul li.last {
                    padding-left: 35px;
                    background: none;
                }

                    .dv_r_6 ul li.last:hover {
                        background: #f5f5f5;
                    }

                .dv_r_6 ul li a {
                    margin-left: 8px;
                    color: #666;
                    font-size: 14px;
                }

                .dv_r_6 ul li div {
                    padding-left: 3px;
                    clear: both;
                    width: 180px;
                    color: #000;
                    line-height: 20px;
                    text-indent: 17px;
                }

                .dv_r_6 ul li a.red {
                    color: #DD8800;
                }

        #leftMenu .dv_r_5 strong {
            font-family: "微软雅黑", "宋体", Arial;
            color: #333;
            font-size: 16px;
            font-weight: normal;
        }

        #leftMenu .dv_r_5_1 strong, #leftMenu .dv_r_5_2 strong, #leftMenu .dv_r_5_3 strong, #leftMenu .dv_r_5_4 strong {
            color: #333;
        }

        .current {
            font-weight: bold;
        }

        .otherline .li1 strong {
            font-weight: normal;
        }

        #leftMenu .hidden {
            display: none;
        }

        #leftMenu .up {
            width: 14px;
            height: 7px;
            display: inline-block;
            cursor: pointer;
            background: url(//js.tuandai.com/images/member/gr_arrow_01.gif);
            position: absolute;
            right: 20px;
            top: 18px;
        }

        #leftMenu .down {
            width: 14px;
            height: 7px;
            display: inline-block;
            cursor: pointer;
            background: url(//js.tuandai.com/images/member/gr_arrow_02.gif);
            position: absolute;
            right: 20px;
            top: 18px;
        }

        #menu_autoTender {
            position: relative;
            
        }

        #menu_myWePlan {
            position: relative;
            
        }

        .account-left .emClass, .account-left.emClass {
            width: 18px;
            height: 18px;
            display: block;
            left: 16px;
            top: 50%;
            margin-top: -10px;
            position: absolute;
            background: url("//js.tuandai.com/images/investlist/invest_detail/we-financing.png") -191px -23px;
        }

        .account-left .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }

        .account-left .tip {
            width: 357px;
            position: relative;
            background: #fef8e0;
            padding: 15px;
            padding-bottom: 0;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }

            .account-left .tip p {
                text-align: right;
            }

                .account-left .tip p a {
                    margin-left: 10px;
                    color: #CC6600;
                }

                    .account-left .tip p a:hover {
                        color: #EA7E00;
                    }

            .account-left .tip .arrow {
                width: 9px;
                height: 14px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -605px;
                left: -9px;
            }

            .account-left .tip .close {
                width: 9px;
                height: 9px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -621px;
                right: 8px;
                top: 8px;
                cursor: pointer;
            }

        .left-new {
            position: absolute;
            width: 20px;
            height: 14px;
            background: url("//js.tuandai.com/images/member/left-new.gif") 0 0 no-repeat;
            right: 24px;
            top: 4px;
        }


        .ny .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }

        .ny .tip {
            width: 446px;
            position: relative;
            background: #fef8e0;
            padding: 10px;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }

            .ny .tip p {
                text-align: right;
            }


            .ny .tip .arrow {
                width: 9px;
                height: 14px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -605px;
                left: -9px;
            }

            .ny .tip .close {
                width: 9px;
                height: 9px;
                display: block;
                position: absolute;
                background: url("//js.tuandai.com/images/member/icon.png?v=20150808001") 0 -621px;
                right: 8px;
                top: 8px;
                cursor: pointer;
            }
            .account-left .red-circle{ width: 7px;height: 7px;position: absolute;border-radius: 50%;background: red;display: block;     right: 35px; top: 9px;  }
    </style>
<link href="${pageContext.request.contextPath }/css/css1/account-public_002.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/css1/account_invest.css" rel="stylesheet" type="text/css">
<style type="text/css">
        .account_paytotal {
            width: 800px;
            height: 80px;
            overflow: hidden;
            padding-top: 0px;
        }

            .account_paytotal dl {
                float: left;
                height: 70px;
                padding-top: 8px;
                padding-bottom: 8px;
                border-right: #e1e1e1 solid 1px;
            }

        .payBox1 {
            width: 240px;
        }

        .payBox4 {
            width: 370px;
            padding-left: 46px;
            border-right: none !important;
            border-left: none;
        }

        .account_paytime {
            width: 800px;
            height: 48px;
            float: none;
        }

            .account_paytime dd {
                float: left;
                line-height: 20px;
                padding: 4px 10px;
                height: 40px;
                margin-right: 8px;
                font-size: 14px;
                color: #666;
                cursor: pointer;
                border-radius: 3px;
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
            }

        .account_paycustom {
            width: 800px;
            height: 24px;
            margin: 0px auto;
            float: none;
        }

            .account_paycustom dt {
                float: left;
                font-size: 14px;
                width: 90px;
                height: 24px;
                line-height: 24px;
                text-align: right;
                margin-right: 5px;
            }

            .account_paycustom dd {
                float: left;
                line-height: 24px;
                height: 24px;
                margin-right: 8px;
                font-size: 14px;
                color: #666;
                margin-left: 0px;
            }

        .pagination {
            display: inline-block;
            width: auto;
        }
    </style>
<style type="text/css">img[src="https://infoimage.tuandai.com/ad/1502357148516.png?2017-08-10T17:25:48"]
{display:none !important;}</style><link href="${pageContext.request.contextPath }/css/css1/WdatePicker.css" rel="stylesheet" type="text/css"></head>
<body>
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl">
<div class="w1200 h40 auto g6">
<div class="right-side  r inline-block-debug">
<div class="inline-block-debug c-poi-a">
<a href="${pageContext.request.contextPath }/TuanDaiHome" class="red mr15"><i class="icon dib hous-icon"></i>前往团贷网</a>
</div>
<div class="inline-block-debug c-poi-a" id=""><span class="reg" style="color:#303030">欢迎您，</span>
<a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp" rel="nofollow" class="reg">${users.nickname }</a><span>|</span><a href="javascript:logout();">退出</a><span>|</span></div>
<a rel="nofollow" href="http://info.tdw.cn/help/index.html" target="_blank">帮助中心</a><span>|</span>
<a href="#" target="_blank">社区</a><span>|</span>
<div class="inline-block-debug rel app-ewm-box">
<a rel="nofollow" class="app  icon  mr10  inline-block-debug">&nbsp;</a>
&nbsp;
<div class="app-ewm   pt20 abs z5" style="display: none">
<i class="arrow icon abs db zx2"></i>
</div>
</div>
</div>
<div class="left-side">
<i class="icon dib phone vm  lh0">&nbsp;</i><span class="ml5">客服热线：1010-1218（9:00～22:00）</span>
</div>
</div>
</div>
<div class="nav-w bgfff">
<div class="nav-box auto w1200 fix">
<div class="r rel tc  slid z3" style="display: none">
<dl class="abs i-b-d vt about-us r0" id=""><dt>
	<a href="${pageContext.request.contextPath }/account">
		<i class="account-icon i-b-d icon vm"></i>我的账户<i class="icon arrow i-b-d vm"></i></a>
</dt><dd><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">立即充值</a></dd>
<dd><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
<dd><a href="${pageContext.request.contextPath }/account_weFTBAll.jsp">智能理财</a></dd>
<dd><a href="${pageContext.request.contextPath }/account_loaninbid.jsp">散标投资</a></dd>
<dd><a href="${pageContext.request.contextPath }/account_loanReturnPlanList.jsp">回款计划</a>
	
</dd><dd><a href="${pageContext.request.contextPath }/AutoTenderList.jsp">自动投标</a></dd>
<dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
<dd><a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a></dd>
<dd><a href="javascript:logout();">退出</a></dd></dl>
</div>
<div class="nav r">
<ul>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a href="${pageContext.request.contextPath }/lntellgent">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
<dd>
<a href="${pageContext.request.contextPath }/lntellgent" target="_blank">智能投资</a>
</dd>
<dd>
<a href="${pageContext.request.contextPath }/LooseInvestment_list" target="_blank">散标专区</a>
</dd>
</dl>
</div>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a rel="nofollow" href="${pageContext.request.contextPath }/platform">信息披露<i class="icon arrow i-b-d vm"></i></a></dt>
 	<dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/riskcontroller">安全保障</a>
         </dd>
         <dd style="display: none;"> 
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/index4" target="_blank">担保专款</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/report">运营报表</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/operationaldata">平台数据</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href=" ${pageContext.request.contextPath }/regulatory">监管法规</a>
         </dd>
         <dd style="display: none;">
                <a rel="nofollow" href="${pageContext.request.contextPath }/platform">关于我们</a>
         </dd>                               
</dl>
</div>
</li>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/borrow_money.jsp">我要借款</a>
</li>
</ul>
</div>
<a class="logo dib l" href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">
<img src="${pageContext.request.contextPath }/static/img1/logo.png" alt="团贷网"></a>
<div class="index-bd" id="base_index_box">
<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
<li><a>
<img src="${pageContext.request.contextPath }/static/img1/1502357148516.png" alt="网贷" style="display: none !important;" hidden=""></a>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="tool">
<div class="t-box rel" onclick="javascript:void(0);">
<div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
<i class="t6"></i>
<a href="javascript:;">风险提示</a>
</div>
<div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');"><i class="t1"></i><a href="javascript:;">在线客服</a></div>
<div class=" t-box" onclick="javascript:window.open('http://info.tuandai.com/help/index.html');"><i class="t2"></i><a href="javascript:;">帮助中心</a></div>
<div class=" t-box" onclick="javascript:window.open('http://news.tdw.cn/tool/int_fina.aspx');"><i class="t3"></i><a class="" href="javascript:;">计算工具</a></div>
<div class="t-box to-top" onclick="javascript:;" style="display: none"><i class="t5"></i><a href="javascript:;" class="pt10">回到顶部</a></div>
</div>
<div class="account-container clearfloat">
<form method="post" action="./account_borrowReturnPlanList.aspx" id="form1" style="*margin-top:10px">
<div class="aspNetHidden">
<input name="__VIEWSTATE" id="__VIEWSTATE" value="jHbkwP++K4DoJnwzU9ZR5eQ9whMhAmIAA4LqRujG4ux6nyGgxpHQcd/t99wCA3bGFB+lLxzNg3J0rJvYZFYrmnhJRWKLXW4X80mPwIxMxPUVIq5o6RFy6QmCMug=" type="hidden">
</div>
<div class="aspNetHidden">
<input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2629B52E" type="hidden">
</div>
<div class="account-leftBox clearfloat">
<div class="account-left">
<div class="home border-bottom-0">
<p><i class="dt-1"></i><a href="${pageContext.request.contextPath }/jsp/member/account_default.jsp">账户首页</a></p>
</div>
<dl>
<dt><i class="dt-2"></i>我的资金 <i class="arrow"></i></dt>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneylist.jsp">资金统计</a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_moneyhistory.jsp">交易记录</a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/RechargeNew2016.jsp">充值</a></dd>
<dd id=""><a target="_blank" href="${pageContext.request.contextPath }/jsp/member/drawmoney.jsp" onclick="return left_CheckAllowDraw();">提现</a></dd>
</dl>
<dl>
<dt><i class="dt-3"></i>P2P<i class="arrow"></i></dt>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/AutoTenderList.jsp">自动投标</a>
</dd>
<dd id=""> <div class="left-new"></div><a href="${pageContext.request.contextPath }/jsp/member/account_weFTBAll.jsp">智能投资</a>
</dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loaninbid.jsp">散标投资</a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_loanReturnPlanList.jsp">回款计划</a></dd>
</dl>
<dl>
<dt><i class="dt-4"></i>我的借款<i class="arrow"></i></dt>
<dd id=""><a href="${pageContext.request.contextPath }/loadPersonShenHe">借入人审核</a></dd>
<dd id=""><a href="javascript:void(0)">资产标区</a></dd>
<%-- <dd id="menu_borrowMiniEdit"><a href="${pageContext.request.contextPath }/projectweibasic">资产标区</a></dd> --%>
<dd id="">
<a href="${pageContext.request.contextPath }/jsp/member/account_borrowInBid2.jsp">借款记录</a>
</dd>
<dd id="" class="currentMenu"><a href="${pageContext.request.contextPath }/jsp/member/account_borrowReturnPlanList.jsp">还款安排</a></dd>
</dl>
<dl>
<dt><i class="dt-5"></i>个人设置<i class="arrow"></i></dt>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_userdetailinfo.jsp">基本信息 </a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/Validat_eindex.html">安全中心</a></dd>
<dd id="">
<div class="left-new"></div>
<a href="${pageContext.request.contextPath }/account_touplevel.html" target="_blank">团贷会员</a></dd>
<dd id=""><a href="${pageContext.request.contextPath }/jsp/member/account_notice.jsp">消息中心</a></dd>
</dl>

</div>
</div>
<div class="account-rightBox clearfloat">
<div class="box-padding">
<div style="width: 800px; overflow: hidden;">
<dl class="account_paytime" style="float: left; width: 490px; margin-top: 5px;">
<%-- <dd class="payTime_now dd_Months" months="sevenday" style="margin-right: 1px;">未来一周<br>
￥0.00</dd> --%>
<dd class="payTime_now dd_Months" months="1" style="margin-right: 1px;">未来一月<br>
￥
<c:out value="${backnextOne }" default="0.00"></c:out>
</dd>
<dd class="dd_Months" months="3" style="margin-right: 1px;">未来三月<br>
￥
<c:out value="${backnextThree }" default="0.00"></c:out>
</dd>
<dd class="dd_Months" months="6" style="margin-right: 1px;">未来半年<br>
￥
<c:out value="${backnextSix }" default="0.00"></c:out>
</dd>
<dd class=" dd_Months" months="all" style="margin-right: 1px;">全部<br>
<span id="allMoney">￥
<c:out value="${mustMoney }" default="0.00"></c:out>
</span></dd>
</dl>
<dl class="account_paycustom" style="float: left; width: 305px;">
<dt class="font-999" style="width: 290px; text-align: left;">自定义查询：</dt>
<dd>								<!-- onclick="WdatePicker({ minDate: dateMiniSet })" -->
<input class="Wdate" id="start"  style="width: 90px;font-size:15px" type="text"></dd>
<dd>至</dd>
<dd>
<input class="Wdate" id="end"  style="width: 90px;font-size:15px" type="text"></dd>
<dd>
<a class="search_btn" href="javascript:void(0);" onclick="submit()" style="width: 50px;">查看</a></dd>
</dl>
</div>
<div class="account_paytotal" style="margin-top: 20px; height: 100px;">
<dl class="payBox1" style="width: 300px; height: 100px;">
<dt>待还款总额：</dt>
<dd><b>￥<span id="spnTotalAmount">
<c:out value="${mustMoney }" default="0.00"></c:out>
</span></b> 
<span id="spnTotalCount">
<c:out value="${mustNum }" default="0.00"></c:out>
</span>笔
</dd>
<dd style="line-height: 15px; color: #999">还本￥<span id="spnReturnAmount">
<c:out value="${mustLmoney }" default="0.00"></c:out>
</span> + 付息￥<span id="spnReturnInterest">
<c:out value="${mustIncom   }" default="0.00"></c:out>
</span></dd>
</dl>
<dl class="payBox4" style="height: 100px;">
<dt>最近还款日：</dt>
<dd id="Recently" style="line-height: 26px;">
<c:out value="${nextBackTime    }" default="暂无还款"></c:out>
</dd>
<dd style="line-height: 26px; display: none;" id="ddReturnAlert">
<div style="background-image: url('//js.tuandai.com/images/member/returnbg_returnList.png'); background-repeat: no-repeat; height: 26px; width: 340px; text-align: center;">
<span style="color: #ff6600; font-weight: 500; font-size: 13px;" id="spnReturnAlert">请于XX日 24:00前备好资金，XX日00:15扣款</span>
</div>
</dd>
</dl>
</div>
<div class="account_tableBox clearfloat">
<div class="account_table margin-top-20">
<table class="account_tableNR" width="" cellspacing="0" cellpadding="0" border="0" align="center">
<tbody id="tbody"><tr id="trhead" style="background-color: rgb(240, 240, 240);">
<th class="txt_center" align="left">还款日期
</th>
<th class="txt_center" align="left">扣款时间
</th>
<th class="txt_center a_low10" align="left">还款金额（本金+利息）
</th>
<th class="txt_center a_low03">操作
</th>
</tr>
</tbody>
<!-- 开通存管弹框  -->
<div id="layer" style=" position:fixed;width:100%;height:100%;display:none;left:0;top:0;z-index:900;background:#000; -moz-opacity: 0.3;opacity:.30;"></div>
<div id="divCun" style="display: none;position: fixed;left: 25%;top:18%; z-index: 1000; width:580px; height:380px;background-color: White;border-radius: 15px;" >
<i class="close icons close-x icon abs" id="delCun" style="top:15px; right: 19px; ">
<img src="${pageContext.request.contextPath }/static/img/shanchu.png"></i>
<img alt="" src="${pageContext.request.contextPath }/static/img/cunguan.png" style="width:580px; height:250px;border-radius: 15px 15px 0px 0px;">
<div style="margin-top: 20px; margin-left: 130px; margin-bottom: 20px; ">您尚未开通厦门银行资金存管账户，请先开通</div>
<div>
<a href="${pageContext.request.contextPath }/OpAccounts" style="display:block; margin-top: 30px; margin-left: 140px;margin-right:180px; height: 40px;background-color: #FFA019; color:White; font-size:17px; text-align: center;line-height: 40px;border-radius: 5px;">马&nbsp;&nbsp;上&nbsp;&nbsp;开&nbsp;&nbsp;通</a>
</div>
</table>
<div id="pager" style="text-align: center;">
</div>
</div>
</div>
</div>
</div>
</form>
<div id="dahei" style="display: none; height: 635px;"></div>
<div id="tooltip" class="tooltip"></div>
</div>


<div style="display: none;" class="dial-window xm-window passwordAlt">
<div class="title1 rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="">
<p class="p1">开启自动投标前，请您先进行以下授权：</p>
<p class="p2" id="mm_toubiao"><em></em>自动投标<span>（适用于设置自动投标的用户）</span></p>
<p class="p2" id="mm_zhaiquan"><em></em>自动购买债权<span>（适用于购买WE计划的用户）</span></p>
<p class="p2" id="mm_huankuan"><em></em>自动还款<span>（适用于有借款的用户）</span></p>
<p class="p2" id="mm_tixian"><em></em>自动提现<span>（适用于企业及业务相关用户）</span></p>
</div>
</div>
<div class="bottom">
<div class="btn-group">
<a target="_blank" id="btn_showquan" class="btn">立即开通</a>
</div>
</div>
</div>

<div class="xm-mask" style="display: none;"></div>
<div class="xiamen-pop" style="display: none;">
<div class="close"></div>
<div class="pop-tit">
<h3></h3>
<h4>团贷网联手厦门银行</h4>
<p>个人账户升级为厦门银行存管账户</p>
</div>

<!-- <div class="pop-body">
<p><span id="sp_open">您尚未开通厦门银行资金存管账户，请先开通</span><span id="sp_active" style="display:none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span></p>
<a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn">马上开通</a>
<a href="javascript:void(0);" target="_blank" id="aActived" class="btn">马上激活</a>
<a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn">绑定银行卡</a>
</div> -->
</div>
<div id="bankBindAlert" style="display: none; margin-left: -204px;" class="dial-window xm-window bankBindAlert">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align:center;">
<p class="p1">请您在新打开的页面完成<span id="sp_title"></span></p>
<p class="p2"><span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
</div>
</div>
<div class="bottom">
<div class="btn-group">
<a href="https://www.tuandai.com/member/account_default.aspx" id="remind_aa" class="btn"><span id="aa_title"></span></a>
</div>
<a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
</div>
</div>
<div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align:center;">
<div class="codexe" style="width:119px;height:124px;background:url(//js.tuandai.com/images/member/my_capital/codexe.png);position:absolute;top:36px;left:281px;z-index: 100;display: none;"></div>
<p><b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
<p>
1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323191&amp;site=qq&amp;menu=yes">2880761023</a>或<a class="a_qq a_code" style="background: url(//js.tuandai.com/images/member/my_capital/code20170426001.png);cursor: pointer;">2880761023</a>为好友。<br>
2、<span id="sp_2Content">QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00 13:30-18:00，周六日与法定节假日除外。</span><br>
3、资料提交后，平台及银行将会进行双重审核，一般时长为2天，审核通过后即可进行投资理财，届时会有短信通知。<br>
4、若已提交过资料给客服，则不需要重复提交，且可进行正常投资理财。
</p>
</div>
<div class="bottom">
<div class="btn-group">
<a id="hkBtn" href="javascript:;" class="btn">我知道了</a>
</div>
</div>
</div>
</div>
<div id="TheadAlert" style="display: none;" class="dial-window xm-window forgetPhone">
<div class="title rel" style="display:block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="">
<p class="p1"><span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span></p>
</div>
</div>
<div class="bottom">
<div id="btn_03" class="btn-group">
<a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
</div>
<div id="btn_04" class="count" style="display:none;">
<a class="td-btn-1 td-btn-1-or btn" href="${pageContext.request.contextPath }/Validat_eindex.html">我要修改预留手机号</a>
</div>
</div>
</div>
<div class="footer fix">
<div class="footer-content auto fix cl">
<div class="address fa f12 tc mt15">
2010-2017 版权所有 © 团贷网 <a href="#" target="_blank">粤ICP备12043601号-1</a> 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼 <br>
东莞团贷网互联网科技服务有限公司
</div>
</div>
</div>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="${pageContext.request.contextPath }/static/img1/loading.gif" alt="加载中">
</div>
<div id="dial-window-btns" class="btns tc">
<div class="inbid">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
</div>
<div class="g6" style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;" id="divTiQian">
</div>
</div>
</div>
<div id="diallayer" style="display: none;"></div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath }/js/js1/thirdlib.js"></script>
<script src="${pageContext.request.contextPath }/js/js1/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>
<script type="text/javascript">
        var IsOpenCGT = '1';//是否开通存管通 
        var IsOpenCgtTrans = '1';
        var backUrlClose = "";
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/userbank.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/project_dialog_cgt.js"></script>
<script src="${pageContext.request.contextPath }/js/js1/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account.js"></script>
<script src="${pageContext.request.contextPath }/js/js1/jquery.selectlist.js"></script>
<script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js1/cgt_common.js"></script>
<script type="text/javascript">
        var isEnterAutoInvestSetPage = getCookie("c2e065de" + "isEnterAutoInvestSetPage");//是否进入自动投标设置
        var isClosedYellowTip2 = getCookie("c2e065de" + "isClosedYellowTip");//手动点击关闭黄标签
        var isDefaultShowed = getCookie("c2e065de" + "_account_default");//是否首页显示
        var tuandaiw = getCookie("tuandaiw");
        $(function () {
            $(".a_code").mouseover(function() {
                $(".codexe").show();
            }).mouseout(function() {
                $(".codexe").hide();
            });
            
            try{
                getRandomValue();
            }catch(e){}
            $('#menu_autoTender').hover(function () {
                $('#YellowTips').fadeIn(150);
            },
                        function () {
                            $('#YellowTips').stop().fadeOut();
                        }
                        );
            $('#menu_myWePlan').hover(function () {
                $('#YellowTips2').fadeIn(150);
            },
                function () {
                    $('#YellowTips2').stop().fadeOut();
                }
            );           
            $("#menu_withdraw,#menu_recharge").click(function () {
                try {
                    getRandomValue();
                    if (IsOpenCGT == "1" && !checkIsOpen("chongzhi"))
                        return false;
                }
                catch (e) { }
            });

          /*   $("#menu_borrowMiniEdit").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("noshouquan"))
                        return false;
                }
                catch (e) { }
            }); */
            $("#menu_userservice").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen())
                        return false;
                }
                catch (e) { }
            });
            $("#menu_autoTender").click(function () {
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen("touzi"))
                        return false;
                }
                catch (e) { }
            });

            if (isEnterAutoInvestSetPage != null && isEnterAutoInvestSetPage != "") {
                isEnterAutoInvestSetPage = "1";
            }
            if (isClosedYellowTip2 != null && isClosedYellowTip2 != "") {
                isClosedYellowTip2 = "1";
            }
            if (isDefaultShowed != null && isDefaultShowed != "") {
                isDefaultShowed = "1";
            }

            if (isEnterAutoInvestSetPage != "1") {

                $('#menu_autoTender').find('em').addClass("emClass");
            }

            if (window.location.href.indexOf("member/account_default.aspx") < 0) {
                //不是主页,自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1") {
                    $('#YellowTips').fadeIn();
                }
            } else {
                //是主页,如果大黑不显示自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1" && isDefaultShowed != "1") {
                    $('#YellowTips').fadeIn();
                }
            }

            $('#menu_autoTender').find('.close').click(function () {
                $('#YellowTips').fadeOut();
                setCloseYellowTips();
            });
        });
        function setCloseYellowTips() {
            setCookie("c2e065de" + "isClosedYellowTip", "1");
        }
    </script>
<script type="text/javascript">

        var left_newTitle = '团贷网提醒您：';
        var left_IsValidateMobile = 'True';
        var left_IsValidateIdentity = 'False';
        var left_IsSetPayPwd = "False";
        var IsbindBankNo = 'False';
        var IsOpenCGT = '1';

        function left_CheckAllowDraw() {            
            if (IsOpenCGT != "1") {
                if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True' || left_IsSetPayPwd != 'True') {
                    userbank.tips(left_IsValidateMobile, left_IsValidateIdentity, left_IsSetPayPwd, "提现");
                    return false;
                }
                else if (IsbindBankNo == "False") {
                    $.ajax({
                        async: false,
                        type: "get",
                        url: '/member/Bank/CompleteBank.aspx?ReturnUrl=/member/Bank/drawmoney.aspx',
                        success: function (data) {
                            if ($("#bindBankWindows").length > 0) {
                                $("#bindBankWindows,#diallayer").remove();
                            }
                            $("body").append(data);
                        },
                        cache: false
                    });
                    return false;
                }
            }
            return true;
        }

        function left_CheckAllowBindBank() {
            if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
                userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
                return false;
            } 
            return true;
        }
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>
<script src="${pageContext.request.contextPath }/js/js1/WdatePicker.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/account.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/jquery.pagination.js"></script>
<!-- <script type="text/javascript">
        var pageindex = 1;
        var pagesize = 10;
        var Months = 'sevenday';
        var type = '1';
        var dateMiniSet = '2017/12/23 0:00:00';
        var dateMaxArray = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

        function GetData(one) {
            //            var dialog = art.dialog({
            //                time: 3,
            //                width: 300,
            //                content: "数据加载中..."
            //            });
            jQuery.ajax({
                async: false,
                type: "post",
                url: "./rebackMoneyPlans",
                dataType: "json",
                data: {
                    Cmd: "GetBorrowReturnPlan",
                    pagesize: pagesize,
                    pageindex: pageindex,
                    StratDate: $("#txt_start").val(),
                    EndDate: $("#txt_end").val(),
                    type: type,
                    Months: Months
                },
                success: function (jsonstr) {
                    //                    dialog.close();
                    $("#trhead").nextAll().remove();
                    var html = new Array();
                    var str = "";
                    if (jsonstr.result == "1") {
                        $("#spnTotalAmount").text(jsonstr.TotalAmount);
                        $("#spnReturnAmount").text(jsonstr.ReturnAmount);
                        $("#spnReturnInterest").text(jsonstr.ReturnInterest);
                        $("#spnTotalCount").text(jsonstr.ReturnTotalCount);

                        if (one == 1) {
                            if (!jsonstr.list[0].CycDate) {
                                $('#Recently').html("暂无还款");
                                $("#ddReturnAlert").hide();
                                return;
                            }
                            $("#ddReturnAlert").show();
                            $('#Recently').html(jsonstr.list[0].CycDate + " 00:15 / " + jsonstr.list[0].num + "笔 / 共<b>￥" + Convert2Digit(jsonstr.list[0].TotalAmount) + "</b>");
                            try {
                                var returnyear = parseInt(jsonstr.list[0].CycDate.substr(0, 4));
                                if ((returnyear % 4 == 0 && returnyear % 100 != 0) || returnyear % 400 == 0)//今年是闰年
                                {
                                    dateMaxArray[1] = 29;
                                }
                                var returnMonth = parseInt(jsonstr.list[0].AdvanceCycDate.substr(5, 2));
                                var month = parseInt(jsonstr.list[0].CycDate.substr(5, 2));
                                var returndate = parseInt(jsonstr.list[0].CycDate.substr(8, 2));
                                var forDate = parseInt(jsonstr.list[0].AdvanceCycDate.substr(8, 2));
                                $("#ddReturnAlert").show();
                                $("#spnReturnAlert").text("请于" + returnMonth + "月" + forDate + "日 24:00前备好资金，" + month + "月" + returndate + "日00:15扣款");
                            }
                            catch (e) { }
                        }

                        var temp1 = pagesize * (pageindex - 1);
                        var intserest = 0, total = 0, amount = 0;
                        for (var i = 0; i < jsonstr.list.length; i++) {
                            intserest = parseFloat(jsonstr.list[i].InterestAmout);
                            total = parseFloat(jsonstr.list[i].TotalAmount);
                            amount = parseFloat(Convert2Digit(total)) - parseFloat(Convert2Digit(intserest)) - parseFloat(Convert2Digit(jsonstr.list[i].TuandaiRedPacket));
                            //var tCycDate =new Date(jsonstr.list[i].CycDate).format("M月d日"); //new Date(jsonstr.list[i].CycDate);

                            str = "<tr>" +
                                "<td class=\"txt_center \">" + jsonstr.list[i].CycDate + "</td>" +
                                "<td class=\"txt_center \" style=\"color:red\">" + (jsonstr.list[i].CycDate.substring(5, 7) * 1) + "月" + (jsonstr.list[i].CycDate.substring(8, 10) * 1) + "日凌晨15分" + "</td>" +
                                "<td class=\"txt_center\"><span class=\"font-orange2\">￥" + Convert2Digit(total) + "</span>（" + Convert2Digit(amount) + "+" + Convert2Digit(intserest) + "）</td>" +
                                "<td class=\"txt_center\">";

                            
                            str += "<div class='list-item-1' style='width: 82px; z-index: 0;'><dl><dt><a href='account_borrowReturnPlanDetail.aspx?date=" + jsonstr.list[i].CycDate + "' class='dialogbtn'>查看详情</a><i class='arrow' style='margin-left: 4px;'></i></dt><dd><a href='javascript:earlyRepay(\"" + jsonstr.list[i].CycDate + "\");'>提前还款</a></dd></dl></div>";
                            
                            str += "</td></tr>";
                            html.push(str);
                        }

                        $(html.join("")).insertAfter('#trhead');
                        initBorrowReturnPlanPagin(jsonstr.totalcount);
                    }
                    else if (jsonstr.result == "3") {
                        if (one == 1) {
                            if (!jsonstr.list[0].CycDate) {
                                $('#Recently').html("暂无还款");
                                $("#ddReturnAlert").hide();
                                return;
                            }
                            $("#ddReturnAlert").show();
                            $('#Recently').html(jsonstr.list[0].CycDate + " 00:15 / " + jsonstr.list[0].num + "笔 / 共<b>￥" + Convert2Digit(jsonstr.list[0].TotalAmount) + "</b>");
                            try {
                                var returnyear = parseInt(jsonstr.list[0].CycDate.substr(0, 4));
                                if ((returnyear % 4 == 0 && returnyear % 100 != 0) || returnyear % 400 == 0)//今年是闰年
                                {
                                    dateMaxArray[1] = 29;
                                }
                                var returnMonth = parseInt(jsonstr.list[0].AdvanceCycDate.substr(5, 2));
                                var month = parseInt(jsonstr.list[0].CycDate.substr(5, 2));
                                var returndate = parseInt(jsonstr.list[0].CycDate.substr(8, 2));
                                var forDate = parseInt(jsonstr.list[0].AdvanceCycDate.substr(8, 2));
                                $("#ddReturnAlert").show();
                                $("#spnReturnAlert").text("请于" + returnMonth + "月" + forDate + "日 24:00前备好资金，" + month + "月" + returndate + "日00:15扣款");
                            }
                            catch (e) { }
                        }
                        $("#spnTotalAmount").text("0");
                        $("#spnReturnAmount").text("0");
                        $("#spnReturnInterest").text("0");
                        $("#spnTotalCount").text("0");
                        $("<tr><td colspan=\"4\" align=\"center\">没有数据...</td></tr>").insertAfter('#trhead');
                    }
                    else {
                        $("#spnTotalAmount").text("0");
                        $("#spnReturnAmount").text("0");
                        $("#spnReturnInterest").text("0");
                        $("#spnTotalCount").text("0");

                        if (one == 1) {
                            $('#Recently').html("暂无还款");
                            $("#ddReturnAlert").hide();
                        }
                        $("<tr><td colspan=\"4\" align=\"center\">没有数据...</td></tr>").insertAfter('#trhead');
                    }
                },
                error: function (a, b, c) {
                    $("#trhead").nextAll().remove();
                    $("<tr><td colspan=\"4\" align=\"center\">加载有误...</td></tr>").insertAfter('#trhead');
                }
            });
            $(".account_tableNR").find("tr").css("background-color", "#f0f0f0");
            $(".account_tableNR").find("tr:odd").css("background-color", "#fff");
        }

        function Convert2Digit(num) {
            if (num.toString().indexOf(".") > -1) {
                return num.toString().substring(0, num.toString().indexOf(".") + 3);
            }
            else
                return num.toFixed(2);
        }

        //所有列表
        function initBorrowReturnPlanPagin(recordCount) {
            var num_entries = recordCount;
            $("#pager").pagination(num_entries, {
                callback: getList,
                items_per_page: pagesize,
                num_display_entries: 5,
                current_page: parseInt(pageindex - 1),
                num_edge_entries: 2,
                link_to: "#trhead",
                prev_text: "上一页",
                next_text: "下一页",
                ellipse_text: "...",
                prev_show_always: true,
                next_show_always: true,
                renderer: "defaultRenderer",
                show_if_single_page: false,
                load_first_page: true
            });
        }
        function getList(page_index, jq) {
            if (parseInt(pageindex - 1) == page_index) {
                return false;
            }
            pageindex = (page_index + 1);
            GetData(2);
            return false;
        }
        $(function () {
            //GetLately();
            GetData(1);
            $(".dd_Months").click(function () {
                $('.dd_Months').removeClass('payTime_now');
                $(this).addClass('payTime_now');
                Months = $(this).attr('Months');
                type = '1';
                pageindex = 1;
                $("#txt_start").val("");
                $("#txt_end").val("");
                GetData(2);
            });
            $('.search_btn').click(function () {
                if ($("#txt_start").val() != "" || $("#txt_end").val() != "") {
                    $('.dd_Months').removeClass('payTime_now');
                }

                type = '2';
                pageindex = 1;
                GetData(2);
            });
        });

        //批量提前还款
        function earlyRepay(date) {
            var isLogin = isCookieLogin();
            if (isLogin == false) {
                window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
                return;
            }
            else {

                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return;
                    }
                } catch (e) { }

                if ($("#PreRepayMent").length > 0) {
                    $("#PreRepayMent,#diallayer2").remove();
                    $("#diallayer").css("display", "none");
                }
                $.ajax({
                    async: true,
                    type: "get",
                    url: '/member/project/account_earlyrepay.aspx?date=' + date + "&r=" + Math.random(),
                    success: function (data) {
                        $("body").append(data);
                        $("#diallayer2,#PreRepayMent").show();
                        $("#diallayer").css("display", "block");
                    },
                    error: function () {
                    },
                    cache: false
                });
            }
        }

    </script> -->
<script type="text/javascript">
        $("#borrowReturnPlan").addClass("currentMenu");
    </script>
<script type="text/javascript">
        (function () {
            $('.member-list').hover(function () {
                $(this).find('ul').addClass('ul-type').end().find('.mission').show();
                $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
            },function () {
                $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
            }
        )

        })();
        function stringToHex(s) { var r = ''; var hexes = new Array('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'); for (var i = 0; i < (s.length) ; i++) { r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf] } return r }
        function HexTostring(s) { var r = ''; for (var i = 0; i < s.length; i += 2) { var sxx = parseInt(s.substring(i,i + 2),16); r += String.fromCharCode(sxx) } return r }

        var nwbi_userName = "";
        var nwbi_sysNo = "TDW";
        var IsLogin = isCookieLogin();
        if (IsLogin) {
            var nickname = jaaulde.utils.cookies.get("TDWUserName");
            nwbi_userName = nickname;
        }
        (function () {
            var ta = document.createElement('script'); ta.type = 'text/javascript'; ta.async = true;
            ta.src = ((("https:") == document.location.protocol) ? "https://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta,s);
        })();

        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm,s);
        })();
    </script>
  
<script type="text/javascript">
        var pageindex = 1;
        var pagesize = 5;
        var Months = 'sevenday';
        var type = '1';
        var dateMiniSet = '2017/12/23 0:00:00';
        var dateMaxArray = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
   function GetData(one) {
            jQuery.ajax({
                async: false,
                type: "post",
                url: "./rebackMoneyPlans",
                dataType: "json",
                data: {
                    Cmd: "GetBorrowReturnPlan",
                    pagesize: pagesize,
                    pageindex: pageindex,
                    StratDate: $("#txt_start").val(),
                    EndDate: $("#txt_end").val(),
                    type: type,
                    Months: Months
                },
                success: function (jsonstr) {
                    $("#trhead").nextAll().remove();
                    var html = new Array();
                    var str = "";
                    if (jsonstr.result == "1") {
                        $("#spnTotalAmount").text(jsonstr.TotalAmount);
                        $("#spnReturnAmount").text(jsonstr.ReturnAmount);
                        $("#spnReturnInterest").text(jsonstr.ReturnInterest);
                        $("#spnTotalCount").text(jsonstr.ReturnTotalCount);
                         if (one == 1) {
                            if (!jsonstr.list[0].retime) {
                                $('#Recently').html("暂无还款");
                                $("#ddReturnAlert").hide();
                                return;
                            }
                            var dates = new Date(jsonstr.list[0].retime);
                            $("#ddReturnAlert").show();
                            $('#Recently').html(dates.getFullYear()+"-"+ dates.getMonth()+"-"+dates.getDay() + " 00:15 / " + jsonstr.ReturnTotalCount + "笔 / 共<b>￥" + Convert2Digit(jsonstr.TotalAmount) + "</b>");
                            try {
                                var returnyear = dates.getFullYear();
                                if ((returnyear % 4 == 0 && returnyear % 100 != 0) || returnyear % 400 == 0)//今年是闰年
                                {
                                    dateMaxArray[1] = 29;
                                }
                                var returnMonth = dates.getMonth();
                                var month = dates.getMonth();
                                var returndate = 15;
                                var forDate = dates.getDay();
                                $("#ddReturnAlert").show();
                                $("#spnReturnAlert").text("请于" + returnMonth + "月" + forDate + "日 24:00前备好资金，" + month + "月" + returndate + "日00:15扣款");
                            }
                            catch (e) { }
                        } 

                      //  var temp1 = pagesize * (pageindex - 1);
                        var intserest = 0, total = 0, amount = 0;
                  
                         for (var i = 0; i < jsonstr.list.length; i++) {
                            //intserest = parseFloat(jsonstr.list[i].InterestAmout);
                            total = parseFloat(jsonstr.list[i].retotal);
                            //amount = parseFloat(Convert2Digit(total)) - parseFloat(Convert2Digit(intserest)) - parseFloat(Convert2Digit(jsonstr.list[i].TuandaiRedPacket));
                            
							amount = parseFloat(Convert2Digit(total))
							var date = new Date(jsonstr.list[i].retime);
							
                            str = "<tr style=\"font-size:18px\">" +
                                "<td class=\"txt_center \">" + date.getFullYear()+"-"+ (date.getMonth()+1)+"-"+date.getDay() + "</td>" +
                                "<td class=\"txt_center \" style=\"color:red\">" + + date.getFullYear()+"-"+ date.getMonth()+"-"+ "15" + "日凌晨15分" + "</td>" +
                                "<td class=\"txt_center\"><span class=\"font-orange2\">￥" + Convert2Digit(total) + "</span></td>" +
                                "<td class=\"txt_center\">";
                            str += "<div class='list-item-1' style='width: 82px; z-index: 0;'><dl><dt><a href='account_borrowReturnPlanDetail.aspx?date=" + jsonstr.list[i].retime + "' class='dialogbtn'>查看详情</a><i class='arrow' style='margin-left: 4px;'></i></dt><dd><a href='javascript:earlyRepay(\"" + jsonstr.list[i].retime + "\");'>提前还款</a></dd></dl></div>"; 
                            str += "</td></tr>";
                            html.push(str);
                           
                        }
                       
                        $(html.join("")).insertAfter('#trhead');
                       initBorrowReturnPlanPagin(jsonstr.totalcount);
                    }
                     else if (jsonstr.result == "3") {
                        if (one == 1) {
                            if (!jsonstr.list[0].CycDate) {
                                $('#Recently').html("暂无还款");
                                $("#ddReturnAlert").hide();
                                return;
                            }
                            $("#ddReturnAlert").show();
                            $('#Recently').html(jsonstr.list[0].CycDate + " 00:15 / " + jsonstr.list[0].num + "笔 / 共<b>￥" + Convert2Digit(jsonstr.list[0].TotalAmount) + "</b>");
                            try {
                                var returnyear = parseInt(jsonstr.list[0].CycDate.substr(0, 4));
                                if ((returnyear % 4 == 0 && returnyear % 100 != 0) || returnyear % 400 == 0)//今年是闰年
                                {
                                    dateMaxArray[1] = 29;
                                }
                                var returnMonth = parseInt(jsonstr.list[0].AdvanceCycDate.substr(5, 2));
                                var month = parseInt(jsonstr.list[0].CycDate.substr(5, 2));
                                var returndate = parseInt(jsonstr.list[0].CycDate.substr(8, 2));
                                var forDate = parseInt(jsonstr.list[0].AdvanceCycDate.substr(8, 2));
                                $("#ddReturnAlert").show();
                                $("#spnReturnAlert").text("请于" + returnMonth + "月" + forDate + "日 24:00前备好资金，" + month + "月" + returndate + "日00:15扣款");
                            }
                            catch (e) { }
                        }
                        $("#spnTotalAmount").text("0");
                        $("#spnReturnAmount").text("0");
                        $("#spnReturnInterest").text("0");
                        $("#spnTotalCount").text("0");
                        $("<tr><td colspan=\"4\" align=\"center\">没有数据...</td></tr>").insertAfter('#trhead');
                    }
                    else {
                        $("#spnTotalAmount").text("0");
                        $("#spnReturnAmount").text("0");
                        $("#spnReturnInterest").text("0");
                        $("#spnTotalCount").text("0");

                        if (one == 1) {
                            $('#Recently').html("暂无还款");
                            $("#ddReturnAlert").hide();
                        }
                        $("<tr><td colspan=\"4\" align=\"center\">没有数据...</td></tr>").insertAfter('#trhead');
                    } 
                },
                error: function (a, b, c) {
                    $("#trhead").nextAll().remove();
                    $("<tr><td colspan=\"4\" align=\"center\">加载有误...</td></tr>").insertAfter('#trhead');
                }
            });
            $(".account_tableNR").find("tr").css("background-color", "#f0f0f0");
            $(".account_tableNR").find("tr:odd").css("background-color", "#fff");
        }

        function Convert2Digit(num) {
            if (num.toString().indexOf(".") > -1) {
                return num.toString().substring(0, num.toString().indexOf(".") + 3);
            }
            else
                return num.toFixed(2);
        }
       
        //所有列表
       function initBorrowReturnPlanPagin(recordCount) {
            var num_entries = recordCount;
            $("#pager").pagination(num_entries, {
                callback: getList,
                items_per_page: pagesize,
                num_display_entries: 5,
                current_page: parseInt(pageindex - 1),
                num_edge_entries: 2,
                link_to: "#trhead",
                prev_text: "上一页",
                next_text: "下一页",
                ellipse_text: "...",
                prev_show_always: true,
                next_show_always: true,
                renderer: "defaultRenderer",
                show_if_single_page: false,
                load_first_page: true
            });
        }
        function getList(page_index, jq) {
            if (parseInt(pageindex - 1) == page_index) {
                return false;
            }
            pageindex = (page_index + 1);
            GetData(2);
            return false;
        } 
      
        /*  $(function () {
            //GetLately();
            GetData(1);
                $(".dd_Months").click(function () {
                $('.dd_Months').removeClass('payTime_now');
                $(this).addClass('payTime_now');
                Months = $(this).attr('Months'); //获取查询的时间段
                type = '1';
                pageindex = 1;
                $("#txt_start").val("");
                $("#txt_end").val("");
                GetData(2); 
            }); 
             $('.search_btn').click(function () {
            	alert("fdsfd")
                if ($("#txt_start").val() != "" || $("#txt_end").val() != "") {
                    $('.dd_Months').removeClass('payTime_now');
                }

                type = '2';
                pageindex = 1;
                GetData(2);
            });  
        });  */

        //批量提前还款
         /* function earlyRepay(date) {
        	alert(isCookieLogin());
           //var isLogin = isCookieLogin();
           var isLogin = true;
             if (isLogin == false) {
                window.location.href = "/user/login.aspx?ReturnUrl=" + window.location.href;
                return;
            }
            else {
					alert("IsOpenCGT"+IsOpenCGT);
                try {
                    if (IsOpenCGT == "1" && !checkIsOpen()) {
                        return;
                    }
                } catch (e) { }

               if ($("#PreRepayMent").length > 0) {
                    $("#PreRepayMent,#diallayer2").remove();
                    $("#diallayer").css("display", "none");
                }
                $("#PreRepayMent,#diallayer2").remove();
                $("#diallayer").css("display", "none");
                $.ajax({
                    async: true,
                    type: "get",
                    url: '/member/project/account_earlyrepay.aspx?date=' + date + "&r=" + Math.random(),
                    success: function (data) {
                        $("body").append(data);
                        $("#diallayer2,#PreRepayMent").show();
                        $("#diallayer").css("display", "block");
                    },
                    error: function () {
                    },
                    cache: false
                });
            }
        }
   */
    </script>
<script type="text/javascript">
   
    $(function(){
        var ISopen;
        var basicInfos;
    	var ISopenSafeConf;
    	
    	$("#delCun").click(function(){
    		var divCun = document.getElementById('divCun');
			var popLayer = document.getElementById('layer');
			popLayer.style.display = "none";
			divCun.style.display = "none";
    	})
    	$("#menu_borrowMiniEdit").click(function(){
    		$.ajax({
                async: false,
                type: "post",
                url: "./quanxianconfirm",
                dataType: "json",
                success: function (data) {
                	ISopen = data.ISopen;
                	basicInfos = data.basicInfos;
                	ISopenSafeConf = data.ISopenSafeConf;
                	if(ISopen != "1"){
            			var divCun = document.getElementById('divCun');
            			var popLayer = document.getElementById('layer');
            			popLayer.style.width = document.body.scrollWidth + "px";
            			popLayer.style.height = document.body.scrollHeight + "px";
            			popLayer.style.display = "block";
            			divCun.style.display = "block";
            		}else{
            			if(basicInfos != "1"){
                			window.location.href="${pageContext.request.contextPath }/accountuserdetailinfo";
                		}else{
                			if(ISopenSafeConf != "1"){
                				window.location.href="${pageContext.request.contextPath }/validateindex";
                			}else{
                				window.location.href="${pageContext.request.contextPath }/projectweibasic";
                			}
                		}
            		}
                },
                error: function () {
                },
                cache: false
            });
    	});
    });
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js1/settdwcookie.js"></script>


<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"><img style="display: none;" src="%E5%9B%A2%E8%B4%B7%E7%BD%91-%20P2P%E7%90%86%E8%B4%A2%E3%80%81P2P%E7%BD%91%E8%B4%B7%E9%A6%96%E9%80%89%E7%BD%91%E7%AB%99,%E5%AE%89%E5%85%A8%E5%8F%AF%E9%9D%A0%E7%9A%84%E4%BA%92%E8%81%94%E7%BD%91%E9%87%91%E8%9E%8D%E5%B9%B3%E5%8F%B0%EF%BC%81%E8%BF%98%E6%AC%BE%E5%AE%89%E6%8E%92_files/SingleLogin.json"><img style="display: none;" src="%E5%9B%A2%E8%B4%B7%E7%BD%91-%20P2P%E7%90%86%E8%B4%A2%E3%80%81P2P%E7%BD%91%E8%B4%B7%E9%A6%96%E9%80%89%E7%BD%91%E7%AB%99,%E5%AE%89%E5%85%A8%E5%8F%AF%E9%9D%A0%E7%9A%84%E4%BA%92%E8%81%94%E7%BD%91%E9%87%91%E8%9E%8D%E5%B9%B3%E5%8F%B0%EF%BC%81%E8%BF%98%E6%AC%BE%E5%AE%89%E6%8E%92_files/SingleLogin.json"><div id="HUABAN_WIDGETS"><div class="HUABAN-f-button" style="display: none;">采集</div><style>#HUABAN_WIDGETS  {font-family: "helvetica neue",arial,sans-serif; color: #444; font-size: 14px;} #HUABAN_WIDGETS * {box-sizing: content-box;} #HUABAN_WIDGETS .HUABAN-main {position: fixed; left: 0; top: 0; width: 100%; height: 100%; background: #e5e5e5; background: rgba(229,229,229,.95); max-height: 100%; overflow: hidden; z-index: 9999999999999;} #HUABAN_WIDGETS a img {border: 0;} #HUABAN_WIDGETS .HUABAN-header {height: 50px; background: white; box-shadow: 0 0 4px rgba(0,0,0,.2); width: 100%; left: 0; top: 0; position: absolute;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-inner {margin: 0 auto; position: relative;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close {width: 60px; height: 50px; border-left: 1px solid #ddd; position: absolute; right: 0; top: 0; background: url(https://huaban.com/img/widgets/btn_close.png) 20px 14px no-repeat; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:hover {background-position: 20px -26px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-close:active {background-position: 20px -66px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-logo {display: block; position: absolute; top: 12px;} #HUABAN_WIDGETS .HUABAN-waterfall-holder {position: relative; overflow-y: auto; height: 100%;} #HUABAN_WIDGETS .HUABAN-waterfall {position: relative; margin-top: 50px;} #HUABAN_WIDGETS .HUABAN-waterfall .HUABAN-empty {position: absolute; left: 50%; top: 30px; height: 36px; line-height: 36px; width: 216px; text-align: left; margin-left: -128px; color: #777; background: url(https://huaban.com/img/widgets/icon_notice.png) 12px 8px no-repeat white; padding-left: 40px; font-size: 15px;} #HUABAN_WIDGETS .HUABAN-btn {display: inline-block; border-radius: 2px; font-size: 14px; padding: 0 12px; height: 30px; line-height: 30px; cursor: pointer; text-decoration: none; white-space: nowrap; -moz-user-select: none; -webkit-user-select: none; user-select: none; text-align: center; background: #D53939; color: white;} #HUABAN_WIDGETS .HUABAN-btn:hover {background: #E54646;} #HUABAN_WIDGETS .HUABAN-btn:active {background: #C52424;} #HUABAN_WIDGETS .HUABAN-wbtn {background: #EDEDED; color: #444;} #HUABAN_WIDGETS .HUABAN-wbtn:hover {background: #F2F2F2;} #HUABAN_WIDGETS .HUABAN-wbtn:active {background: #DDD;} #HUABAN_WIDGETS .HUABAN-f-button {position: absolute; display: none; z-index: 9999999999998; box-shadow: 0 0 0 2px rgba(255,255,255,.2); background: #aaa; background: rgba(0,0,0,.3); color: white; cursor: pointer; padding: 0 12px; height: 30px; line-height: 30px; border-radius: 2px; font-size: 14px} #HUABAN_WIDGETS .HUABAN-f-button:hover {background-color: #999; background-color: rgba(0,0,0,.5);} #HUABAN_WIDGETS .HUABAN-f-button:active {background-color: rgba(0,0,0,.6);} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -200px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:hover {background-position: -130px -200px;} #HUABAN_WIDGETS .HUABAN-red-normal-icon-button:active {background-position: -260px -200px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -150px no-repeat; box-shadow: none !important; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:hover {background-position: -130px -150px;} #HUABAN_WIDGETS .HUABAN-red-large-icon-button:active {background-position: -260px -150px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -250px no-repeat; box-shadow: none !important; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:hover {background-position: -130px -250px;} #HUABAN_WIDGETS .HUABAN-red-small-icon-button:active {background-position: -260px -250px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button {width: 36px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -500px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:hover {background-position: -130px -500px;} #HUABAN_WIDGETS .HUABAN-white-normal-icon-button:active {background-position: -260px -500px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button {width: 80px; height: 24px; border: 0px; line-height: 24px; padding-left: 24px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -450px no-repeat; box-shadow: none !important; color: #444; font-size: 14px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:hover {background-position: -130px -450px;} #HUABAN_WIDGETS .HUABAN-white-large-icon-button:active {background-position: -260px -450px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button {width: 30px; height: 21px; border: 0px; line-height: 21px; padding-left: 20px; padding-right: 0px; text-align: left; background: url(https://huaban.com/img/widgets/widget_icons.png) 0 -550px no-repeat; box-shadow: none !important; color: #444; font-size: 12px; background-color: transparent !important;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:hover {background-position: -130px -550px;} #HUABAN_WIDGETS .HUABAN-white-small-icon-button:active {background-position: -260px -550px;} #HUABAN_WIDGETS .HUABAN-cell {width: 236px; position: absolute; background: white; box-shadow: 0 1px 3px rgba(0,0,0,.3); transition: left .3s ease-in-out, top .3s linear;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder {overflow: hidden; position: relative;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-img-holder:hover img.HUABAN-cell-img {opacity: .8} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-video-icon {width: 72px; height: 62px; position: absolute; left: 50%; top: 50%; margin: -31px auto auto -36px; background: url(https://huaban.com/img/widgets/media_video.png) 0 0 no-repeat; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-video .HUABAN-video-icon {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over {display: none;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-over .HUABAN-btn {width: 60px; height: 34px; padding: 0; position: absolute; left: 50%; top: 50%; margin: -18px 0 0 -31px; line-height: 34px; box-shadow: 0 0 0 2px rgba(255,255,255,.2); font-size: 16px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder {height: 600px;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-long .HUABAN-img-holder:after {content: ""; display: block; position: absolute; width: 236px; height: 12px; left: 0; bottom: 0; background: url(https://huaban.com/img/widgets/long_image_shadow_2.png) repeat-x 4px top;} #HUABAN_WIDGETS .HUABAN-cell img {width: 236px; display: block;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-size {margin: 8px 16px; font-size: 12px; color: #999} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description {display: block; width: 202px; margin: 0 6px 6px; padding: 6px 10px; border: 0; resize: none; outline: 0; border: 1px solid transparent; line-height: 18px; font-size: 13px; overflow: hidden; word-wrap: break-word; background: url(https://huaban.com/img/widgets/icon_edit.png) 500px center no-repeat;} #HUABAN_WIDGETS .HUABAN-cell:hover .HUABAN-description {background-color: #fff9e0; background-position: right top;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-description:focus {background-color: #F9F9F9; background-position: 500px center;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-select-btn {width: 34px; height:34px; background: url(https://huaban.com/img/widgets/checkbox.png) 0 0 no-repeat; position: absolute; right: 5px; top: 5px; cursor: pointer;} #HUABAN_WIDGETS .HUABAN-cell .HUABAN-pinned-label {position: absolute; left: 0; top: 10px; height: 24px; line-height: 24px; padding: 0 10px; background: #CE0000; background: rgba(200, 0, 0, 0.9); color: white; font-size: 12px; display: none;} #HUABAN_WIDGETS .HUABAN-cell.HUABAN-pinned .HUABAN-pinned-label {display: block;} #HUABAN_WIDGETS .HUABAN-selected .HUABAN-select-btn {background-position: 0 -40px;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-img-holder {cursor: pointer;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-cell-pin-btn {display: none;} #HUABAN_WIDGETS .HUABAN-multi .HUABAN-cell .HUABAN-over {display: block;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons {position: absolute; top: 10px; left: 0; display: none;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-buttons .HUABAN-btn {margin-right: 10px;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti {display: none; height: 50px; line-height: 50px; text-align: center; font-size: 16px; color: #999; font-weight: bold;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti span {font-weight: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-multi-noti i {font-style: normal;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice {padding: 0 10px; height:30px; line-height: 30px; position: absolute; left: 50%; top: 10px; margin-left: -83px; background: #fff9e2; text-align: center;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-notice i {display: inline-block; width: 18px; height: 18px; background: url(https://huaban.com/img/widgets/icon_notice.png) 0 0 no-repeat; vertical-align: top; margin: 6px 6px 0 0;} #HUABAN_WIDGETS .HUABAN-switcher {height: 50px; width: 100px; position: relative;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-title {position: absolute; right: 75px; top: 13px; color: #999; white-space: nowrap; line-height: 24px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-title {visibility: visible; opacity: 1; -webkit-transition: opacity .2s linear; -webkit-transition-delay: .2s; transition: opacity .2s linear; transition-delay: .2s;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar {width: 40px; height: 24px; background: #EB595F; border-radius: 12px; color: white; position: absolute; right: 0; top: 13px; cursor: pointer; font-size: 14px; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar {width: 64px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar {background: #7DD100;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-round {width: 20px; height: 20px; background: white; border-radius: 50%; position: absolute; left: 2px; top: 2px; -webkit-transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15); transition: left .2s linear; box-shadow: 0px 0px 3px rgba(0,0,0,0.15);} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on .HUABAN-bar .HUABAN-round {left: 17px;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-round {left: 41px;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-1 {height: 24px; line-height: 24px; position: absolute; right:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-1 {right: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-1 {right: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher .HUABAN-bar .HUABAN-text-2 {height: 24px; line-height: 24px; position: absolute; left:17px; top: 0; opacity: 0; visibility: hidden; -webkit-transition: all .2s linear; transition: all .2s linear;} #HUABAN_WIDGETS .HUABAN-switcher:hover .HUABAN-bar .HUABAN-text-2 {left: 17px; opacity: 0; visibility: hidden;} #HUABAN_WIDGETS .HUABAN-switcher.HUABAN-on:hover .HUABAN-bar .HUABAN-text-2 {left: 9px; opacity: 1; visibility: visible;} #HUABAN_WIDGETS .HUABAN-header .HUABAN-switcher {position: absolute; right: 0; top: 0;} <!--[if IE 6]>#HUABAN_WIDGETS .HUABAN-red-normal-icon-button, .HUABAN-red-large-icon-button, .HUABAN-red-small-icon-button, .HUABAN-white-normal-icon-button, .HUABAN-white-large-icon-button, .HUABAN-white-small-icon-button { background-image: url({{imgBase}}/widget_icons_ie6.png) <![endif]--></style></div></body></html>