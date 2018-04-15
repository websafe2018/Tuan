<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
小型投资项目,短期投资,P2P投资理财平台就上【团贷网】
</title><script src="${pageContext.request.contextPath }/js/js/hm.js"></script>
<script src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
<script src="${pageContext.request.contextPath }/js/homepage/LooseInvestment.js"></script>
<script type="text/javascript" async="" src="${pageContext.request.contextPath }/js/js/webaccess.js"></script>
<script>var TINGYUN=function(t,e,n){function r(t){var e=!!t&&"length"in t&&t.length,n=typeof t;return"function"!==n&&("array"===n||0===e||"number"==typeof e&&e>0&&e-1 in t)}function i(t,e){var n,i=0;if(t)if(r(t))for(n=t.length;i<n&&!1!==e.call(t[i],t[i],i);i++);else for(i in t)if(!1===e.call(t[i],t[i],i))break;return t}function o(t){return function(e){return"Array"===t&&Array.isArray?Array.isArray(e):Object.prototype.toString.call(e)==="[object "+t+"]"}}function a(t){switch(typeof t){case"object":if(!t)return null;if(t instanceof Array)return i(t,function(e,n){t[n]=a(e)}),"["+t.join(",")+"]";if(t instanceof Date)return t.getTime().toString();var e="";return i(t,function(t,n){Rt(t)||(e+=a(n)+":"+a(t)+",")}),e&&(e=e.substr(0,e.length-1)),"{"+e+"}";case"string":return At+t.replace(Ot,"\\$1").replace(Dt,"\\n")+At;case"number":return isNaN(t)?null:t;case"boolean":return t;case"function":return a(t.toString());case"undefined":default:return'"undefined"'}}function u(t){return t&&qt(t)?It(t):t}function s(t,e,n,r){var i=function(){return Mt(t,e,i),n.apply(this,arguments)};return Bt(t,e,i,r)}function c(t,e){return Function.prototype.apply.apply(t,e)}function f(t,e){return function(){t.apply(e,arguments)}}function l(t){return Ht?Ht(t):t}function d(t){return arguments.length<2||!t?t:(i(Pt.call(arguments,1),function(e){i(e,function(e,n){t[n]=e})}),t)}function h(t,e){for(var n=-1,r=0,i=null==t?0:t.length,o=[];++n<i;){var a=t[n];e(a,n,t)&&(o[r++]=a)}return o}function v(t,e){return t?e?t.replace(/\{(\w+.?\w+)\}/g,function(t,n){return e[n]||""}).replace(/\{(\d+)\}/g,function(t,n){return e[n]||""}):t:""}function p(t){return setTimeout(t,0)}function m(){}function g(){return+new Date}function y(t){return function(){if(null!==t){var e=t;t=null,e.apply(this,arguments)}}}function _(t){return t?qt(t)?t.length:e.ArrayBuffer&&t instanceof ArrayBuffer?t.byteLength:e.Blob&&t instanceof Blob?t.size:t.length?t.length:0:0}function S(t){return Ut!==zt&&/^https/i.test(t&&t.protocol||Ut)?"https:":zt}function E(t,e,n,r){var o=null;return t&&e&&(o=S(r)+"//"+t+e,n&&(o+="?",i(n,function(t,e){var n=[l(e),"=",l(t),"&"];o+=n.join("")}),o+="__r="+g())),o}function w(){this.events={}}function b(t){return!(t in Kt)||Kt[t]}function T(t){var e=Xt.cookie.match(new RegExp("(^|;\\s*)("+t+")=([^;]*)"));return e?e[3]:null}function x(t,e,n){var r=t+"="+e;if(n){var i=new Date;i.setTime(i.getTime()+1e3*n),r+=";expires="+i.toGMTString()}Xt.cookie=r}function k(t,e,n){var r=Xt.createElement(t);try{for(var i in e)r[i]=e[i]}catch(a){var o="<"+t;for(var i in e)o+=" "+i+'="'+e[i]+'"';o+=">",n||(o+="</"+t+">"),r=Xt.createElement(o)}return r}function I(t,e,n,r){Rt(n)&&(r=n);var i=k("div",{style:_e}),o=k("iframe",{name:"ty_form",width:0,height:0,style:_e}),a=k("form",{style:_e,action:t,enctype:"application/x-www-form-urlencoded",method:"post",target:"ty_form"}),u=k("input",{name:"data",type:"hidden"},!0);u.value=Nt(e),a.appendChild(u),i.appendChild(o),i.appendChild(a),Xt.body.appendChild(i),a.submit(),o.onreadystatechange=function(){o.readyState!==fe&&4!==o.readyState||(r(null,ifm.innerHTML),Xt.body.removeChild(i))}}function N(t,e,n){if(t&&n&&Rt(n)){var r=t[e];if(!r||!r._wrapped){var i=n(r);return i&&(i._wrapped=!0),t[e]=i,i}}}function q(t){we&&t()}function C(t){return function(){we&&t.apply(this,arguments)}}function R(){we=!1}function L(){ke.on(oe,y(function(){t();var e=g();q(function(){be.load=e}),Re.loadEventEnd=e})),i([oe,ae,ue,se],function(t){Bt(e,t,function(e){q(function(){(be.e[t]||(be.e[t]=[])).push(g())}),ke.emit(t,e)})});var t=y(function(){var t=g();q(function(){be.end=t}),Re.domContentLoadedEventEnd=t,Xt.querySelectorAll&&(xe.resources=xe.resources||[],i(Xt.querySelectorAll("head>link,head>script"),function(t){var e;"LINK"==t.tagName?e=t.href:"SCRIPT"!=t.tagName||t.defer||t.async||(e=t.src),e&&xe.resources.push(e)}))});Bt(Xt,"DOMContentLoaded",t),Bt(Xt,ce,function(e){Xt.readyState===fe&&t()});var n=y(function(){Re.touch=g()});i(["scroll","click","keypress"],function(t){s(Xt,t,n)}),N(e,"requestAnimationFrame",function(t){return function(){if(!Re.firstPaint){var n=g();q(function(){be.an.count++,be.an.t=n}),Re.firstPaint=n,e.requestAnimationFrame=t}return t.apply(this,arguments)}})}function A(t){D(t,Ie)}function O(t){D(t,Ne)}function D(t,e){var n="ok";if(!t)return n=e.length?e.join("\n"):n;e.push(t)}function j(){if(Object.defineProperty){var t=e[pe];Object.defineProperty(e,pe,{get:function(){return qe++>0&&e.console&&console.warn("window.%s is deprecated, use window.%s instead.",pe,me),t}})}}function B(){var t=this;t.xhrs={},t.errs=[],w.call(t)}function M(t,e){this.flags=0,Rt(t.create)&&(this.create=t.create,this.flags|=Me),Rt(t.before)&&(this.before=t.before,this.flags|=He),Rt(t.after)&&(this.after=t.after,this.flags|=Pe),Rt(t.error)&&(this.error=t.error,this.flags|=Fe),this.data=e}function H(t,e){if(!ze){if(!Lt(t)||!t)throw new TypeError("callbacks arguments must be an object");return ze=new M(t,e)}}function P(t){var e=ze.data;if(0!=(ze.flags&Me)){var n=ze.create(ze.data);n!==undefined&&(e=n)}return function(){0!=(ze.flags&He)&&ze.before(this,e);try{var n=t.apply(this,arguments)}catch(r){throw 0!=(ze.flags&Fe)&&ze.error(e,r),r}return 0!=(ze.flags&Pe)&&ze.after(this,e),n}}function F(t){return!ze||ze.flags<=0?t:P(t)}function U(){function t(t){return function(e){return Rt(e)&&(arguments[0]=F(e)),t.apply?t.apply(this,arguments):c(t,[this,arguments])}}if(e.EventTarget){var n=e.EventTarget.prototype;N(n,"addEventListener",function(t){return function(e,n,r){return Rt(n)&&(n.__wrap=F(n),arguments[1]=n.__wrap),t.apply(this,arguments)}}),N(n,"removeEventListener",function(t){return function(e,n){return n.__wrap?t.call(this,e,n.__wrap):t.apply(this,arguments)}})}N(e,"setTimeout",t),N(e,"setInterval",t)}function z(){this.id=null,this.active=null,this._set=[]}function Y(){U();var t=new z;return t.id=H({create:function(){return t.active},before:function(e,n){n&&t.enter(n)},after:function(e,n){n&&t.exit(n)},error:function(e,n){if(e){try{n.moduleId=e.moduleId}catch(r){}t.exit(e)}}}),t}function G(t){Be&&console.warn(t||"Event key required!")}function X(t){t=t||{},this.key=t.key;var e=t.timeout||6e5;this.i=e?setTimeout(f(this.fail,this),e):null,this.status=1,this.remain=0,this.xhrs=[],this.s=g(),this.e=null,this.called=this.sent=!1}function J(t){try{return u(t)}catch(e){A(e&&e.message)}return null}function $(){return Re.domContentLoadedEventEnd||Re._end}function K(){return Re.loadEventEnd||Re._end}function V(t){function r(e){return t[e]>0?t[e]-a:0}var o={},a=n;if(t){q(function(){var t=be.t={};i(function(e,n){Rt(e)||(t[n]=e)})}),a=t.navigationStart,o={f:r(Ze),qs:r(tn),rs:r(en),re:r(nn),os:r(rn),oe:r(on),oi:r(an),oc:r(un),ls:r(sn),le:r(cn),tus:r(ln),tue:r(dn)};var u=r(hn),s=r(vn),c=r(pn),f=r(mn),l=r(gn),d=r(yn);d-l>0&&(o.cs=l,o.ce=d),s-u>0&&(o.ds=u,o.de=s),(f-c>0||f>0)&&(o.es=c,o.ee=f),0==o.le&&(o.ue=K()-a),Re._le=o.ue||o.le;var h,v;if(t.msFirstPaint)h=t.msFirstPaint,q(function(){be.fp="m_"+h});else if((v=e.chrome)&&v.loadTimes){var p=v.loadTimes();p&&p.firstPaintTime&&(h=1e3*p.firstPaintTime),q(function(){be.fp="c_"+p.firstPaintTime})}else Re.firstPaint&&(h=Re.firstPaint,q(function(){be.fp=h}));h&&(o.fp=Math.round(h-a),Re.fp=o.fp),t[_n]&&(o.sl=r(_n))}else o={t:a,os:$()-a,ls:K()-a};return o.je=Re.errs&&Re.errs.length||0,Re.ct&&(o.ct=Re.ct-a),Re.touch&&(o.fi=Re.touch-a),o}function Q(t){var e={tr:!1,tt:l(Xt.title),charset:Xt.characterSet};Te.resources&&d(e,Te.resources),q(function(){e.debug=be}),R();var n=Re.errs;i(n,function(t,e){n[e]=t.toObject()}),e.err=n;var r="getEntriesByType";return t[r]?(e.tr=!0,e.res=[],i(t[r]("resource"),function(t){function n(e){var n=t[e];return n>0?n:0}var r=t.initiatorType,i=t.name,o={o:n("startTime"),rt:r,n:i,f:n(Ze),ds:n(hn),de:n(vn),cs:n(gn),ce:n(yn),sl:n(_n),qs:n(tn),rs:n(en),re:n(nn),ts:t.transferSize||0,es:t.encodedBodySize||0};if("xmlhttprequest"===r){var a=W(i);a&&(o.aid=a.id,o.atd=a.trId,o.an=a.action,o.aq=a.time&&a.time.qu,o.as=a.time&&a.time.duration)}e.res.push(o)})):O(v(Oe,[r])),e}function W(t){var e;return i(Re.xhrs,function(n,r){if(r&&r.indexOf(t)>-1)return e=n,!1}),e}function Z(t){var e={};return t&&(e.id=t.id,e.a=t.a,e.q=t.q,e.tid=t.tid,e.n=t.n),e}function tt(t){if(!t.agent){var n=e._ty_rum;if(n&&n.agent)t.agent=n.agent;else{var r=T("TINGYUN_DATA");if(r){try{t.agent=J(decodeURIComponent(r))}catch(i){A(i&&i.message)}x("TINGYUN_DATA","",-1e3)}}}return t.agent}function et(t){var e=0,n=t.timing;return n?t.getEntriesByName&&(e=n.domLoading,i(xe.resources,function(r){var i=t.getEntriesByName(r);if(1==i.length){var o=i[0].responseEnd+n.navigationStart;o>e&&(e=o)}}),e-=n.navigationStart):O("fp=0"),q(function(){be._fp=e}),Math.round(e)}function nt(t,n,r,o){var a=r||0,u=Te.firstScreenResources;if(u&&u.length&&t.getEntriesByName)return i(u,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0].responseEnd;r>a&&(a=r)}}),o.fs_s=1,Math.round(a);if(!Xt.createElement("img").getBoundingClientRect)return q(function(){be.fs=a}),a;if(t.getEntriesByName){var s=e.innerHeight,c=[];i(Xt.querySelectorAll("img"),function(t){!it(t)&&""!=t.src&&rt(t)<s&&c.push(t.src)});var f=(n.loadEventEnd||Re.loadEventEnd)-n.navigationStart;i(c,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0],i=r.responseEnd;r.fetchStart<=f&&i>a&&(a=i)}})}return Math.round(a)}function rt(t){var n;if("undefined"==typeof t.getBoundingClientRect)return undefined;n=t.getBoundingClientRect();var r=e.pageYOffset;return n.top+(0===r?0:r||Xt.scrollTop||0)-(Xt.clientTop||0)}function it(t){var n="none";if(e.getComputedStyle){var r=t.ownerDocument.defaultView;r&&r.opener||(r=e),n=r.getComputedStyle(t).display}else t.currentStyle&&(n=t.currentStyle.display);return n&&"none"==n}function ot(t){var e=n,r=0;return t&&(e=t.navigationStart||e,r=t.domContentLoadedEventEnd||t.domInteractive||t.domLoading||r),(r=Re.domContentLoadedEventEnd||r||Re._end)-e}function at(t){if(t){var e=t.fetchStart;if(e)return e-t.navigationStart}return undefined}function ut(t){return function(e,n){var r=this;if(!r[ye]){var i=r._ty_rum={};i.method=e,i.url=n;var o=Ge.get("event");o&&(i.key=o.key,o.remain++)}return t.apply?t.apply(r,arguments):c(t,[r,arguments])}}function st(t){return function(e){var n=this;if(!n[ye]){var r=n._ty_rum;r&&(r.start=g(),r.reqSize=_(e)),ct(n),n.setRequestHeader&&Kt.id&&r&&In(r.url)&&(r.r=g()%1e9,n.setRequestHeader("X-Tingyun-Id",Kt.id+";r="+r.r))}return t.apply?t.apply(n,arguments):c(t,[n,arguments])}}function ct(t){function e(e){t._ty_rum.errorCode=e}Bt(t,kn,function(){t._ty_rum.start=g()}),i(xn,function(n,r){Bt(t,r,function(){e(n)})}),Bt(t,ce,F(function(){lt(t)})),p(function(){ft(t)})}function ft(t){N(t,le+ce,function(e){return function(){var n;if(Rt(e)){var r=t._ty_rum;if(r&&4==t.readyState)var i=g();n=e.apply(this,arguments),r&&4==t.readyState&&(r.cbTime=g()-i)}return n}})}function lt(t){var e=t._ty_rum;if(e&&(ft(t),e.end=g(),e.readyState=t.readyState,4==t.readyState)){e.status=t.status,e.resSize=dt(t);var n=Ge.get("event");p(function(){var r=ht(e,t);n&&n.key==e.key&&(n.xhrs.push(r),0==--n.remain&&n._end()),Re.xhrs&&(bn(e),Re.xhrs[e.url]=r),Tn.push(r)})}}function dt(t){var e=0;if(""==t.responseType||"text"==t.responseType)e=_(t.responseText);else if(t.response)e=_(t.response);else try{e=_(t.responseText)}catch(n){}return e}function ht(t,e){if(t){var n=t.status,r={req:t.method+" "+t.url,start:t.start,du:n>0?t.end-t.start:0,cb:t.cbTime||0,status:n,err:t.errorCode?t.errorCode:0,rec:t.resSize,send:t.reqSize};if(t.r){var i=pt(e,t);i&&(r.s_id=i.id,r.s_name=i.action,i.time&&(r.s_du=i.time.duration,r.s_qu=i.time.qu),r.t_id=i.trId)}return r}}function vt(t,e){if(t&&t.getResponseHeader)return t.getResponseHeader(e)}function pt(t,e){var n=J(vt(t,"X-Tingyun-Tx-Data"));return n&&n.r&&mt(n.r)===mt(e.r)?n:null}function mt(t){return t+""}function gt(){return setInterval(function(){if(Tn&&Tn.length){var t=[];i(Tn,function(e){t.push(e)}),Re.emit("send","/xhr1",null,{xhr:t},function(){Tn=h(Tn,function(e){return t.indexOf(e)<0})})}},En)}function yt(){var t=Jt&&Jt.prototype;return t?(N(t,"open",ut),N(t,"send",st)):Jt&&(e.XMLHttpRequest=function(){var t=new Jt;return N(t,"open",ut),N(t,"send",st),t}),gt()}function _t(t){this.limit=t,this.reset()}function St(t,e,n,r){return String(t)+String(e)+String(n)+String(r)}function Et(t,e,n,r,i,o,a){var u=this;u.id=t,u.time=g(),u.msg=e,u.lineno=r,u.colno=i,u.filename=n,u.count=1,u.stack=o&&o.stack||"",u.module=a,u.fix();var s=Rn[t];u.ep=s?0:1,Rn[t]=!0}function wt(t){var e=function(t){var e=[];return i(t,function(t){e.push(t.toObject())}),e}(Cn.c);if(!e||!e.length)return null;Re.emit("send","/err1",{fu:qn||qn++,os:parseInt((g()-(xe.pfStart||n))/1e3)},{datas:e},f(Cn.reset,Cn))}function bt(t,e,n,r,o){if(e||!Wt){var a=!1;if(i($t.domains,function(t){if(a=t.test(e))return!1}),!a){var u=o&&o.moduleId,s=St(t,n,r,u),c=Cn.get(s);c?c.increase():(c=new Et(s,t,e,n,r,o,u),Cn.add(s,c),Re.errs&&Re.errs.push(c))}}}function Tt(){var t=e.onerror;e.onerror=function(e,n,r,i,o){if(bt(e,n,r,i,o),Rt(t))return t.apply(this,arguments)},e.onerror._ty=!0}function xt(){var t=e.onerror;t&&t._ty||Tt()}function kt(){var t=Ft();return t?Tt():Bt(e,ie,function(t){var n,r,i,o,a;g();(t instanceof e.Event||e.ErrorEvent&&t instanceof e.ErrorEvent)&&(n=t.message||t.error&&(t.error.message||t.error.constructor.name)||"",r=t.lineno||0,i=t.colno||0,(o=t.filename||t.error&&t.error.filename||t.target&&t.target.baseURI||"")==Xt.URL&&(o="#"),a=t.error),bt(n,o,r,i,a)}),ke.on([oe,ae,ue,se],function(t){wt()}).on(oe,function(){t&&p(xt)}),setInterval(wt,Nn)}var It,Nt,qt=o("String"),Ct=o("Array"),Rt=o("Function"),Lt=o("Object"),At='"',Ot=/([\"\\])/g,Dt=/\n/g,jt=e.JSON;jt&&jt.parse&&jt.stringify?(It=function(t){return JSON.parse(t)},Nt=function(t){return JSON.stringify(t)}):(It=function(t){return new Function("return "+t)()},Nt=a);var Bt,Mt;e.addEventListener?(Bt=function(t,e,n,r){return t.addEventListener(e,n,r)},Mt=function(t,e,n){return t.removeEventListener(e,n)}):(Bt=function(t,e,n){return t.attachEvent("on"+e,n)},Mt=function(t,e,n){return t.detachEvent("on"+e,n)});var Ht=e.encodeURIComponent,Pt=[].slice,Ft=new Function("return!+[1,]"),Ut=e.location.protocol,zt="http:",Yt=function(){function t(t){return t<0?NaN:t<=30?0|Math.random()*(1<<t):t<=53?(0|Math.random()*(1<<30))+(0|Math.random()*(1<<t-30))*(1<<30):NaN}function e(t,e){for(var n=t.toString(16),r=e-n.length,i="0";r>0;r>>>=1,i+=i)1&r&&(n=i+n);return n}return function(){return e(t(32),8)+"-"+e(t(16),4)+"-"+e(16384|t(12),4)+"-"+e(32768|t(14),4)+"-"+e(t(48),12)}}();w.prototype={on:function(t,e){var n=this;return qt(t)?(n.events[t]||(n.events[t]=[])).push(e):Ct(t)&&i(t,function(t){n.on(t,e)}),n},off:function(t,e){var n=arguments.length,r=this;if(0===n)return r.events={},r;var i=r.events[t];if(!i)return r;if(1===n)return r.events[t]=null,r;for(var o=i.length;o--;)if(i[o]===e){i.splice(o,1);break}return r},emit:function(t){var e=[].slice.call(arguments,1),n=this.events[t];return n&&i(n,function(t){return t.apply(this,e)}),this},unshift:function(){var t=this;return(t.events[event]||(t.events[event]=[])).unshift(fn),t}};var Gt=e.Error,Xt=e.document,Jt=e.XMLHttpRequest,$t={};t($t);var Kt=$t.server||{};Kt=d({fp_threshold:2e3,fs_threshold:4e3,dr_threshold:4e3},Kt);var Vt,Qt,Wt=b("ignore_err"),Zt=b("debug"),te=e.location,ee=e.navigator,ne=e.HTMLElement;({localStorage:function(){try{var t=Yt();return e.localStorage.setItem(t,t),e.localStorage.removeItem(t),!0}catch(n){return!1}}()}).localStorage?(Vt=function(t){return e.localStorage.getItem(t)},Qt=function(t,n){return e.localStorage.setItem(t,n),n}):(Vt=T,Qt=x);var re,ie="error",oe="load",ae="unload",ue="beforeunload",se="pagehide",ce="readystatechange",fe="complete",le="on",de="TY_DISTINCT_ID",he="TY_SESSION_ID",ve=86400,pe="_ty_rum",me="TINGYUN",ge=2,ye="__ign",_e="display:none",Se="POST",Ee=function(t,e){e=e||m;var n=new Image;Bt(n,ce,function(){"loaded"!=n.readyState&&4!=n.readyState||e(null)},!1),Bt(n,oe,function(){e(null)},!1),Bt(n,ie,function(){e(ie)},!1),n.src=t};e.XDomainRequest?re=function(t,e,n,r){Rt(n)&&(r=n);var i=new XDomainRequest;i.open(Se,t),i.onload=function(){r(null,i.responseText)},i.onerror=function(t){r(t)},i.send(Nt(e))}:Ft()?re=I:ee.sendBeacon?Ee=re=function(t,e,n,r){Rt(n)&&(r=n,n=null),ee.sendBeacon(t,Nt(e))&&r&&r()}:re=function(t,e,n,r){Rt(n)&&(r=n,n=null);var i=y(r),o=new Jt;o[ye]=!0,o.overrideMimeType&&o.overrideMimeType("text/html"),o.onreadystatechange=function(){4==o.readyState&&200==o.status&&i(null,o.responseText)},o.onerror=i,e=Nt(e);try{o.open(Se,t,!0)}catch(u){return I(t,e,i)}for(var a in n)o.setRequestHeader(a,n[a]);o.send(e)};var we=Zt,be={start:n,e:{},an:{count:0},visible:[]},Te={},xe={};!function(){if(Zt){var t,e;"undefined"!=typeof Xt.hidden?(t="hidden",e="visibilitychange"):"undefined"!=typeof Xt.msHidden?(t="msHidden",e="msvisibilitychange"):"undefined"!=typeof Xt.webkitHidden&&(t="webkitHidden",e="webkitvisibilitychange"),"undefined"==typeof Xt.addEventListener||"undefined"==typeof Xt[t]||Bt(Xt,e,C(function(){be.visible.push([Xt[t],g()])}))}}();var ke=new w,Ie=[],Ne=[],qe=0,Ce=B.prototype;Ce.start=function(){if(!Kt.key)return A("missing config, agent disabled!"),!1;var t=e[pe]||e[me];return t&&t.server?(A("already loaded!"),!1):(j(),L(),this)},d(Ce,w.prototype);var Re=new B;Re.on("send",function(t,e,n,r){var i=E(Kt.beacon,t,d({},Le,e||{}));switch(r=r||m,t){case"/pf":n?re(i,n,function(){Re.xhrs=Re.errs=null,r()}):Ee(i,r);break;default:re(i,n,r)}});var Le={pvid:Yt(),ref:Xt.URL,referrer:Xt.referrer,key:Kt.key,v:"1.7.0",av:"1.7.0",did:function(){var t=Vt(de);return t||Qt(de,Yt(),ve)}(),sid:function(){var t=T(he);return t||(t=Yt(),x(he,t)),t}()},Ae=ne?function(t){return t instanceof ne}:function(t){t&&"object"==typeof t&&1===t.nodeType&&qt(t.nodeName)},Oe="{0} not support",De="illegal argument",je={},Be="undefined"!=typeof e.console,Me=1,He=2,Pe=4,Fe=8,Ue=M.prototype;Ue.create=Ue.before=Ue.after=Ue.error=null;var ze;z.prototype={createContext:function(){return Object.create?Object.create(this.active):Y(this.active)},get:function(t){if(this.active)return this.active[t]},set:function(t,e){if(this.active)return this.active[t]=e},enter:function(t){if(!t)throw new Gt("context required!");this._set.push(this.active),this.active=t},exit:function(t){if(!t)throw new Gt("context required!");if(t!==this.active){var e=this._set.lastIndexOf(t);if(e<0)throw new Gt("context not currently entered!");this._set.splice(e,1)}else this.active=this._set.pop()},bind:function(t,e){e||(e=this.active?this.active:this.createContext());var n=this;return function(){n.enter(e);try{return t.apply(this,arguments)}catch(r){try{r.moduleId=e.moduleId}catch(i){}throw r}finally{n.exit(e)}}}};var Ye=!1,Ge=(Ye||(Ge=Y(),Ye=!0),Ge),Xe=G.prototype;Xe.fail=Xe.end=m;var Je=X.prototype;Je.end=Je.finish=Je.fail=null,Je.send=function(t){var e=this;e.sent=!0;var n=t.event&&t.event.xhrs||[];i(n,function(t){t.start=t.start-e.s});var r={key:e.key,duration:e.e-e.s,status:e.status,xhrs:n};Re.emit("send","/spe",null,r,m)};var $e={},Ke={host:"cshst",url:"csurl"},Ve={version:"1.7.0",config:function(t,e){var n;if(Lt(t))n=t;else{if(!qt(t)||e===undefined)throw new Gt(De);(n={})[t]=e}return i(n,function(t,e){e in Ke?Te[Ke[e]]=t:Te[e]=t}),this},DIAGNOSE_HREF:ge,diagnose:function(t){function e(t,e,r){var i=r||"log",o=n[t]||(n[t]={});o[i]=o[i]||"",o[i]+=e}var n={},r=A();if(e("Status",r,"ok"!==r),e("Debug",O()),i(je,function(t,n){e("Timeline",n+": "+t.toString())}),!t&&Be)console.log("[TingYun Agent Diagnosis]\n"),i(n,function(t,e){i(console[e],function(t,e){console[e](t)})});else{if(t!==ge)return stringify(n);te.href=te.href+"#"+stringify(n)}},createEvent:function(t){var e=(t=t||{}).key;if(!e)return new G;if($e[e])return new G("event "+e+" is executing");$e[e]=!0;var n=Ge.createContext();Ge.enter(n);var r=new X(t);return Ge.set("event",r),r._end=function(){var t=this;!t.sent&&0===t.remain&&t.called&&t.finish().send(n)},r.end=function(t){var e=this;e.called?Be&&console.warn("Event "+this.key+"has ended or failed!"):(e.called=!0,Ge.exit(n),e.status=arguments.length?t:1,e._end())},r.finish=function(t){var e=this;return e.e=g(),e.i&&clearTimeout(e.i),delete $e[e.key],e},r.fail=function(){this.end(0)},r},logFirstScreen:function(t){if(t){var e=Te.firstScreenResources=Te.firstScreenResources||[];Ct(t)||(t=[t]),i(t,function(t){if(qt(t))e.push(t);else if(Ae(t)){var n=t.src||t.href;n&&e.push(n)}})}},addExcludedDomain:function(t){Ct(t)||(t=[t]),i(t,function(t){if(t){if(!(t instanceof RegExp))throw new Gt("parameter's type requires RegExp");($t.domains||($t.domains=[])).push(t)}})}};e[pe]=e[me]=Ve;var Qe={},We=e.screen;We&&(Qe.sh=We.height,Qe.sw=We.width);var Ze="fetchStart",tn="requestStart",en="responseStart",nn="responseEnd",rn="domContentLoadedEventStart",on="domContentLoadedEventEnd",an="domInteractive",un="domComplete",sn="loadEventStart",cn="loadEventEnd",ln="unloadEventStart",dn="unloadEventEnd",hn="domainLookupStart",vn="domainLookupEnd",pn="redirectStart",mn="redirectEnd",gn="connectStart",yn="connectEnd",_n="secureConnectionStart",Sn=function(){var t=e.performance,r=!!t;r||O(v(Oe,["pf"]));var o=y(function(){function e(t){return t?"1":"0"}var o=Z(tt($t)),a=t&&t.timing,u=d(V(a),o,Te),s=d({},Qe);Re.fp?(s.fp=Re.fp,r&&Re.fp>Re._le&&(O("fp>le"),s.fp=et(t),s.__fp=2)):r?(s.fp=et(t),s.__fp=1):s.fp=s.__fp=0,s.dr=ot(a),r?s.fs=nt(t,a,s.fp,s):s.__fs=0;var c,f="";if(r){var l=Math.max(u.ls,0);l||(l=K()-a.navigationStart||n),s.trace=l;var h=at(a);i(["fp","fs","dr","trace"],function(t){f+=e((h?s[t]-h:s[t])>=Kt[t+"_threshold"])}),delete s.trace,f.indexOf("1")>-1&&(c=Q(t))}s.trflag=f||"0000",xe.pfStart=g(),delete u.firstScreenResources,Re.emit("send","/pf",d(u,s),c,function(){O("pf sent!"),Re.xhrs=Re.errs=null})});return ke.on(oe,function(){p(o)}).on([ae,ue,se],o)},En=2e3,wn=function(t){var e=[];return i(Kt.custom_urls,function(t){try{e.push(new RegExp(t))}catch(n){A(n&&n.message)}}),e}(),bn=wn.length?function(t){var e=t.url;!Re.ct&&e&&i(wn,function(n){if(e.match(n))return Re.ct=t.end+t.cbTime,!1})}:m,Tn=[],xn={error:990,abort:905,timeout:903},kn="loadstart",In=function(){function t(t){var r=t;return e&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}var e=/(msie|trident)/i.test(ee.userAgent),n=Xt.createElement("a"),r=t(te.href);return function(e){var n=t(e);return n.protocol===r.protocol&&n.host===r.host}}(),Nn=1e4,qn=0;_t.prototype={add:function(t,e){this.len>this.limit||this.get(t)||(this.c[t]=e,this.len++)},get:function(t){return this.c[t]},reset:function(){this.c={},this.len=0}};var Cn=new _t(100),Rn={},Ln=/([a-z]+:\/{2,3}.*):(\d+):(\d+)/;return Et.prototype={increase:function(){this.count++},fix:function(){var t=this,e=t.stack;if(t.module&&e&&qt(e)&&t.filename){e=e.split(/\n/);var n=Ln.exec(e[0])||Ln.exec(e[1]);n&&n[1]!=t.filename&&(t.filename=n[1]||t.filename,t.lineno=n[2]||t.lineno,t.colno=n[3]||t.colno)}},toObject:function(){var t=this;return{o:t.time,e:t.msg,l:t.lineno,c:t.colno,r:t.filename,ec:t.count,s:t.stack,m:t.module,ep:t.ep}}},Re.start()&&(Sn(),yt(),kt()),Re._end=g(),q(function(){be._end=Re._end}),Ve}(function(ty_rum){ty_rum.server = {beacon:"beacon.tingyun.com",beacon_err:"beacon-err.tingyun.com",key:"oUQGQZGPti0",trace_threshold:7000,ignore_err:false,fp_threshold:2000,fs_threshold:4000,dr_threshold:4000,id:"4aFM93gEJaM"};ty_rum.agent={id:'hURMz5HxrV4#sHBikFjUF6A',n:'WebAction/ASP/pages%2Finvest%2Finvest_list.aspx',tid:'245ca898ce542eaee3e0',q:0,a:268};},window,+new Date);</script><link rel="dns-prefetch" href="https://image.tuandai.com/"><link rel="dns-prefetch" href="https://js.tuandai.com/"><link rel="dns-prefetch" href="https://vip.tuandai.com/"><link rel="dns-prefetch" href="https://hd.tuandai.com/"><link rel="dns-prefetch" href="https://bbs.tuandai.com/"><meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="https://js.tuandai.com/images/default/favicon.ico?v=20150513">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/base20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/public20151225.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/xiamen-bank.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/cgt20161107.css">
<meta name="keywords" content="小型投资项目,短期投资,P2P投资理财">
<meta name="description" content="团贷网是拥有大量投资理财产品,为你提供优质的小型投资项目、个人短期投资理财产品,安全可靠的P2P投资理财平台选团贷网更放心。">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/new_invest_list.css">

</head>
<body>
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl">
<div class="w1200 h40 auto g6">
<div class="right-side  r inline-block-debug">
<div class="inline-block-debug c-poi-a">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp" class="red "> <i class="icon dib hous-icon"></i>前往团贷网</a>
<span>|</span>
</div>
<div class="inline-block-debug c-poi-a" id="topin" ></div>
<a rel="nofollow" href="#" target="_blank">帮助中心</a><span>|</span>
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
<div class="r rel tc  slid z3">
<dl class="abs i-b-d vt about-us r0" id=""><dt><a href="${pageContext.request.contextPath }/myAcc.do"><i class="account-icon i-b-d icon vm"></i>我的账户</a></dt></dl>
</div>
<div class="nav r">
<ul>
<li class="nav-t">
<a href="${pageContext.request.contextPath }/jsp/homepage/investmenthome.jsp">首页</a>
</li>
<li class="nav-t w130">
<div class="r rel tc  slid z3 r ">
<dl class="abs i-b-d vt guarantee r0">
<dt><a href="${pageContext.request.contextPath }/jsp/homepage/LooseInvestment.jsp">我要投资<i class="icon arrow i-b-d vm"></i></a></dt>
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
<img src="${pageContext.request.contextPath }/static/img/logo.png" alt="团贷网"></a>
<div class="index-bd" id="base_index_box">
<ul class="index_slider" id="base_index_slider" style="bottom: 0px">
<li><a>
<img src="${pageContext.request.contextPath }/static/img/1502357148516.png" alt="网贷"></a>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="container w1200 auto fix cl">
<div class="invest-tag  cl fix  mr10 ">
<ul class="cl fix mb10">
<li class="inv-tag-1 "><a href="${pageContext.request.contextPath }/jsp/homepage/lntellgent.jsp">智能投资</a></li>
<li class="inv-tag-2 on">散标专区</li>
</ul>
</div>
<div class="tags bgff">
<div class="conition-tag cl fix">
<div class="r pt15 toptool"><i class="reckon icon"></i><a href="${pageContext.request.contextPath }/jsp/homepage/IntelligentCalculator.jsp" target="_blank">收益计算器</a><em> </em><i class="inv icon"></i><a href="https://www.tuandai.com/member/AutoTender/AutoTenderList.aspx" target="_blank">自动投标</a></div>
<div class="l condition-list">
<dl class="invest-tag" id="pid" type="projecttype">
<dt>标的类型：</dt>
<dd id="inv-tag-1" class="" attrisfirst="0" attrstatus="1" onclick="pids(11)">小微企业</dd>
<dd id="inv-tag-2" class="" attrisfirst="0" attrstatus="1" onclick="pids(12)">微团贷</dd>
<dd id="inv-tag-3" class="" attrisfirst="0" attrstatus="1" onclick="pids(13)">分期宝</dd>
<dd id="inv-tag-4" class="" attrisfirst="0" attrstatus="1" onclick="pids(14)">供应链</dd>
<dd id="inv-tag-6" class="on" attrisfirst="0" attrstatus="1" onclick="pids(15)">资产标区<span class="or"></span></dd>
</dl>
<dl class="payback" id="pid" type="term">
<dt>周转期限：</dt>
<dd attrtype="3" attrmin="0" attrmax="0" attrval="0" class="on" onclick="speriods(0)" >全部</dd>
<dd attrtype="3" attrmin="7" attrmax="15"  onclick="speriods(1)">7-15天</dd>
<dd attrtype="3" attrmin="15" attrmax="1"  onclick="speriods(2)">15天-1个月</dd>
<dd attrtype="3" attrmin="1" attrmax="3"  onclick="speriods(3)">1-3个月</dd>
<dd attrtype="3" attrmin="3" attrmax="6"  onclick="speriods(4)">3-6个月</dd>
<dd attrtype="3" attrmin="6" attrmax="12"  onclick="speriods(5)">6-12个月</dd>
<dd attrtype="3" attrmin="12" id="asd" attrmax="60"  onclick="speriods(6)">12个月以上</dd>
</dl>
<dl class="" type="interest-rate">
<dt>年化利率：</dt>
<dd attrtype="1" attrval="0" class="on" onclick="srates(0)">全部</dd>
<dd attrtype="1" attrval="5" onclick="srates(1)">5%以上</dd>
<dd attrtype="1" attrval="9" onclick="srates(2)">9%以上</dd>
<dd attrtype="1" attrval="11" onclick="srates(3)">11%以上</dd>
<dd attrtype="1" attrval="13" onclick="srates(4)">13%以上</dd>
</dl>
<dl type="payback-type">
<dt>结清方式：</dt>
<dd attrtype="2" attrval="0" class="on" onclick="srepayTypes(0)">全部</dd>
<dd attrtype="2" attrval="2" onclick="srepayTypes(1)">每月付息</dd>
<dd attrtype="2" attrval="1" onclick="srepayTypes(2)">到期本息</dd>
<dd attrtype="2" attrval="5" onclick="srepayTypes(3)">等额本息</dd>
</dl>
</div>
<div class="r pr20">
<div class="we_pro pt20 "><a href="https://www.tuandai.com/pages/weplan/welist.aspx" target="_blank"><img class="db" src="${pageContext.request.contextPath }/static/img/we-pro.png" alt="智能投资WE计划"></a></div>
</div>
</div>
</div>
<div class="w1200 mt15 cl fix mb35">
<div class="news-list r db">
<div class="news bgff">
<div class="news-body">
<h2 class="f16"><a href="http://info.tuandai.com/help/list.html?mark=43" class="r more f14">更多&gt;</a>常见问题</h2>
<ul>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">为什么在团贷网投资是安全的？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">投标后什么时候开始计息？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">什么是自动投标？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">团贷网投资是否需要收取佣金？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">团贷网的新标上线时间是怎么安排的？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">什么是We计划？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">什么是第三方担保？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">借款人逾期了怎么办？</a></li>
<li><a href="http://info.tuandai.com/help/list.html?mark=43" target="_blank">我也想借款，怎么申请？</a></li>
</ul>
</div>
</div>
</div>
<div class="inv-list-warp auto bgff l">
<div class="sort rel z1 auto">

<dl>
<dt>排序方式：</dt>
<dd onclick="orderBy(0)">
<a class="on" href="javascript:void(0);" id="DefaultOrderBy">默认排序</a>
</dd>
<dd onclick="orderBy(1)">
<a href="javascript:void(0);">年化利率</a>
<span class="arr">
<span class="down-g icon mysort" orderby="" id="APROrderBy"></span>
</span>
</dd>
<dd onclick="orderBy(2)">
<a href="javascript:void(0);">投资期限</a>
<span class="arr">
<span class="down-g icon mysort" orderby="" id="DeadlineOrderBy"></span>
</span>
</dd>
<dd onclick="orderBy(3)">
<a href="javascript:void(0);">投标进度</a>
<span class="arr">
<span class="down-g icon mysort" orderby="" id="CastedSharesOrderby"></span>
</span>
</dd>
<dd onclick="orderBy(4)">
<a href="javascript:void(0);">发标时间</a>
<span class="arr">
<span class="down-g icon mysort" orderby="" id="AddDateOrderby"></span>
</span>
</dd>
</dl>
</div>

<div class="inv-list-detail auto">
<div id="" class="financial-list list-1 cl fix" style="display:none;">
<div id="projectlist">
</div>
<div id="divPagination" class="pagetop">
</div>
</div>
<div id="" class="financial-list list-2 cl fix" style="display:none;">
<div id="weilist">
</div>
<div id="divPaginationWei" class="pagetop">
</div>
</div>
<div id="" class="financial-list list-3 cl fix" style="display:none;">
<div id="fqbaolist">
</div>
<div id="divfqbaolist" class="pagetop">
</div>
</div>
<div id="" class="financial-list list-4" style="display:none;">
<div id="gyllist">
</div>
<div id="divPaginationGyl" class="pagetop">
</div>
</div>
<div id="invdatalist-6" class="financial-list list-6" style="display:block;">


<div id="invdatalist">
  <%-- <c:forEach items="${standardInvests }" var="standardInvest">
<dl class="inv-list cl fix">
<dt class="l">
	<a href="https://www.tuandai.com/pages/invest/jing_detail.aspx?id=7daa0040-00b4-451b-bb58-b150a22a717c" target="_blank"> <img alt="" src="${pageContext.request.contextPath }/static/img/d46b200e-3ff8-4979-9968-490d1b6135a9_s.png" onerror="this.src='${pageContext.request.contextPath }/static/img/default.jpg?v=20160728'"></a>
</dt>
<dd class="l ml20 detail">
<div class="inv-title pt5">    
	<a href="https://www.tuandai.com/pages/invest/jing_detail.aspx?id=7daa0040-00b4-451b-bb58-b150a22a717c" target="_blank" class="ell i-b-d " title="资产标170920214027173">资产标170920214027173</a>
	  <div class="jing-tip-box clearfloat">
	      <div class="jing-tip jing-tip-l"></div>       
	          <div class="jing-tip jing-tip-c">    无需满标 投即计息        </div>       
	             <div class="jing-tip jing-tip-r">        </div>  
	  </div>
</div>
<div class="inv-data">	
	 <ul>		
	    <li>周转金额:${standardInvest.stotelmoney }万</li>	
	    <li>单位:${standardInvest.sprice}元/份 </li>	
       	<li class="surplus">剩余:${standardInvest.srestnumber }份</li>
	  	<li class="percent">
	       <span class="f30 g-orange2 fa">${standardInvest.srate }</span>
	   		<span class="g-orange2">%</span> 利率
	    </li>		
	     <li class="ml1">
	     	<span class="f28 g303030 fa">${standardInvest.speriod }</span>
	      	 <span class="g303030">月</span>/${standardInvest.srepaytype }
	     </li>
	 </ul>
</div>
</dd>
<dd class="l inv-progress"> 
	<div class="buy-input-new"> 
	<span class="btn l-btn jiek_minus2" style="font-size: 16px;color: white">-</span> 
	<span class="btn r-btn jiek_plus2" maxshare="10000">+</span> 
	<input class="input-text jiek_Share2" value="1 份" maxshare="10000" type="text"> 
	</div>  
	<a class="join td-btn-1   td-btn-1-or jiek_action2" href="javascript:void(0);" attrid="7daa0040-00b4-451b-bb58-b150a22a717c" protitle="资产标170920214027173">我要投资</a> 
</dd>
</dl> 
 </c:forEach>  --%>
</div>




<div id="divPaginationJing" class="pagetop">
<div class="pagination"><span class="current prev">上一页</span><span class="current">1</span>
<a href="#6">2</a><span>...</span><a href="#6" class="ep">${pageCount }</a><a href="#6" class="next">下一页</a></div>
</div>


</div>
<div id="" class="financial-list list-7" style="display:none;">
<div id="ZqZrlist">
</div>
<div id="divPaginationZqZr" class="pagetop">
</div>
</div>
</div>
</div>
</div>
</div>
<div class="footer fix">
<div class="footer-content auto fix cl">
<div class="fix">
<div class="park-1   l fix">
<div class="text l">
                        <dl>
							<dt>新手帮助</dt>
							<dd>
							<a rel="nofollow" href="http://hd.tuandai.com/web/newhand/classroom.aspx?tdsource=pcnewguide">新手指引</a>
							</dd>
							<dd>
							<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
							</dd>
							<dd>
							<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/helppage/help-price.jsp?mark=70">资费介绍</a>
							</dd>
						</dl>
                    </div>
                    <div class="text l">
                        <dl>
                            <dt>安全保障</dt>
                            <dd>
							<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/laws.html?mark=9">法律法规</a>
							</dd>
							<dd>
							<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/guarantee.html?mark=2">安全保障</a>
							</dd>
							<dd>
							<a rel="nofollow" href="${pageContext.request.contextPath }/jsp/information/partners.html?mark=13">合作机构</a>
							</dd>
                        </dl>
                    </div>
<div class="text l">
<dl>
<dt>如何投资</dt>
<dd>
<a target="_blank" href="https://www.tuandai.com/article/">投资资讯</a>
</dd>
<dd>
<a target="_blank" href="http://ask.tuandai.com/">团贷问答</a>
</dd>
<dd>
<a target="_blank" href="http://baike.tuandai.com/">团贷百科</a>
</dd>
</dl>
</div>
</div>
<div class="park-2 l"></div>
<div class="park-3 l">
<div class="p-nm fa f40 g-orange2">1010-1218</div>
<div class="server-time mt5">客服热线（服务时间：9:00-22:00）</div>
<div class="server-icon rel">
<div class="mail-int-box" style="display: none">
<div class="mail-int   tl">
<i class="arrow arrow-int abs icon"></i>
<div class="f12 b g3">客服邮箱：</div>
<div class="f12">
<a>kefu@tuandai.com</a>
</div>
</div>
</div>
<a class="online icon" href="http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591" target="_blank" title="在线服务" rel="nofollow"></a>
<a class="mail icon c-poi" onmouseover="showServers('.mail','.mail-int-box') "></a>
</div>
</div>
</div>

<div class="address fa f12 tc mt15">
2010-
2017 版权所有 © 团贷网
<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="external nofollow">粤ICP备12043601号-1</a> <span style="width: 18px; height: 21px; vertical-align: middle; margin-left: 5px; margin-right: 5px; display: inline-block; background: url(//js.tuandai.com/images/default/links.png?v=20160629001) no-repeat; background-position: -523px -375px"></span>
<a rel="external nofollow" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44190002000538" target="_blank">粤公网安备44190002000538号</a>&nbsp;东莞团贷网互联网科技服务有限公司 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼
</div>
</div>
<div class="security tc">
<a class="case1" rel="external nofollow" href="http://www.beianbeian.com/beianxinxi/2a7b35bf-b598-4dbf-b407-49c6dfae1d23.html" target="_blank"></a>
<a class="case2" rel="external nofollow" href="http://www.gddg110.gov.cn/publicfiles/business/htmlfiles/dgjch/index.htm" target="_blank"></a>
<a class="case3" rel="external nofollow" href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.tuandai.com&amp;at=business" target="_blank"></a>
<a class="case4" rel="external nofollow" href="https://ss.knet.cn/verifyseal.dll?sn=e12110944190036882000000&amp;ct=df&amp;a=1&amp;pa=0.3762240521682825" target="_blank"></a>
<a class="case5" rel="external nofollow" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1581384531" target="_blank"></a>
<a class="case6" rel="external nofollow" href="https://search.szfw.org/cert/l/CX20150126006876006576" target="_blank"></a>
<a class="case7" rel="external nofollow" href="https://www.tuandai.com/gys.aspx" target="_blank"></a>
<a class="case8" rel="external nofollow" id="_pingansec_bottomimagesmall_p2p" href="http://si.trustutn.org/info?sn=260150522000147261072"></a>
</div>
</div>
<div class="tool">
<div class="t-box rel" onclick="javascript:void(0);">
<div class="dan-tip abs tc" style="display: none">市场有风险投资需谨慎<span class="triangle db"></span></div>
<i class="t6"></i>
<a href="javascript:;">风险提示</a>
</div>
<div class="t-box" onclick="javascript:window.open('http://www.sobot.com/chat/pc/index.html?sysNum=20ab7dce1e3346e8b90b649bd8baf591');">
<i class="t1"></i>
<a href="javascript:;">在线客服</a>
</div>
<div class=" t-box" onclick="javascript:window.open('http://info.tuandai.com/help/index.html');">
<i class="t2"></i>
<a href="${pageContext.request.contextPath }/jsp/helppage/helppage.jsp">帮助中心</a>
</div>
<div class=" t-box" onclick="javascript:window.open('http://news.tdw.cn/tool/int_fina.aspx');">
<i class="t3"></i>
<a class="" href="${pageContext.request.contextPath }/jsp/homepage/IntelligentCalculator.jsp">计算工具</a>
</div>
<div class="t-box to-top" onclick="javascript:;" style="display: none">
<i class="t5"></i>
<a href="javascript:;" class="pt10">回到顶部</a>
</div>
</div>
<div id="layer" style="display: none;"></div>
<div id="td-art" style="display:none">
<div class="art-body">
<i class="close icons close-x icon abs" style="top: -30px; right: -32px;"></i>
<div id="recharge-art" class="recharge-art">
<div class="left">
<p id="art_UserName">
</p>
<p id="art_ProjectAmount">
</p>
<p id="art_ReTime">
</p>
<p id="art_Rate">
</p>
<p id="txtLowerUnit">
</p>
<p id="art_ReType">
</p>
<div class="reward" id="art_PublicRate">
<p>
<i class="i-1"></i>发标人投标奖励【无】
</p>
<p class="padding-bottom-0">
<i class="i-2"></i>团贷网投标奖励【无】
</p>
</div>
</div>
<div class="right">
<a rel="nofollow" href="https://www.tdw.cn/member/Bank/Recharge.aspx" target="_blank" class="charge">去充值</a>
<p>
可用余额：<span class="font-000" id="art_UserFund"></span>
</p>
<p id="txtMaxUnit1">
</p>
<p>
应付金额：<span class="font-orange font-bold" id="txtInvestAmount"></span>
</p>
<p id="p_Expected">
预期收益：<span class="font-orange font-bold" id="txtExpected"></span>
<span id="spPrizeInterest" style="display:none;"><b class="font-orange font-bold">+</b><span class="hongbao-jx font-orange font-bold">0.00</span>元</span>
</p>
<div class="invent-form">
<div class="form-box">
<input class="input-text autoinput" id="txtUnit" value="1" maxlength="10" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false" data-input="true" type="text">份
</div>
<i class="top" id="btnPlus"></i><i class="bottom" id="btnMinus"></i>
<a href="javascript:void(0)" id="AllInvest">全额</a>
</div>
<div class="invent-form" style="margin-top: 15px; margin-bottom: 35px; height: 16px; line-height: 16px; display: none;" id="dCode">
<input placeholder="请输入手机验证码" id="MobileCode" style="height: 33px; line-height: 33px; padding-left: 12px; border: 1px solid #d5d5d5; width: 195px; border-radius: 3px; -webkie-border-radius: 3px;" type="text">
<a href="javascript:void(0)" id="GetCode">发送验证码</a>
</div>
<div id="redpackform">
</div>
<a target="_blank" class="invent-btn" id="PostData" style="cursor:pointer;">立即投资</a>
<input id="hiDeadline" type="hidden">
<input id="hiInterestRate" type="hidden">
<input id="hiRepaymentType" type="hidden">
<input id="hiProjectType" type="hidden">
<input id="hiUnit" type="hidden">
<input id="txtPublicRate" type="hidden">
<input id="txtTuandaiRate" type="hidden">
<input id="hiNeedPassWord" type="hidden">
<input id="hiTotalInvest " type="hidden">
<input id="hiCanGetPackage " type="hidden">
<input id="hiNeedInvest " type="hidden">
<input id="hiIsNewUser " type="hidden">
<input id="hiIsAwardOverdue " type="hidden">
<input id="hiAreaInvest " type="hidden">
<input id="hiIsScribeTanfer" type="hidden">
<input id="hiProjectDeadline" type="hidden">
<input id="hiNewHandRate" type="hidden">
<input id="hiHQBAmount" type="hidden">
<input id="hiDeadType" type="hidden">
<div class="agreement f12  font-666" id="AgreeDiv"></div>
</div>
</div>
</div>
</div>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="${pageContext.request.contextPath }/static/img/loading.gif" alt="加载中">
</div>
<div id="dial-window-btns" class="btns tc">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
<div class="g6" style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;" id="divTiQian">
</div>
</div>
</div>
<a id="tt_link" style="display: none;">bank</a>
<div id="diallayer" style="display: none;"></div>
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
<div class="pop-body">
<p><span id="sp_open" style="display: none;">您尚未开通厦门银行资金存管账户，请先开通</span><span id="sp_active" style="display: none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span></p>
<a href="https://www.tuandai.com/member/Bank/XM_BankBind.aspx" id="aOpen" class="btn">马上开通</a>
<a href="javascript:void(0);" target="_blank" id="aActived" class="btn">马上激活</a>
<a href="https://www.tuandai.com/member/Bank/XM_BankBind_Complete.aspx" id="aBankBind" class="btn">绑定银行卡</a>
</div>
</div>
<div id="bankBindAlert" style="display: none; margin-left: -220px;" class="dial-window xm-window bankBindAlert">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align: center;">
<p class="p1">请您在新打开的页面完成<span id="sp_title"></span></p>
<p class="p2"><span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
</div>
</div>
<div class="bottom">
<div class="btn-group">
<a href="javascript:void(0);" id="remind_aa" class="btn"><span id="aa_title"></span></a>
</div>
<a class="question" href="javascript:void(0);" target="_blank"><span id="sp_title3"></span>遇到问题</a>
</div>
</div>
<div id="gangaoAlert" style="display: none;" class="dial-window xm-window hongkong">
<div class="title rel">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="" style="text-align: center;">
<div class="codexe" style="width:119px;height:124px;background:url(//js.tuandai.com/images/member/my_capital/codexe.png);position:absolute;top:36px;left:281px;z-index: 100;display: none;"></div>
<p><b>由于您的证件为<span id="sp_cardTypeName">港澳通行证</span>，您还需完成以下操作才能进行正常理财：</b></p>
<p>
1、添加专属服务<a id="a_qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2880323191&amp;site=qq&amp;menu=yes">2880761023</a>或<a class="a_qq a_code" style="background: url(//js.tuandai.com/images/member/my_capital/code20170426001.png);cursor: pointer;">2880761023</a>为好友。<br>
2、<span id="sp_2Content">QQ或微信联系客服专员，需提交以下申请材料：手持港澳台通行证证件彩色半身照【保<br>
证证件号码清晰且不能是镜面照】港澳台通行证背面彩色照片,受理时间为：周一至周五9:00-12:00 13:30-18:00，周六日与法定节假日除外。</span><br>
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
<div class="title rel" style="display: block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div class="">
<p class="p1"><span id="sp_newcontent">如果您忘记银行卡预留手机号，请与您的发卡银行客服联系，咨询预留手机号</span></p>
</div>
</div>
<div class="bottom">
<div id="btn_03" class="btn-group">
<a id="qiyeBtn" href="javascript:;" class="btn">我知道了</a>
</div>
<div id="btn_04" class="count" style="display: none;">
<a class="td-btn-1 td-btn-1-or btn" href="${pageContext.request.contextPath }/jsp/homepage/ResetPwd_Telno.jsp">我要修改预留手机号</a>
</div>
</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/jquery-1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/thirdlib.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/project_dialog_cgt.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/select_redbox.js"></script>
<script charset="GB2312" type="text/javascript" src="${pageContext.request.contextPath }/js/js/cgt_common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/new_investlist.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/settdwcookie.js"></script>


<img style="display: none;" src="${pageContext.request.contextPath }/html/html1/SingleLogin.html"></body></html>