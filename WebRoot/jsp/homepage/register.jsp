<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
用户注册_团贷网
</title><script src="${pageContext.request.contextPath }/static/js/hm.js"></script><script type="text/javascript" async="" src="${pageContext.request.contextPath }/static/js/webaccess.js"></script><script>var TINGYUN=function(t,e,n){function r(t){var e=!!t&&"length"in t&&t.length,n=typeof t;return"function"!==n&&("array"===n||0===e||"number"==typeof e&&e>0&&e-1 in t)}function i(t,e){var n,i=0;if(t)if(r(t))for(n=t.length;i<n&&!1!==e.call(t[i],t[i],i);i++);else for(i in t)if(!1===e.call(t[i],t[i],i))break;return t}function o(t){return function(e){return"Array"===t&&Array.isArray?Array.isArray(e):Object.prototype.toString.call(e)==="[object "+t+"]"}}function a(t){switch(typeof t){case"object":if(!t)return null;if(t instanceof Array)return i(t,function(e,n){t[n]=a(e)}),"["+t.join(",")+"]";if(t instanceof Date)return t.getTime().toString();var e="";return i(t,function(t,n){Rt(t)||(e+=a(n)+":"+a(t)+",")}),e&&(e=e.substr(0,e.length-1)),"{"+e+"}";case"string":return At+t.replace(Ot,"\\$1").replace(Dt,"\\n")+At;case"number":return isNaN(t)?null:t;case"boolean":return t;case"function":return a(t.toString());case"undefined":default:return'"undefined"'}}function u(t){return t&&qt(t)?It(t):t}function s(t,e,n,r){var i=function(){return Mt(t,e,i),n.apply(this,arguments)};return Bt(t,e,i,r)}function c(t,e){return Function.prototype.apply.apply(t,e)}function f(t,e){return function(){t.apply(e,arguments)}}function l(t){return Ht?Ht(t):t}function d(t){return arguments.length<2||!t?t:(i(Pt.call(arguments,1),function(e){i(e,function(e,n){t[n]=e})}),t)}function h(t,e){for(var n=-1,r=0,i=null==t?0:t.length,o=[];++n<i;){var a=t[n];e(a,n,t)&&(o[r++]=a)}return o}function v(t,e){return t?e?t.replace(/\{(\w+.?\w+)\}/g,function(t,n){return e[n]||""}).replace(/\{(\d+)\}/g,function(t,n){return e[n]||""}):t:""}function p(t){return setTimeout(t,0)}function m(){}function g(){return+new Date}function y(t){return function(){if(null!==t){var e=t;t=null,e.apply(this,arguments)}}}function _(t){return t?qt(t)?t.length:e.ArrayBuffer&&t instanceof ArrayBuffer?t.byteLength:e.Blob&&t instanceof Blob?t.size:t.length?t.length:0:0}function S(t){return Ut!==zt&&/^https/i.test(t&&t.protocol||Ut)?"https:":zt}function E(t,e,n,r){var o=null;return t&&e&&(o=S(r)+"//"+t+e,n&&(o+="?",i(n,function(t,e){var n=[l(e),"=",l(t),"&"];o+=n.join("")}),o+="__r="+g())),o}function w(){this.events={}}function b(t){return!(t in Kt)||Kt[t]}function T(t){var e=Xt.cookie.match(new RegExp("(^|;\\s*)("+t+")=([^;]*)"));return e?e[3]:null}function x(t,e,n){var r=t+"="+e;if(n){var i=new Date;i.setTime(i.getTime()+1e3*n),r+=";expires="+i.toGMTString()}Xt.cookie=r}function k(t,e,n){var r=Xt.createElement(t);try{for(var i in e)r[i]=e[i]}catch(a){var o="<"+t;for(var i in e)o+=" "+i+'="'+e[i]+'"';o+=">",n||(o+="</"+t+">"),r=Xt.createElement(o)}return r}function I(t,e,n,r){Rt(n)&&(r=n);var i=k("div",{style:_e}),o=k("iframe",{name:"ty_form",width:0,height:0,style:_e}),a=k("form",{style:_e,action:t,enctype:"application/x-www-form-urlencoded",method:"post",target:"ty_form"}),u=k("input",{name:"data",type:"hidden"},!0);u.value=Nt(e),a.appendChild(u),i.appendChild(o),i.appendChild(a),Xt.body.appendChild(i),a.submit(),o.onreadystatechange=function(){o.readyState!==fe&&4!==o.readyState||(r(null,ifm.innerHTML),Xt.body.removeChild(i))}}function N(t,e,n){if(t&&n&&Rt(n)){var r=t[e];if(!r||!r._wrapped){var i=n(r);return i&&(i._wrapped=!0),t[e]=i,i}}}function q(t){we&&t()}function C(t){return function(){we&&t.apply(this,arguments)}}function R(){we=!1}function L(){ke.on(oe,y(function(){t();var e=g();q(function(){be.load=e}),Re.loadEventEnd=e})),i([oe,ae,ue,se],function(t){Bt(e,t,function(e){q(function(){(be.e[t]||(be.e[t]=[])).push(g())}),ke.emit(t,e)})});var t=y(function(){var t=g();q(function(){be.end=t}),Re.domContentLoadedEventEnd=t,Xt.querySelectorAll&&(xe.resources=xe.resources||[],i(Xt.querySelectorAll("head>link,head>script"),function(t){var e;"LINK"==t.tagName?e=t.href:"SCRIPT"!=t.tagName||t.defer||t.async||(e=t.src),e&&xe.resources.push(e)}))});Bt(Xt,"DOMContentLoaded",t),Bt(Xt,ce,function(e){Xt.readyState===fe&&t()});var n=y(function(){Re.touch=g()});i(["scroll","click","keypress"],function(t){s(Xt,t,n)}),N(e,"requestAnimationFrame",function(t){return function(){if(!Re.firstPaint){var n=g();q(function(){be.an.count++,be.an.t=n}),Re.firstPaint=n,e.requestAnimationFrame=t}return t.apply(this,arguments)}})}function A(t){D(t,Ie)}function O(t){D(t,Ne)}function D(t,e){var n="ok";if(!t)return n=e.length?e.join("\n"):n;e.push(t)}function j(){if(Object.defineProperty){var t=e[pe];Object.defineProperty(e,pe,{get:function(){return qe++>0&&e.console&&console.warn("window.%s is deprecated, use window.%s instead.",pe,me),t}})}}function B(){var t=this;t.xhrs={},t.errs=[],w.call(t)}function M(t,e){this.flags=0,Rt(t.create)&&(this.create=t.create,this.flags|=Me),Rt(t.before)&&(this.before=t.before,this.flags|=He),Rt(t.after)&&(this.after=t.after,this.flags|=Pe),Rt(t.error)&&(this.error=t.error,this.flags|=Fe),this.data=e}function H(t,e){if(!ze){if(!Lt(t)||!t)throw new TypeError("callbacks arguments must be an object");return ze=new M(t,e)}}function P(t){var e=ze.data;if(0!=(ze.flags&Me)){var n=ze.create(ze.data);n!==undefined&&(e=n)}return function(){0!=(ze.flags&He)&&ze.before(this,e);try{var n=t.apply(this,arguments)}catch(r){throw 0!=(ze.flags&Fe)&&ze.error(e,r),r}return 0!=(ze.flags&Pe)&&ze.after(this,e),n}}function F(t){return!ze||ze.flags<=0?t:P(t)}function U(){function t(t){return function(e){return Rt(e)&&(arguments[0]=F(e)),t.apply?t.apply(this,arguments):c(t,[this,arguments])}}if(e.EventTarget){var n=e.EventTarget.prototype;N(n,"addEventListener",function(t){return function(e,n,r){return Rt(n)&&(n.__wrap=F(n),arguments[1]=n.__wrap),t.apply(this,arguments)}}),N(n,"removeEventListener",function(t){return function(e,n){return n.__wrap?t.call(this,e,n.__wrap):t.apply(this,arguments)}})}N(e,"setTimeout",t),N(e,"setInterval",t)}function z(){this.id=null,this.active=null,this._set=[]}function Y(){U();var t=new z;return t.id=H({create:function(){return t.active},before:function(e,n){n&&t.enter(n)},after:function(e,n){n&&t.exit(n)},error:function(e,n){if(e){try{n.moduleId=e.moduleId}catch(r){}t.exit(e)}}}),t}function G(t){Be&&console.warn(t||"Event key required!")}function X(t){t=t||{},this.key=t.key;var e=t.timeout||6e5;this.i=e?setTimeout(f(this.fail,this),e):null,this.status=1,this.remain=0,this.xhrs=[],this.s=g(),this.e=null,this.called=this.sent=!1}function J(t){try{return u(t)}catch(e){A(e&&e.message)}return null}function $(){return Re.domContentLoadedEventEnd||Re._end}function K(){return Re.loadEventEnd||Re._end}function V(t){function r(e){return t[e]>0?t[e]-a:0}var o={},a=n;if(t){q(function(){var t=be.t={};i(function(e,n){Rt(e)||(t[n]=e)})}),a=t.navigationStart,o={f:r(Ze),qs:r(tn),rs:r(en),re:r(nn),os:r(rn),oe:r(on),oi:r(an),oc:r(un),ls:r(sn),le:r(cn),tus:r(ln),tue:r(dn)};var u=r(hn),s=r(vn),c=r(pn),f=r(mn),l=r(gn),d=r(yn);d-l>0&&(o.cs=l,o.ce=d),s-u>0&&(o.ds=u,o.de=s),(f-c>0||f>0)&&(o.es=c,o.ee=f),0==o.le&&(o.ue=K()-a),Re._le=o.ue||o.le;var h,v;if(t.msFirstPaint)h=t.msFirstPaint,q(function(){be.fp="m_"+h});else if((v=e.chrome)&&v.loadTimes){var p=v.loadTimes();p&&p.firstPaintTime&&(h=1e3*p.firstPaintTime),q(function(){be.fp="c_"+p.firstPaintTime})}else Re.firstPaint&&(h=Re.firstPaint,q(function(){be.fp=h}));h&&(o.fp=Math.round(h-a),Re.fp=o.fp),t[_n]&&(o.sl=r(_n))}else o={t:a,os:$()-a,ls:K()-a};return o.je=Re.errs&&Re.errs.length||0,Re.ct&&(o.ct=Re.ct-a),Re.touch&&(o.fi=Re.touch-a),o}function Q(t){var e={tr:!1,tt:l(Xt.title),charset:Xt.characterSet};Te.resources&&d(e,Te.resources),q(function(){e.debug=be}),R();var n=Re.errs;i(n,function(t,e){n[e]=t.toObject()}),e.err=n;var r="getEntriesByType";return t[r]?(e.tr=!0,e.res=[],i(t[r]("resource"),function(t){function n(e){var n=t[e];return n>0?n:0}var r=t.initiatorType,i=t.name,o={o:n("startTime"),rt:r,n:i,f:n(Ze),ds:n(hn),de:n(vn),cs:n(gn),ce:n(yn),sl:n(_n),qs:n(tn),rs:n(en),re:n(nn),ts:t.transferSize||0,es:t.encodedBodySize||0};if("xmlhttprequest"===r){var a=W(i);a&&(o.aid=a.id,o.atd=a.trId,o.an=a.action,o.aq=a.time&&a.time.qu,o.as=a.time&&a.time.duration)}e.res.push(o)})):O(v(Oe,[r])),e}function W(t){var e;return i(Re.xhrs,function(n,r){if(r&&r.indexOf(t)>-1)return e=n,!1}),e}function Z(t){var e={};return t&&(e.id=t.id,e.a=t.a,e.q=t.q,e.tid=t.tid,e.n=t.n),e}function tt(t){if(!t.agent){var n=e._ty_rum;if(n&&n.agent)t.agent=n.agent;else{var r=T("TINGYUN_DATA");if(r){try{t.agent=J(decodeURIComponent(r))}catch(i){A(i&&i.message)}x("TINGYUN_DATA","",-1e3)}}}return t.agent}function et(t){var e=0,n=t.timing;return n?t.getEntriesByName&&(e=n.domLoading,i(xe.resources,function(r){var i=t.getEntriesByName(r);if(1==i.length){var o=i[0].responseEnd+n.navigationStart;o>e&&(e=o)}}),e-=n.navigationStart):O("fp=0"),q(function(){be._fp=e}),Math.round(e)}function nt(t,n,r,o){var a=r||0,u=Te.firstScreenResources;if(u&&u.length&&t.getEntriesByName)return i(u,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0].responseEnd;r>a&&(a=r)}}),o.fs_s=1,Math.round(a);if(!Xt.createElement("img").getBoundingClientRect)return q(function(){be.fs=a}),a;if(t.getEntriesByName){var s=e.innerHeight,c=[];i(Xt.querySelectorAll("img"),function(t){!it(t)&&""!=t.src&&rt(t)<s&&c.push(t.src)});var f=(n.loadEventEnd||Re.loadEventEnd)-n.navigationStart;i(c,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0],i=r.responseEnd;r.fetchStart<=f&&i>a&&(a=i)}})}return Math.round(a)}function rt(t){var n;if("undefined"==typeof t.getBoundingClientRect)return undefined;n=t.getBoundingClientRect();var r=e.pageYOffset;return n.top+(0===r?0:r||Xt.scrollTop||0)-(Xt.clientTop||0)}function it(t){var n="none";if(e.getComputedStyle){var r=t.ownerDocument.defaultView;r&&r.opener||(r=e),n=r.getComputedStyle(t).display}else t.currentStyle&&(n=t.currentStyle.display);return n&&"none"==n}function ot(t){var e=n,r=0;return t&&(e=t.navigationStart||e,r=t.domContentLoadedEventEnd||t.domInteractive||t.domLoading||r),(r=Re.domContentLoadedEventEnd||r||Re._end)-e}function at(t){if(t){var e=t.fetchStart;if(e)return e-t.navigationStart}return undefined}function ut(t){return function(e,n){var r=this;if(!r[ye]){var i=r._ty_rum={};i.method=e,i.url=n;var o=Ge.get("event");o&&(i.key=o.key,o.remain++)}return t.apply?t.apply(r,arguments):c(t,[r,arguments])}}function st(t){return function(e){var n=this;if(!n[ye]){var r=n._ty_rum;r&&(r.start=g(),r.reqSize=_(e)),ct(n),n.setRequestHeader&&Kt.id&&r&&In(r.url)&&(r.r=g()%1e9,n.setRequestHeader("X-Tingyun-Id",Kt.id+";r="+r.r))}return t.apply?t.apply(n,arguments):c(t,[n,arguments])}}function ct(t){function e(e){t._ty_rum.errorCode=e}Bt(t,kn,function(){t._ty_rum.start=g()}),i(xn,function(n,r){Bt(t,r,function(){e(n)})}),Bt(t,ce,F(function(){lt(t)})),p(function(){ft(t)})}function ft(t){N(t,le+ce,function(e){return function(){var n;if(Rt(e)){var r=t._ty_rum;if(r&&4==t.readyState)var i=g();n=e.apply(this,arguments),r&&4==t.readyState&&(r.cbTime=g()-i)}return n}})}function lt(t){var e=t._ty_rum;if(e&&(ft(t),e.end=g(),e.readyState=t.readyState,4==t.readyState)){e.status=t.status,e.resSize=dt(t);var n=Ge.get("event");p(function(){var r=ht(e,t);n&&n.key==e.key&&(n.xhrs.push(r),0==--n.remain&&n._end()),Re.xhrs&&(bn(e),Re.xhrs[e.url]=r),Tn.push(r)})}}function dt(t){var e=0;if(""==t.responseType||"text"==t.responseType)e=_(t.responseText);else if(t.response)e=_(t.response);else try{e=_(t.responseText)}catch(n){}return e}function ht(t,e){if(t){var n=t.status,r={req:t.method+" "+t.url,start:t.start,du:n>0?t.end-t.start:0,cb:t.cbTime||0,status:n,err:t.errorCode?t.errorCode:0,rec:t.resSize,send:t.reqSize};if(t.r){var i=pt(e,t);i&&(r.s_id=i.id,r.s_name=i.action,i.time&&(r.s_du=i.time.duration,r.s_qu=i.time.qu),r.t_id=i.trId)}return r}}function vt(t,e){if(t&&t.getResponseHeader)return t.getResponseHeader(e)}function pt(t,e){var n=J(vt(t,"X-Tingyun-Tx-Data"));return n&&n.r&&mt(n.r)===mt(e.r)?n:null}function mt(t){return t+""}function gt(){return setInterval(function(){if(Tn&&Tn.length){var t=[];i(Tn,function(e){t.push(e)}),Re.emit("send","/xhr1",null,{xhr:t},function(){Tn=h(Tn,function(e){return t.indexOf(e)<0})})}},En)}function yt(){var t=Jt&&Jt.prototype;return t?(N(t,"open",ut),N(t,"send",st)):Jt&&(e.XMLHttpRequest=function(){var t=new Jt;return N(t,"open",ut),N(t,"send",st),t}),gt()}function _t(t){this.limit=t,this.reset()}function St(t,e,n,r){return String(t)+String(e)+String(n)+String(r)}function Et(t,e,n,r,i,o,a){var u=this;u.id=t,u.time=g(),u.msg=e,u.lineno=r,u.colno=i,u.filename=n,u.count=1,u.stack=o&&o.stack||"",u.module=a,u.fix();var s=Rn[t];u.ep=s?0:1,Rn[t]=!0}function wt(t){var e=function(t){var e=[];return i(t,function(t){e.push(t.toObject())}),e}(Cn.c);if(!e||!e.length)return null;Re.emit("send","/err1",{fu:qn||qn++,os:parseInt((g()-(xe.pfStart||n))/1e3)},{datas:e},f(Cn.reset,Cn))}function bt(t,e,n,r,o){if(e||!Wt){var a=!1;if(i($t.domains,function(t){if(a=t.test(e))return!1}),!a){var u=o&&o.moduleId,s=St(t,n,r,u),c=Cn.get(s);c?c.increase():(c=new Et(s,t,e,n,r,o,u),Cn.add(s,c),Re.errs&&Re.errs.push(c))}}}function Tt(){var t=e.onerror;e.onerror=function(e,n,r,i,o){if(bt(e,n,r,i,o),Rt(t))return t.apply(this,arguments)},e.onerror._ty=!0}function xt(){var t=e.onerror;t&&t._ty||Tt()}function kt(){var t=Ft();return t?Tt():Bt(e,ie,function(t){var n,r,i,o,a;g();(t instanceof e.Event||e.ErrorEvent&&t instanceof e.ErrorEvent)&&(n=t.message||t.error&&(t.error.message||t.error.constructor.name)||"",r=t.lineno||0,i=t.colno||0,(o=t.filename||t.error&&t.error.filename||t.target&&t.target.baseURI||"")==Xt.URL&&(o="#"),a=t.error),bt(n,o,r,i,a)}),ke.on([oe,ae,ue,se],function(t){wt()}).on(oe,function(){t&&p(xt)}),setInterval(wt,Nn)}var It,Nt,qt=o("String"),Ct=o("Array"),Rt=o("Function"),Lt=o("Object"),At='"',Ot=/([\"\\])/g,Dt=/\n/g,jt=e.JSON;jt&&jt.parse&&jt.stringify?(It=function(t){return JSON.parse(t)},Nt=function(t){return JSON.stringify(t)}):(It=function(t){return new Function("return "+t)()},Nt=a);var Bt,Mt;e.addEventListener?(Bt=function(t,e,n,r){return t.addEventListener(e,n,r)},Mt=function(t,e,n){return t.removeEventListener(e,n)}):(Bt=function(t,e,n){return t.attachEvent("on"+e,n)},Mt=function(t,e,n){return t.detachEvent("on"+e,n)});var Ht=e.encodeURIComponent,Pt=[].slice,Ft=new Function("return!+[1,]"),Ut=e.location.protocol,zt="http:",Yt=function(){function t(t){return t<0?NaN:t<=30?0|Math.random()*(1<<t):t<=53?(0|Math.random()*(1<<30))+(0|Math.random()*(1<<t-30))*(1<<30):NaN}function e(t,e){for(var n=t.toString(16),r=e-n.length,i="0";r>0;r>>>=1,i+=i)1&r&&(n=i+n);return n}return function(){return e(t(32),8)+"-"+e(t(16),4)+"-"+e(16384|t(12),4)+"-"+e(32768|t(14),4)+"-"+e(t(48),12)}}();w.prototype={on:function(t,e){var n=this;return qt(t)?(n.events[t]||(n.events[t]=[])).push(e):Ct(t)&&i(t,function(t){n.on(t,e)}),n},off:function(t,e){var n=arguments.length,r=this;if(0===n)return r.events={},r;var i=r.events[t];if(!i)return r;if(1===n)return r.events[t]=null,r;for(var o=i.length;o--;)if(i[o]===e){i.splice(o,1);break}return r},emit:function(t){var e=[].slice.call(arguments,1),n=this.events[t];return n&&i(n,function(t){return t.apply(this,e)}),this},unshift:function(){var t=this;return(t.events[event]||(t.events[event]=[])).unshift(fn),t}};var Gt=e.Error,Xt=e.document,Jt=e.XMLHttpRequest,$t={};t($t);var Kt=$t.server||{};Kt=d({fp_threshold:2e3,fs_threshold:4e3,dr_threshold:4e3},Kt);var Vt,Qt,Wt=b("ignore_err"),Zt=b("debug"),te=e.location,ee=e.navigator,ne=e.HTMLElement;({localStorage:function(){try{var t=Yt();return e.localStorage.setItem(t,t),e.localStorage.removeItem(t),!0}catch(n){return!1}}()}).localStorage?(Vt=function(t){return e.localStorage.getItem(t)},Qt=function(t,n){return e.localStorage.setItem(t,n),n}):(Vt=T,Qt=x);var re,ie="error",oe="load",ae="unload",ue="beforeunload",se="pagehide",ce="readystatechange",fe="complete",le="on",de="TY_DISTINCT_ID",he="TY_SESSION_ID",ve=86400,pe="_ty_rum",me="TINGYUN",ge=2,ye="__ign",_e="display:none",Se="POST",Ee=function(t,e){e=e||m;var n=new Image;Bt(n,ce,function(){"loaded"!=n.readyState&&4!=n.readyState||e(null)},!1),Bt(n,oe,function(){e(null)},!1),Bt(n,ie,function(){e(ie)},!1),n.src=t};e.XDomainRequest?re=function(t,e,n,r){Rt(n)&&(r=n);var i=new XDomainRequest;i.open(Se,t),i.onload=function(){r(null,i.responseText)},i.onerror=function(t){r(t)},i.send(Nt(e))}:Ft()?re=I:ee.sendBeacon?Ee=re=function(t,e,n,r){Rt(n)&&(r=n,n=null),ee.sendBeacon(t,Nt(e))&&r&&r()}:re=function(t,e,n,r){Rt(n)&&(r=n,n=null);var i=y(r),o=new Jt;o[ye]=!0,o.overrideMimeType&&o.overrideMimeType("text/html"),o.onreadystatechange=function(){4==o.readyState&&200==o.status&&i(null,o.responseText)},o.onerror=i,e=Nt(e);try{o.open(Se,t,!0)}catch(u){return I(t,e,i)}for(var a in n)o.setRequestHeader(a,n[a]);o.send(e)};var we=Zt,be={start:n,e:{},an:{count:0},visible:[]},Te={},xe={};!function(){if(Zt){var t,e;"undefined"!=typeof Xt.hidden?(t="hidden",e="visibilitychange"):"undefined"!=typeof Xt.msHidden?(t="msHidden",e="msvisibilitychange"):"undefined"!=typeof Xt.webkitHidden&&(t="webkitHidden",e="webkitvisibilitychange"),"undefined"==typeof Xt.addEventListener||"undefined"==typeof Xt[t]||Bt(Xt,e,C(function(){be.visible.push([Xt[t],g()])}))}}();var ke=new w,Ie=[],Ne=[],qe=0,Ce=B.prototype;Ce.start=function(){if(!Kt.key)return A("missing config, agent disabled!"),!1;var t=e[pe]||e[me];return t&&t.server?(A("already loaded!"),!1):(j(),L(),this)},d(Ce,w.prototype);var Re=new B;Re.on("send",function(t,e,n,r){var i=E(Kt.beacon,t,d({},Le,e||{}));switch(r=r||m,t){case"/pf":n?re(i,n,function(){Re.xhrs=Re.errs=null,r()}):Ee(i,r);break;default:re(i,n,r)}});var Le={pvid:Yt(),ref:Xt.URL,referrer:Xt.referrer,key:Kt.key,v:"1.7.0",av:"1.7.0",did:function(){var t=Vt(de);return t||Qt(de,Yt(),ve)}(),sid:function(){var t=T(he);return t||(t=Yt(),x(he,t)),t}()},Ae=ne?function(t){return t instanceof ne}:function(t){t&&"object"==typeof t&&1===t.nodeType&&qt(t.nodeName)},Oe="{0} not support",De="illegal argument",je={},Be="undefined"!=typeof e.console,Me=1,He=2,Pe=4,Fe=8,Ue=M.prototype;Ue.create=Ue.before=Ue.after=Ue.error=null;var ze;z.prototype={createContext:function(){return Object.create?Object.create(this.active):Y(this.active)},get:function(t){if(this.active)return this.active[t]},set:function(t,e){if(this.active)return this.active[t]=e},enter:function(t){if(!t)throw new Gt("context required!");this._set.push(this.active),this.active=t},exit:function(t){if(!t)throw new Gt("context required!");if(t!==this.active){var e=this._set.lastIndexOf(t);if(e<0)throw new Gt("context not currently entered!");this._set.splice(e,1)}else this.active=this._set.pop()},bind:function(t,e){e||(e=this.active?this.active:this.createContext());var n=this;return function(){n.enter(e);try{return t.apply(this,arguments)}catch(r){try{r.moduleId=e.moduleId}catch(i){}throw r}finally{n.exit(e)}}}};var Ye=!1,Ge=(Ye||(Ge=Y(),Ye=!0),Ge),Xe=G.prototype;Xe.fail=Xe.end=m;var Je=X.prototype;Je.end=Je.finish=Je.fail=null,Je.send=function(t){var e=this;e.sent=!0;var n=t.event&&t.event.xhrs||[];i(n,function(t){t.start=t.start-e.s});var r={key:e.key,duration:e.e-e.s,status:e.status,xhrs:n};Re.emit("send","/spe",null,r,m)};var $e={},Ke={host:"cshst",url:"csurl"},Ve={version:"1.7.0",config:function(t,e){var n;if(Lt(t))n=t;else{if(!qt(t)||e===undefined)throw new Gt(De);(n={})[t]=e}return i(n,function(t,e){e in Ke?Te[Ke[e]]=t:Te[e]=t}),this},DIAGNOSE_HREF:ge,diagnose:function(t){function e(t,e,r){var i=r||"log",o=n[t]||(n[t]={});o[i]=o[i]||"",o[i]+=e}var n={},r=A();if(e("Status",r,"ok"!==r),e("Debug",O()),i(je,function(t,n){e("Timeline",n+": "+t.toString())}),!t&&Be)console.log("[TingYun Agent Diagnosis]\n"),i(n,function(t,e){i(console[e],function(t,e){console[e](t)})});else{if(t!==ge)return stringify(n);te.href=te.href+"#"+stringify(n)}},createEvent:function(t){var e=(t=t||{}).key;if(!e)return new G;if($e[e])return new G("event "+e+" is executing");$e[e]=!0;var n=Ge.createContext();Ge.enter(n);var r=new X(t);return Ge.set("event",r),r._end=function(){var t=this;!t.sent&&0===t.remain&&t.called&&t.finish().send(n)},r.end=function(t){var e=this;e.called?Be&&console.warn("Event "+this.key+"has ended or failed!"):(e.called=!0,Ge.exit(n),e.status=arguments.length?t:1,e._end())},r.finish=function(t){var e=this;return e.e=g(),e.i&&clearTimeout(e.i),delete $e[e.key],e},r.fail=function(){this.end(0)},r},logFirstScreen:function(t){if(t){var e=Te.firstScreenResources=Te.firstScreenResources||[];Ct(t)||(t=[t]),i(t,function(t){if(qt(t))e.push(t);else if(Ae(t)){var n=t.src||t.href;n&&e.push(n)}})}},addExcludedDomain:function(t){Ct(t)||(t=[t]),i(t,function(t){if(t){if(!(t instanceof RegExp))throw new Gt("parameter's type requires RegExp");($t.domains||($t.domains=[])).push(t)}})}};e[pe]=e[me]=Ve;var Qe={},We=e.screen;We&&(Qe.sh=We.height,Qe.sw=We.width);var Ze="fetchStart",tn="requestStart",en="responseStart",nn="responseEnd",rn="domContentLoadedEventStart",on="domContentLoadedEventEnd",an="domInteractive",un="domComplete",sn="loadEventStart",cn="loadEventEnd",ln="unloadEventStart",dn="unloadEventEnd",hn="domainLookupStart",vn="domainLookupEnd",pn="redirectStart",mn="redirectEnd",gn="connectStart",yn="connectEnd",_n="secureConnectionStart",Sn=function(){var t=e.performance,r=!!t;r||O(v(Oe,["pf"]));var o=y(function(){function e(t){return t?"1":"0"}var o=Z(tt($t)),a=t&&t.timing,u=d(V(a),o,Te),s=d({},Qe);Re.fp?(s.fp=Re.fp,r&&Re.fp>Re._le&&(O("fp>le"),s.fp=et(t),s.__fp=2)):r?(s.fp=et(t),s.__fp=1):s.fp=s.__fp=0,s.dr=ot(a),r?s.fs=nt(t,a,s.fp,s):s.__fs=0;var c,f="";if(r){var l=Math.max(u.ls,0);l||(l=K()-a.navigationStart||n),s.trace=l;var h=at(a);i(["fp","fs","dr","trace"],function(t){f+=e((h?s[t]-h:s[t])>=Kt[t+"_threshold"])}),delete s.trace,f.indexOf("1")>-1&&(c=Q(t))}s.trflag=f||"0000",xe.pfStart=g(),delete u.firstScreenResources,Re.emit("send","/pf",d(u,s),c,function(){O("pf sent!"),Re.xhrs=Re.errs=null})});return ke.on(oe,function(){p(o)}).on([ae,ue,se],o)},En=2e3,wn=function(t){var e=[];return i(Kt.custom_urls,function(t){try{e.push(new RegExp(t))}catch(n){A(n&&n.message)}}),e}(),bn=wn.length?function(t){var e=t.url;!Re.ct&&e&&i(wn,function(n){if(e.match(n))return Re.ct=t.end+t.cbTime,!1})}:m,Tn=[],xn={error:990,abort:905,timeout:903},kn="loadstart",In=function(){function t(t){var r=t;return e&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}var e=/(msie|trident)/i.test(ee.userAgent),n=Xt.createElement("a"),r=t(te.href);return function(e){var n=t(e);return n.protocol===r.protocol&&n.host===r.host}}(),Nn=1e4,qn=0;_t.prototype={add:function(t,e){this.len>this.limit||this.get(t)||(this.c[t]=e,this.len++)},get:function(t){return this.c[t]},reset:function(){this.c={},this.len=0}};var Cn=new _t(100),Rn={},Ln=/([a-z]+:\/{2,3}.*):(\d+):(\d+)/;return Et.prototype={increase:function(){this.count++},fix:function(){var t=this,e=t.stack;if(t.module&&e&&qt(e)&&t.filename){e=e.split(/\n/);var n=Ln.exec(e[0])||Ln.exec(e[1]);n&&n[1]!=t.filename&&(t.filename=n[1]||t.filename,t.lineno=n[2]||t.lineno,t.colno=n[3]||t.colno)}},toObject:function(){var t=this;return{o:t.time,e:t.msg,l:t.lineno,c:t.colno,r:t.filename,ec:t.count,s:t.stack,m:t.module,ep:t.ep}}},Re.start()&&(Sn(),yt(),kt()),Re._end=g(),q(function(){be._end=Re._end}),Ve}(function(ty_rum){ty_rum.server = {beacon:"beacon.tingyun.com",beacon_err:"beacon-err.tingyun.com",key:"oUQGQZGPti0",trace_threshold:7000,ignore_err:false,fp_threshold:2000,fs_threshold:4000,dr_threshold:4000,id:"4aFM93gEJaM"};ty_rum.agent={id:'hURMz5HxrV4#sHBikFjUF6A',n:'WebAction/ASP/user%2Fregister.aspx',tid:'245cb7b3ce5569465d2b',q:0,a:250};},window,+new Date);</script><link rel="dns-prefetch" href="https://image.tuandai.com/"><link rel="dns-prefetch" href="https://js.tuandai.com/"><link rel="dns-prefetch" href="https://vip.tuandai.com/"><link rel="dns-prefetch" href="https://hd.tuandai.com/"><link rel="dns-prefetch" href="https://bbs.tuandai.com/"><meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="https://js.tuandai.com/images/default/favicon.ico?v=20150513">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/base20151225.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/public20151225.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/xiamen-bank.css"><link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/cgt20161107.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css/new.css">
<meta name="renderer" content="webkit">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css/new_login.css">
<meta name="keywords" content="团贷网注册,用户注册,会员注册">
<meta name="description" content="团贷网拥有超过200万注册用户，为投资理财用户提供安全、高收益的投资理财产品，为小微企业及个人提供高效的借贷服务。">
<meta http-equiv="pragma" content="no-cache">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/homepage/myRegister.js"></script>
</head>
<body> 
<div class="header">
<div class="t-b  t-b-w lh40 bgff f12 fst cl" style="height: 0px">
<div class="w1200 h40 auto g6" style="height: 0px">
<div class="right-side  r inline-block-debug">
<div class="inline-block-debug c-poi-a" style="margin-top: 0px">
<%-- <a href="${pageContext.request.contextPath }/TuanDaiHome" class="red mr15"><i class="icon dib hous-icon"></i>前往团贷网</a>
</div>
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
<dl class="abs i-b-d vt about-us r0" id="myaccountScroll"><dt><a href="${pageContext.request.contextPath }/jsp/homepage/login.jsp"><i class="account-icon i-b-d icon vm"></i>我的账户</a></dt></dl>
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
<a href="${pageContext.request.contextPath }/loadMoney">我要借款</a>
</li>
</ul>
</div> --%>


<a class="logo dib l" href="https://www.tdw.cn/">
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
<div class="container">
<div class="reg-content">
<input style="display: none" name="txtBorrowerTypeId" id="txtBorrowerTypeId" type="text">
<div class="reg-top">
<p class="fl-l p-l">欢迎注册</p>
<p class="fl-r p-r">我已经注册，<a class="fc-green f14 tdl" href="${pageContext.request.contextPath }/jsp/homepage/login.jsp" style="color:blue">现在登录</a></p>
</div>
<div class="reg-con">
<div class="fl-l reg-c-left">
<div class="form">
<div class="reg-input-group mb25">
<!-- <form id="form_text"> -->
	<label>邮箱账号</label>
	<div class="reg-text">
	<input class="text-input" onpaste="return false" required="required"; name="telno" oncontextmenu="return false" oncopy="return false" oncut="return false" name="txtPhone" id="email"  type="text">
	</div>
	<div class="reg-message" id="emailMsg" style="height: 14px;color: red"></div>
	</div>
	<div class="reg-input-group mb20">
	<label>登录密码</label>
	<div class="reg-text pr">
	<input class="text-input password"  name="password" required="required";  id="password" style="display: inline-block;" type="password"><!-- <input id="txtShowPwd" name="password"  class="text-input password" style="display: none;" type="text"> -->
	<span class="pa hide-sougou-key"></span>
	</div>
	<div class="reg-message" id="passMsg" style="height: 14px;color: red">
	</div>
	</div>
	
	 <div class="reg-input-group mb20">
	<label>邮箱验证</label>
	<div class="reg-text">
	<input class="text-input password" name="message" id="code"  required="required";style="display: inline-block;" type="text">
	<!-- messagenum -->
	<span id="message" onclick="btn()" style="background-color: #48D6A2;width: 100px;height: 100px;color: white;margin: 5px;padding: 8px;" >点击获取验证码</span>
	<span id="code_send"></span>
	</div>
	</div> 
	
<div class="reg-message" id="regMsg" style="height: 14px;color: red;margin-left: 105px;margin-bottom: 30px"></div>
<div class="reg-message" >
<div class="agree1 f14">
<div class="agree_left g6" style="margin-left: 105px">

<input id="agreexieyi" name="agreexieyi" value="" checked="checked" type="checkbox">
我已阅读并同意<span><a class="fc-green f14 tdl" href="${pageContext.request.contextPath }/html/html/agreement.htm" target="_blank">《团贷网服务协议》</a></span> 
</div>
<div class="agree_right"></div>
</div>
<div class="btn-group mt20" style="margin-left: 105px">
<input type="button" value="马上注册" id="submit" style="background-color: #48d6a2;height: 50px;color: white;width: 280px;font-style:微软雅黑 ;margin: auto; border: 0 ;font-size: 16px">
</div>
</div>
<!-- </form> -->




<div class="reg-mail" style="margin-top: 0px">
<a href="" class="tdl">使用手机注册&gt;</a>
</div>
</div>
</div>
<div class="fl-r reg-c-right">
<a href="javascript:void(0)" target="_blank" style="display:block;cursor: pointer;"><img src="${pageContext.request.contextPath }/static/img/1500515223220.gif"></a>
</div>
</div>
</div>
</div>
<div id="diallayer" style="display: none;"></div>
<div style="display: none;" class="dial-window dial-window-w1 z103">
<div class="title rel">团贷网提示你：<i class="close-x icon db abs" onclick="colosenewWindow()"></i></div>
<div class="body">
注册失败：注册成为团贷网会员，一定要同意团贷网协议。
</div>
<div>
<div class="btn-group tc mt20">
<a href="javascript:void(0);" class="td-btn-1 td-btn-1-or btnReg" style="margin: 0 auto" onclick="colosenewWindow()">确认</a>
</div>
</div>
</div>
<input id="hd_extendKey" value="" type="hidden">
<div class="footer fix">
<div class="footer-content auto fix cl">
<div class="address fa f12 tc mt15">
2010-2017 版权所有 © 团贷网 <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12043601号-1</a> 地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼 <br>
东莞团贷网互联网科技服务有限公司
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
<div class="inbid">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
</div>
<div class="g6" style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;" id="divTiQian">
</div>
</div>
</div>
<div id="diallayer" style="display: none;"></div>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/js/js/thirdlib.js"></script>
<script src="${pageContext.request.contextPath }/js/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/settdwcookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/register.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/js/password.js"></script>
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
            hm.src = "${pageContext.request.contextPath }/static/js/hm.js?6dff67da4e4ef03cccffced8222419de";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm,s);
        })();
       var number=0;
       //点击获取验证码
        $(function(){
       	 	//var number=0;
       		 //点击执行计数器
  			$("#messagenum").click(timedown);
  			/* //点击获得手机发送的验证码
  			 $("#messagenum").click(function(){
  				$.ajax({
       		 		url: "/login_num",
       				dataType: "json",
        	 		success: function (data) {
            		number=data;
            		alert(number)
        			}
  				});
  			});  */
  			//失去焦点判断输入的验证码与获取的随机数是否相同
  			$("#messageCode").blur(function(){
  				var code=$("#messageCode").val();
  				if(number==code&&code.length!=0){messagenum
  					$("#code_send").html("ok");
  					$("#messagenum").hide();
  				}else{
  					$("#messageCode").val("验证码错误");
  					$("#messageCode").css({color:"red"});
  					$("#code_send").css({color:"red"});
  					//$("#messageCode").val("");
  					$("#messagenum").show();
  				}
  				//alert(code+"--"+number);
  			});
  			
  			$("#messageCode").focus(function(){
  				$("#messageCode").val("");
  				$("#messageCode").css({color:"#000"});
  			});
  			
  		});
        //计时器
        function timedown(){
	        var timeSec = 59;
			var telno=$("#txtPhone").val();
			
	  		var codeTime = setInterval(function(){
	  			$("#messagenum").attr("disabled",true);
	  			$("#messagenum").html(timeSec+"秒后重新获取验证码");
	  			timeSec--;
	  			if(timeSec<0){
	  				clearInterval(codeTime);
	  				$("#messagenum").attr("disabled",false);
	  				$("#messagenum").html("重新获取验证码");
	  			}
	  		},1000);
	  		$.ajax({
       		 		url: "login_num",
       				dataType: "json",
					data: {telno:telno},
        	 		success: function (data) {
            		number=data;
            		alert(number);
        			}
  				});
		}
        
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/settdwcookie.js"></script>


<img style="display: none;" src="${pageContext.request.contextPath }/static/img/SingleLogin.json"><img style="display: none;" src="${pageContext.request.contextPath }/static/img/SingleLogin.json"></body></html>