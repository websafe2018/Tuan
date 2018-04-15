!function(e, t) {
	"function" == typeof define && "object" == typeof define.amd && define.amd ? define(t) : "object" == typeof exports && "object" == typeof module ? module.exports = t() : t()
}(this, function() {
	function app_js_bridge() {
		function e(e) {
			n = e, _.isJSONString(n) && (n = JSON.parse(n)), a && a(n)
		}
		function t() {
			"object" == typeof window.SensorsData_APP_JS_Bridge && window.SensorsData_APP_JS_Bridge.sensorsdata_call_app && (n = SensorsData_APP_JS_Bridge.sensorsdata_call_app(), _.isJSONString(n) && (n = JSON.parse(n)))
		}
		function r() {
			if (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream) {
				var e = document.createElement("iframe");
				e.setAttribute("src", "sensorsanalytics://getAppInfo"), document.documentElement.appendChild(e), e.parentNode.removeChild(e), e = null
			}
		}
		var n = null,
			a = null;
		window.sensorsdata_app_js_bridge_call_js = function(t) {
			e(t)
		}, sd.getAppStatus = function(e) {
			return r(), t(), e ? void (null === n ? a = e : e(n)) : n
		}
	}
	try {
		var sd = window.sensorsDataAnalytic201505,
			has_declare;
		if (sd ? (sd = window[sd], has_declare = !0) : (sd = {}, has_declare = !1), "function" != typeof sd && "object" != typeof sd || sd.has_load_sdk) return !1;
		sd._t = sd._t || 1 * new Date, sd.has_load_sdk = !0, "object" != typeof JSON && (JSON = {}), function() {
			"use strict";
			function f(e) {
				return 10 > e ? "0" + e : e
			}
			function this_value() {
				return this.valueOf()
			}
			function quote(e) {
				return rx_escapable.lastIndex = 0, rx_escapable.test(e) ? '"' + e.replace(rx_escapable, function(e) {
						var t = meta[e];
						return "string" == typeof t ? t : "\\u" + ("0000" + e.charCodeAt(0).toString(16)).slice(-4)
					}) + '"' : '"' + e + '"'
			}
			function str(e, t) {
				var r,
					n,
					a,
					i,
					o,
					s = gap,
					c = t[e];
				switch (c && "object" == typeof c && "function" == typeof c.toJSON && (c = c.toJSON(e)), "function" == typeof rep && (c = rep.call(t, e, c)), typeof c) {
				case "string":
					return quote(c);case "number":
					return isFinite(c) ? String(c) : "null";case "boolean":
				case "null":
					return String(c);case "object":
					if (!c) return "null";
					if (gap += indent, o = [], "[object Array]" === Object.prototype.toString.apply(c)) {
						for (i = c.length, r = 0; i > r; r += 1) o[r] = str(r, c) || "null";
						return a = 0 === o.length ? "[]" : gap ? "[\n" + gap + o.join(",\n" + gap) + "\n" + s + "]" : "[" + o.join(",") + "]", gap = s, a
					}
					if (rep && "object" == typeof rep)
						for (i = rep.length, r = 0; i > r; r += 1) "string" == typeof rep[r] && (n = rep[r], a = str(n, c), a && o.push(quote(n) + (gap ? ": " : ":") + a));
					else
						for (n in c) Object.prototype.hasOwnProperty.call(c, n) && (a = str(n, c), a && o.push(quote(n) + (gap ? ": " : ":") + a));
					return a = 0 === o.length ? "{}" : gap ? "{\n" + gap + o.join(",\n" + gap) + "\n" + s + "}" : "{" + o.join(",") + "}", gap = s, a
				}
			}
			var rx_one = /^[\],:{}\s]*$/,
				rx_two = /\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,
				rx_three = /"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,
				rx_four = /(?:^|:|,)(?:\s*\[)+/g,
				rx_escapable = /[\\\"\u0000-\u001f\u007f-\u009f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
				rx_dangerous = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;
			"function" != typeof Date.prototype.toJSON && (Date.prototype.toJSON = function() {
				return isFinite(this.valueOf()) ? this.getUTCFullYear() + "-" + f(this.getUTCMonth() + 1) + "-" + f(this.getUTCDate()) + "T" + f(this.getUTCHours()) + ":" + f(this.getUTCMinutes()) + ":" + f(this.getUTCSeconds()) + "Z" : null
			}, Boolean.prototype.toJSON = this_value, Number.prototype.toJSON = this_value, String.prototype.toJSON = this_value);
			var gap,
				indent,
				meta,
				rep;
			"function" != typeof JSON.stringify && (meta = {
				"\b" : "\\b",
				"	" : "\\t",
				"\n" : "\\n",
				"\f" : "\\f",
				"\r" : "\\r",
				'"' : '\\"',
				"\\" : "\\\\"
			}, JSON.stringify = function(e, t, r) {
				var n;
				if (gap = "", indent = "", "number" == typeof r)
					for (n = 0; r > n; n += 1) indent += " ";
				else "string" == typeof r && (indent = r);
				if (rep = t, t && "function" != typeof t && ("object" != typeof t || "number" != typeof t.length))
					throw new Error("JSON.stringify");
				return str("", {
					"" : e
				})
			}), "function" != typeof JSON.parse && (JSON.parse = function(text, reviver) {
				function walk(e, t) {
					var r,
						n,
						a = e[t];
					if (a && "object" == typeof a)
						for (r in a) Object.prototype.hasOwnProperty.call(a, r) && (n = walk(a, r), void 0 !== n ? a[r] = n :
								delete a[r]
							);
					return reviver.call(e, t, a)
				}
				var j;
				if (text = String(text), rx_dangerous.lastIndex = 0, rx_dangerous.test(text) && (text = text.replace(rx_dangerous, function(e) {
						return "\\u" + ("0000" + e.charCodeAt(0).toString(16)).slice(-4)
					})), rx_one.test(text.replace(rx_two, "@").replace(rx_three, "]").replace(rx_four, ""))) return j = eval("(" + text + ")"), "function" == typeof reviver ? walk({
							"" : j
						}, "") : j;
				throw new SyntaxError("JSON.parse")
			})
		}();var _ = sd._ = {};
		sd.para_default = {
			name : "sa",
			max_referrer_string_length : 200,
			max_string_length : 500,
			cross_subdomain : !0,
			show_log : !0,
			debug_mode : !1,
			debug_mode_upload : !1,
			session_time : 0,
			use_client_time : !1,
			source_channel : [],
			vtrack_ignore : {},
			auto_init : !0,
			is_single_page : !1,
			is_trackLink : !0,
			source_type_config : {
				utm : null,
				search : null,
				social : null
			},
			callback_timeout : 1500,
			is_track_device_id : !1,
			use_app_track : !1
		}, sd.initPara = function(e) {
			sd.para = e || sd.para || {};
			var t;
			for (t in sd.para_default) void 0 === sd.para[t] && (sd.para[t] = sd.para_default[t]);
			if ("object" == typeof sd.para.server_url && sd.para.server_url.length)
				for (t = 0; t < sd.para.server_url.length; t++) /sa\.gif[^\/]*$/.test(sd.para.server_url[t]) || (sd.para.server_url[t] = sd.para.server_url[t].replace(/\/sa$/, "/sa.gif").replace(/(\/sa)(\?[^\/]+)$/, "/sa.gif$2"));
			/sa\.gif[^\/]*$/.test(sd.para.server_url) || (sd.para.server_url = sd.para.server_url.replace(/\/sa$/, "/sa.gif").replace(/(\/sa)(\?[^\/]+)$/, "/sa.gif$2")), sd.para.debug_mode_url = sd.para.debug_mode_url || sd.para.server_url.replace("sa.gif", "debug"), sd.para.noCache === !0 ? sd.para.noCache = "?" + (new Date).getTime() : sd.para.noCache = ""
		};var ArrayProto = Array.prototype,
			FuncProto = Function.prototype,
			ObjProto = Object.prototype,
			slice = ArrayProto.slice,
			toString = ObjProto.toString,
			hasOwnProperty = ObjProto.hasOwnProperty,
			LIB_VERSION = "1.8.1.4";
		sd.lib_version = LIB_VERSION;var error_msg = [],
			is_first_visitor = !1,
			just_test_distinctid = 0,
			just_test_distinctid_2 = 0,
			just_test_distinctid_detail = 0,
			just_test_distinctid_detail2 = 0,
			source_channel_standard = "utm_source utm_medium utm_campaign utm_content utm_term",
			logger = "object" == typeof logger ? logger : {};
		logger.info = function() {
			if (!sd.para.show_log) return !1;
			if ("object" == typeof console && console.log) try {
					return console.log.apply(console, arguments)
				} catch (e) {
					console.log(arguments[0])
			}
		}, function() {
			var e = (FuncProto.bind, ArrayProto.forEach),
				t = ArrayProto.indexOf,
				r = Array.isArray,
				n = {},
				a = _.each = function(t, r, a) {
					if (null == t) return !1;
					if (e && t.forEach === e) t.forEach(r, a);
					else if (t.length === +t.length) {
						for (var i = 0, o = t.length; o > i; i++)
							if (i in t && r.call(a, t[i], i, t) === n) return !1
					} else
						for (var s in t)
							if (hasOwnProperty.call(t, s) && r.call(a, t[s], s, t) === n) return !1
				};
			_.logger = logger, _.extend = function(e) {
				return a(slice.call(arguments, 1), function(t) {
						for (var r in t) void 0 !== t[r] && (e[r] = t[r])
					}), e
			}, _.extend2Lev = function(e) {
				return a(slice.call(arguments, 1), function(t) {
						for (var r in t) void 0 !== t[r] && (_.isObject(t[r]) && _.isObject(e[r]) ? _.extend(e[r], t[r]) : e[r] = t[r])
					}), e
			}, _.coverExtend = function(e) {
				return a(slice.call(arguments, 1), function(t) {
						for (var r in t) void 0 !== t[r] && void 0 === e[r] && (e[r] = t[r])
					}), e
			}, _.isArray = r || function(e) {
				return "[object Array]" === toString.call(e)
			}, _.isFunction = function(e) {
				if (!e) return !1;
				try {
					return /^\s*\bfunction\b/.test(e)
				} catch (t) {
					return !1
				}
			}, _.isArguments = function(e) {
				return !(!e || !hasOwnProperty.call(e, "callee"))
			}, _.toArray = function(e) {
				return e ? e.toArray ? e.toArray() : _.isArray(e) ? slice.call(e) : _.isArguments(e) ? slice.call(e) : _.values(e) : []
			}, _.values = function(e) {
				var t = [];
				return null == e ? t : (a(e, function(e) {
					t[t.length] = e
				}), t)
			}, _.include = function(e, r) {
				var i = !1;
				return null == e ? i : t && e.indexOf === t ? -1 != e.indexOf(r) : (a(e, function(e) {
					return i || (i = e === r) ? n : void 0
				}), i)
			}
		}(), _.inherit = function(e, t) {
			return e.prototype = new t, e.prototype.constructor = e, e.superclass = t.prototype, e
		}, _.trim = function(e) {
			return e.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, "")
		}, _.isObject = function(e) {
			return "[object Object]" == toString.call(e) && null != e
		}, _.isEmptyObject = function(e) {
			if (_.isObject(e)) {
				for (var t in e)
					if (hasOwnProperty.call(e, t)) return !1;
				return !0
			}
			return !1
		}, _.isUndefined = function(e) {
			return void 0 === e
		}, _.isString = function(e) {
			return "[object String]" == toString.call(e)
		}, _.isDate = function(e) {
			return "[object Date]" == toString.call(e)
		}, _.isBoolean = function(e) {
			return "[object Boolean]" == toString.call(e)
		}, _.isNumber = function(e) {
			return "[object Number]" == toString.call(e) && /[\d\.]+/.test(String(e))
		}, _.isElement = function(e) {
			return !(!e || 1 !== e.nodeType)
		}, _.isJSONString = function(e) {
			try {
				JSON.parse(e)
			} catch (t) {
				return !1
			} return !0
		}, _.decodeURIComponent = function(e) {
			var t = "";
			try {
				t = decodeURIComponent(e)
			} catch (r) {
				t = e
			} return t
		}, _.encodeDates = function(e) {
			return _.each(e, function(t, r) {
					_.isDate(t) ? e[r] = _.formatDate(t) : _.isObject(t) && (e[r] = _.encodeDates(t))
				}), e
		}, _.hashCode = function(e) {
			if ("string" != typeof e) return 0;
			var t = 0,
				r = null;
			if (0 == e.length) return t;
			for (var n = 0; n < e.length; n++) r = e.charCodeAt(n), t = (t << 5) - t + r, t &= t;
			return t
		}, _.formatDate = function(e) {
			function t(e) {
				return 10 > e ? "0" + e : e
			}
			return e.getFullYear() + "-" + t(e.getMonth() + 1) + "-" + t(e.getDate()) + " " + t(e.getHours()) + ":" + t(e.getMinutes()) + ":" + t(e.getSeconds()) + "." + t(e.getMilliseconds())
		}, _.searchObjDate = function(e) {
			_.isObject(e) && _.each(e, function(t, r) {
				_.isObject(t) ? _.searchObjDate(e[r]) : _.isDate(t) && (e[r] = _.formatDate(t))
			})
		}, _.formatJsonString = function(e) {
			try {
				return JSON.stringify(e, null, "  ")
			} catch (t) {
				return JSON.stringify(e)
			}
		}, _.formatString = function(e) {
			return e.length > sd.para.max_string_length ? (logger.info("字符串长度超过限制，已经做截取--" + e), e.slice(0, sd.para.max_string_length)) : e
		}, _.searchObjString = function(e) {
			_.isObject(e) && _.each(e, function(t, r) {
				_.isObject(t) ? _.searchObjString(e[r]) : _.isString(t) && (e[r] = _.formatString(t))
			})
		}, _.unique = function(e) {
			for (var t, r = [], n = {}, a = 0; a < e.length; a++) t = e[a], t in n || (n[t] = !0, r.push(t));
			return r
		}, _.strip_sa_properties = function(e) {
			return _.isObject(e) ? (_.each(e, function(t, r) {
				if (_.isArray(t)) {
					var n = [];
					_.each(t, function(e) {
						_.isString(e) ? n.push(e) : logger.info("您的数据-", t, "的数组里的值必须是字符串,已经将其删除")
					}), 0 !== n.length ? e[r] = n : (
						delete e[r]
						, logger.info("已经删除空的数组"))
				}
				_.isString(t) || _.isNumber(t) || _.isDate(t) || _.isBoolean(t) || _.isArray(t) || (logger.info("您的数据-", t, "-格式不满足要求，我们已经将其删除"),
				delete e[r]
				)
			}), e) : e
		}, _.strip_empty_properties = function(e) {
			var t = {};
			return _.each(e, function(e, r) {
					null != e && (t[r] = e)
				}), t
		}, _.utf8Encode = function(e) {
			e = (e + "").replace(/\r\n/g, "\n").replace(/\r/g, "\n");
			var t,
				r,
				n,
				a = "",
				i = 0;
			for (t = r = 0, i = e.length, n = 0; i > n; n++) {
				var o = e.charCodeAt(n),
					s = null;
				128 > o ? r++ : s = o > 127 && 2048 > o ? String.fromCharCode(o >> 6 | 192, 63 & o | 128) : String.fromCharCode(o >> 12 | 224, o >> 6 & 63 | 128, 63 & o | 128), null !== s && (r > t && (a += e.substring(t, r)), a += s, t = r = n + 1)
			}
			return r > t && (a += e.substring(t, e.length)), a
		}, _.base64Encode = function(e) {
			var t,
				r,
				n,
				a,
				i,
				o,
				s,
				c,
				l = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
				u = 0,
				d = 0,
				f = "",
				p = [];
			if (!e) return e;
			e = _.utf8Encode(e);
			do t = e.charCodeAt(u++), r = e.charCodeAt(u++), n = e.charCodeAt(u++), c = t << 16 | r << 8 | n, a = c >> 18 & 63, i = c >> 12 & 63, o = c >> 6 & 63, s = 63 & c, p[d++] = l.charAt(a) + l.charAt(i) + l.charAt(o) + l.charAt(s); while (u < e.length);
			switch (f = p.join(""), e.length % 3) {
			case 1:
				f = f.slice(0, -2) + "==";
				break;case 2:
				f = f.slice(0, -1) + "="
			}
			return f
		}, _.UUID = function() {
			var e = function() {
					for (var e = 1 * new Date, t = 0; e == 1 * new Date;) t++;
					return e.toString(16) + t.toString(16)
				},
				t = function() {
					return Math.random().toString(16).replace(".", "")
				},
				r = function(e) {
					function t(e, t) {
						var r,
							n = 0;
						for (r = 0; r < t.length; r++) n |= i[r] << 8 * r;
						return e ^ n
					}
					var r,
						n,
						a = navigator.userAgent,
						i = [],
						o = 0;
					for (r = 0; r < a.length; r++) n = a.charCodeAt(r), i.unshift(255 & n), i.length >= 4 && (o = t(o, i), i = []);
					return i.length > 0 && (o = t(o, i)), o.toString(16)
				};
			return function() {
				var n = String(screen.height * screen.width);
				n = n && /\d{5,}/.test(n) ? n.toString(16) : String(31242 * Math.random()).replace(".", "").slice(0, 8);
				var a = e() + "-" + t() + "-" + r() + "-" + n + "-" + e();
				return a ? (just_test_distinctid_2 = 1, a) : (just_test_distinctid_2 = 2, (String(Math.random()) + String(Math.random()) + String(Math.random())).slice(2, 15))
			}
		}(), _.getQueryParam = function(e, t) {
			t = t.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
			var r = "[\\?&]" + t + "=([^&#]*)",
				n = new RegExp(r),
				a = n.exec(e);
			return null === a || a && "string" != typeof a[1] && a[1].length ? "" : _.decodeURIComponent(a[1]).replace(/\+/g, " ")
		}, _.urlParse = function(e) {
			var t = function(e) {
				this._fields = {
					Username : 4,
					Password : 5,
					Port : 7,
					Protocol : 2,
					Host : 6,
					Path : 8,
					URL : 0,
					QueryString : 9,
					Fragment : 10
				}, this._values = {}, this._regex = null, this._regex = /^((\w+):\/\/)?((\w+):?(\w+)?@)?([^\/\?:]+):?(\d+)?(\/?[^\?#]+)?\??([^#]+)?#?(\w*)/, "undefined" != typeof e && this._parse(e)
			};
			return t.prototype.setUrl = function(e) {
					this._parse(e)
				}, t.prototype._initValues = function() {
					for (var e in this._fields) this._values[e] = ""
				}, t.prototype.getUrl = function() {
					var e = "";
					return e += this._values.Origin, e += this._values.Port ? ":" + this._values.Port : "", e += this._values.Path, e += this._values.QueryString ? "?" + this._values.QueryString : ""
				}, t.prototype._parse = function(e) {
					this._initValues();
					var t = this._regex.exec(e);
					if (!t)
						throw "DPURLParser::_parse -> Invalid URL";
					for (var r in this._fields) "undefined" != typeof t[this._fields[r]] && (this._values[r] = t[this._fields[r]]);
					this._values.Hostname = this._values.Host.replace(/:\d+$/, ""), this._values.Origin = this._values.Protocol + "://" + this._values.Hostname
				}, new t(e)
		}, _.draggable = function(e, t) {
			function r() {
				var e = document;
				return null != e.pageXOffset ? {
					x : e.pageXOffset,
					y : e.pageYOffset
				} : {
					x : e.documentElement.scrollLeft,
					y : e.documentElement.scrollTop
				}
			}
			function n(t) {
				t = t || window.event;var n = r();
				e.style.left = t.clientX + n.x - u + "px", e.style.top = t.clientY + n.y - d + "px", t.stopPropagation ? t.stopPropagation() : t.cancelBubble = !0
			}
			function a(e) {
				e || (e = window.event), document.removeEventListener ? (document.removeEventListener("mouseup", a), document.removeEventListener("mousemove", n)) : document.detachEvent && (document.detachEvent("onmouseup", a), document.detachEvent("onmousemove", n)), e.stopPropagation ? e.stopPropagation() : e.cancelBubble = !0
			}
			var i = r(),
				o = t.clientX + i.x,
				s = t.clientY + i.y,
				c = e.offsetLeft,
				l = e.offsetTop,
				u = o - c,
				d = s - l;
			document.addEventListener ? (document.addEventListener("mousemove", n), document.addEventListener("mouseup", a)) : document.attachEvent && (document.attachEvent("onmousemove", n), document.attachEvent("onmouseup", a)), t.stopPropagation ? t.stopPropagation() : t.cancelBubble = !0, t.preventDefault ? t.preventDefault() : t.returnValue = !1, e.style.bottom = "auto"
		}, _.hasStandardBrowserEnviroment = function() {
			return window ? document ? navigator ? screen ? void 0 : "screen" : "navigator" : "document" : "window"
		}, _.bindReady = function(e, t) {
			t = t || window;
			var r = !1,
				n = !0,
				a = t.document,
				i = a.documentElement,
				o = a.addEventListener,
				s = o ? "addEventListener" : "attachEvent",
				c = o ? "removeEventListener" : "detachEvent",
				l = o ? "" : "on",
				u = function(n) {
					("readystatechange" != n.type || "complete" == a.readyState) && (("load" == n.type ? t : a)[c](l + n.type, u, !1), !r && (r = !0) && e.call(t, n.type || n))
				},
				d = function() {
					try {
						i.doScroll("left")
					} catch (e) {
						return void setTimeout(d, 50)
					} u("poll")
				};
			if ("complete" == a.readyState) e.call(t, "lazy");else {
				if (!o && i.doScroll) {
					try {
						n = !t.frameElement
					} catch (f) {} n && d()
				}
				a[s](l + "DOMContentLoaded", u, !1), a[s](l + "readystatechange", u, !1), t[s](l + "load", u, !1)
			}
		}, _.addEvent = function() {
			function e(e, r, n) {
				var a = function(a) {
					if (a = a || t(window.event)) {
						a.target = a.srcElement;
						var i,
							o,
							s = !0;
						return _.isFunction(n) && (i = n(a)), o = r.call(e, a), (!1 === i || !1 === o) && (s = !1), s
					}
				};
				return a
			}
			function t(e) {
				return e && (e.preventDefault = t.preventDefault, e.stopPropagation = t.stopPropagation), e
			}
			var r = function(t, r, n) {
				if (t && t.addEventListener) t.addEventListener(r, n, !1);else {
					var a = "on" + r,
						i = t[a];
					t[a] = e(t, n, i)
				}
			};
			t.preventDefault = function() {
				this.returnValue = !1
			}, t.stopPropagation = function() {
				this.cancelBubble = !0
			}, t.path1 = function() {
				try {
					var e = function() {
						var e = this.target,
							t = [ e ];
						if (null === e || null === e.parentElement) return [];
						for (; null !== e.parentElement;) e = e.parentElement, t.unshift(e);
						return t
					};
					return this.path || this.composedPath && this.composedPath() || e()
				} catch (t) {
					return []
				}
			}, r.apply(null, arguments)
		}, _.addHashEvent = function(e) {
			var t = "pushState" in window.history ? "popstate" : "hashchange";
			_.addEvent(window, t, e)
		}, _.cookie = {
			get : function(e) {
				for (var t = e + "=", r = document.cookie.split(";"), n = 0; n < r.length; n++) {
					for (var a = r[n]; " " == a.charAt(0);) a = a.substring(1, a.length);
					if (0 == a.indexOf(t)) return _.decodeURIComponent(a.substring(t.length, a.length))
				}
				return null
			},
			set : function(e, t, r, n, a) {
				n = "undefined" == typeof n ? sd.para.cross_subdomain : n;
				var i = "",
					o = "",
					s = "";
				if (r = null == r ? 73e3 : r, n) {
					var c = _.url("domain", location.href);
					i = c ? "; domain=." + c : ""
				}
				if (0 !== r) {
					var l = new Date;
					"s" === String(r).slice(-1) ? l.setTime(l.getTime() + 1e3 * Number(String(r).slice(0, -1))) : l.setTime(l.getTime() + 24 * r * 60 * 60 * 1e3), o = "; expires=" + l.toGMTString()
				}
				a && (s = "; secure"), document.cookie = e + "=" + encodeURIComponent(t) + o + "; path=/" + i + s
			},
			remove : function(e, t) {
				t = "undefined" == typeof t ? sd.para.cross_subdomain : t, _.cookie.set(e, "", -1, t)
			},
			getCookieName : function(e) {
				var t = "";
				return sd.para.cross_subdomain === !1 ? (t = _.url("sub", location.href), t = "string" == typeof t && "" !== t ? "sajssdk_2015_" + e + "_" + t : "sajssdk_2015_root_" + e) : t = "sajssdk_2015_cross_" + e, t
			},
			getNewUser : function() {
				var e = "new_user";
				return null !== this.get("sensorsdata_is_new_user") || null !== this.get(this.getCookieName(e)) ? !0 : !1
			}
		}, _.getEleInfo = function(e) {
			if (!e.target) return !1;
			var t = e.target,
				r = t.tagName.toLowerCase(),
				n = {};
			if (n.$element_type = r, n.$element_name = t.getAttribute("name"), n.$element_id = t.getAttribute("id"), n.$element_class_name = "string" == typeof t.className ? t.className : null, n.$element_target_url = t.getAttribute("href"), t.textContent) {
				var a = _.trim(t.textContent);
				a && (a = a.replace(/[\r\n]/g, " ").replace(/[ ]+/g, " ").substring(0, 255)), n.$element_content = a || ""
			}
			return "input" === r && ("button" === t.type || "submit" === t.type ? n.$element_content = t.value || "" : sd.para.heatmap && "function" == typeof sd.para.heatmap.collect_input && sd.para.heatmap.collect_input(t) && (n.$element_content = t.value || "")), n = _.strip_empty_properties(n), n.$url = location.href, n.$url_path = location.pathname, n.$title = document.title, n
		}, _.localStorage = {
			get : function(e) {
				return window.localStorage.getItem(e)
			},
			parse : function(e) {
				var t;
				try {
					t = JSON.parse(_.localStorage.get(e)) || null
				} catch (r) {} return t
			},
			set : function(e, t) {
				window.localStorage.setItem(e, t)
			},
			remove : function(e) {
				window.localStorage.removeItem(e)
			},
			isSupport : function() {
				var e = !0;
				try {
					var t = "__sensorsdatasupport__",
						r = "testIsSupportStorage";
					_.localStorage.set(t, r), _.localStorage.get(t) !== r && (e = !1), _.localStorage.remove(t)
				} catch (n) {
					e = !1
				} return e
			}
		}, _.xhr = function(e) {
			if (e) {
				var t = new XMLHttpRequest;
				return "withCredentials" in t ? t : "undefined" != typeof XDomainRequest ? new XDomainRequest : t
			}
			if (XMLHttpRequest) return new XMLHttpRequest;
			if (window.ActiveXObject) try {
					return new ActiveXObject("Msxml2.XMLHTTP")
				} catch (r) {
					try {
						return new ActiveXObject("Microsoft.XMLHTTP")
					} catch (r) {}
			}
		}, _.ajax = function(e) {
			function t(e) {
				try {
					return JSON.parse(e)
				} catch (t) {
					return {}
				}
			}
			var r = _.xhr(e.cors);
			e.type || (e.type = e.data ? "POST" : "GET"), e = _.extend({
				success : function() {},
				error : function() {}
			}, e), r.onreadystatechange = function() {
				4 == r.readyState && (r.status >= 200 && r.status < 300 || 304 == r.status ? e.success(t(r.responseText)) : e.error(t(r.responseText), r.status), r.onreadystatechange = null, r.onload = null)
			}, r.open(e.type, e.url, !0);try {
				if (r.withCredentials = !0, _.isObject(e.header))
					for (var n in e.header) r.setRequestHeader(n, e.header[n]);
				e.data && (r.setRequestHeader("X-Requested-With", "XMLHttpRequest"), "application/json" === e.contentType ? r.setRequestHeader("Content-type", "application/json; charset=UTF-8") : r.setRequestHeader("Content-type", "application/x-www-form-urlencoded"))
			} catch (a) {} r.send(e.data || null)
		}, _.url = function() {
			function e() {
				return new RegExp(/(.*?)\.?([^\.]*?)\.?(com|net|org|biz|ws|in|me|co\.uk|co|org\.uk|ltd\.uk|plc\.uk|me\.uk|edu|mil|br\.com|cn\.com|eu\.com|hu\.com|no\.com|qc\.com|sa\.com|se\.com|se\.net|us\.com|uy\.com|ac|co\.ac|gv\.ac|or\.ac|ac\.ac|af|am|as|at|ac\.at|co\.at|gv\.at|or\.at|asn\.au|com\.au|edu\.au|org\.au|net\.au|id\.au|be|ac\.be|adm\.br|adv\.br|am\.br|arq\.br|art\.br|bio\.br|cng\.br|cnt\.br|com\.br|ecn\.br|eng\.br|esp\.br|etc\.br|eti\.br|fm\.br|fot\.br|fst\.br|g12\.br|gov\.br|ind\.br|inf\.br|jor\.br|lel\.br|med\.br|mil\.br|net\.br|nom\.br|ntr\.br|odo\.br|org\.br|ppg\.br|pro\.br|psc\.br|psi\.br|rec\.br|slg\.br|tmp\.br|tur\.br|tv\.br|vet\.br|zlg\.br|br|ab\.ca|bc\.ca|mb\.ca|nb\.ca|nf\.ca|ns\.ca|nt\.ca|on\.ca|pe\.ca|qc\.ca|sk\.ca|yk\.ca|ca|cc|ac\.cn|com\.cn|edu\.cn|gov\.cn|org\.cn|bj\.cn|sh\.cn|tj\.cn|cq\.cn|he\.cn|nm\.cn|ln\.cn|jl\.cn|hl\.cn|js\.cn|zj\.cn|ah\.cn|gd\.cn|gx\.cn|hi\.cn|sc\.cn|gz\.cn|yn\.cn|xz\.cn|sn\.cn|gs\.cn|qh\.cn|nx\.cn|xj\.cn|tw\.cn|hk\.cn|mo\.cn|cn|cx|cz|de|dk|fo|com\.ec|tm\.fr|com\.fr|asso\.fr|presse\.fr|fr|gf|gs|co\.il|net\.il|ac\.il|k12\.il|gov\.il|muni\.il|ac\.in|co\.in|org\.in|ernet\.in|gov\.in|net\.in|res\.in|is|it|ac\.jp|co\.jp|go\.jp|or\.jp|ne\.jp|ac\.kr|co\.kr|go\.kr|ne\.kr|nm\.kr|or\.kr|li|lt|lu|asso\.mc|tm\.mc|com\.mm|org\.mm|net\.mm|edu\.mm|gov\.mm|ms|nl|no|nu|pl|ro|org\.ro|store\.ro|tm\.ro|firm\.ro|www\.ro|arts\.ro|rec\.ro|info\.ro|nom\.ro|nt\.ro|se|si|com\.sg|org\.sg|net\.sg|gov\.sg|sk|st|tf|ac\.th|co\.th|go\.th|mi\.th|net\.th|or\.th|tm|to|com\.tr|edu\.tr|gov\.tr|k12\.tr|net\.tr|org\.tr|com\.tw|org\.tw|net\.tw|ac\.uk|uk\.com|uk\.net|gb\.com|gb\.net|vg|sh|kz|ch|info|ua|gov|name|pro|ie|hk|com\.hk|org\.hk|net\.hk|edu\.hk|us|tk|cd|by|ad|lv|eu\.lv|bz|es|jp|cl|ag|mobi|eu|co\.nz|org\.nz|net\.nz|maori\.nz|iwi\.nz|io|la|md|sc|sg|vc|tw|travel|my|se|tv|pt|com\.pt|edu\.pt|asia|fi|com\.ve|net\.ve|fi|org\.ve|web\.ve|info\.ve|co\.ve|tel|im|gr|ru|net\.ru|org\.ru|hr|com\.hr|ly|xyz)$/)
			}
			function t(e) {
				return _.decodeURIComponent(e.replace(/\+/g, " "))
			}
			function r(e, t) {
				var r = e.charAt(0),
					n = t.split(r);
				return r === e ? n : (e = parseInt(e.substring(1), 10), n[0 > e ? n.length + e : e - 1])
			}
			function n(e, r) {
				for (var n = e.charAt(0), a = r.split("&"), i = [], o = {}, s = [], c = e.substring(1), l = 0, u = a.length; u > l; l++)
					if (i = a[l].match(/(.*?)=(.*)/), i || (i = [ a[l], a[l], "" ]), "" !== i[1].replace(/\s/g, "")) {
						if (i[2] = t(i[2] || ""), c === i[1]) return i[2];
						s = i[1].match(/(.*)\[([0-9]+)\]/), s ? (o[s[1]] = o[s[1]] || [], o[s[1]][s[2]] = i[2]) : o[i[1]] = i[2]
				}
				return n === e ? o : o[c]
			}
			return function(t, a) {
				var i,
					o = {};
				if ("tld?" === t) return e();
				if (a = a || window.location.toString(), !t) return a;
				if (t = t.toString(), i = a.match(/^mailto:([^\/].+)/)) o.protocol = "mailto", o.email = i[1];else {
					if ((i = a.match(/(.*?)\/#\!(.*)/)) && (a = i[1] + i[2]), (i = a.match(/(.*?)#(.*)/)) && (o.hash = i[2], a = i[1]), o.hash && t.match(/^#/)) return n(t, o.hash);
					if ((i = a.match(/(.*?)\?(.*)/)) && (o.query = i[2], a = i[1]), o.query && t.match(/^\?/)) return n(t, o.query);
					if ((i = a.match(/(.*?)\:?\/\/(.*)/)) && (o.protocol = i[1].toLowerCase(), a = i[2]), (i = a.match(/(.*?)(\/.*)/)) && (o.path = i[2], a = i[1]), o.path = (o.path || "").replace(/^([^\/])/, "/$1").replace(/\/$/, ""), t.match(/^[\-0-9]+$/) && (t = t.replace(/^([^\/])/, "/$1")), t.match(/^\//)) return r(t, o.path.substring(1));
					if (i = r("/-1", o.path.substring(1)), i && (i = i.match(/(.*?)\.(.*)/)) && (o.file = i[0], o.filename = i[1], o.fileext = i[2]), (i = a.match(/(.*)\:([0-9]+)$/)) && (o.port = i[2], a = i[1]), (i = a.match(/(.*?)@(.*)/)) && (o.auth = i[1], a = i[2]), o.auth && (i = o.auth.match(/(.*)\:(.*)/), o.user = i ? i[1] : o.auth, o.pass = i ? i[2] : void 0), o.hostname = a.toLowerCase(), "." === t.charAt(0)) return r(t, o.hostname);
					e() && (i = o.hostname.match(e()), i && (o.tld = i[3], o.domain = i[2] ? i[2] + "." + i[3] : void 0, o.sub = i[1] || void 0)), o.port = o.port || ("https" === o.protocol ? "443" : "80"), o.protocol = o.protocol || ("443" === o.port ? "https" : "http")
				}
				return t in o ? o[t] : "{}" === t ? o : ""
			}
		}(), _.ry = function(e) {
			return new _.ry.init(e)
		}, _.ry.init = function(e) {
			this.ele = e
		}, _.ry.init.prototype = {
			addClass : function(e) {
				var t = " " + this.ele.className + " ";
				return -1 === t.indexOf(" " + e + " ") && (this.ele.className = this.ele.className + ("" === this.ele.className ? "" : " ") + e), this
			},
			removeClass : function(e) {
				var t = " " + this.ele.className + " ";
				return -1 !== t.indexOf(" " + e + " ") && (this.ele.className = t.replace(" " + e + " ", " ").slice(1, -1)), this
			},
			hasClass : function(e) {
				var t = " " + this.ele.className + " ";
				return -1 !== t.indexOf(" " + e + " ") ? !0 : !1
			},
			attr : function(e, t) {
				return "string" == typeof e && _.isUndefined(t) ? this.ele.getAttribute(e) : ("string" == typeof e && (t = String(t), this.ele.setAttribute(e, t)), this)
			},
			offset : function() {
				var e = this.ele.getBoundingClientRect();
				if (e.width || e.height) {
					var t = this.ele.ownerDocument,
						r = t.documentElement;
					return {
						top : e.top + window.pageYOffset - r.clientTop,
						left : e.left + window.pageXOffset - r.clientLeft
					}
				}
				return {
					top : 0,
					left : 0
				}
			},
			getSize : function() {
				if (!window.getComputedStyle) return {
						width : this.ele.offsetWidth,
						height : this.ele.offsetHeight
					};
				try {
					var e = this.ele.getBoundingClientRect();
					return {
						width : e.width,
						height : e.height
					}
				} catch (t) {
					return {
						width : 0,
						height : 0
					}
				}
			},
			getStyle : function(e) {
				return this.ele.currentStyle ? this.ele.currentStyle[e] : this.ele.ownerDocument.defaultView.getComputedStyle(this.ele, null).getPropertyValue(e)
			},
			wrap : function(e) {
				var t = document.createElement(e);
				return this.ele.parentNode.insertBefore(t, this.ele), t.appendChild(this.ele), _.ry(t)
			},
			getCssStyle : function(e) {
				var t = this.ele.style.getPropertyValue(e);
				if (t) return t;
				var r = getMatchedCSSRules(this.ele);
				if (!r || !_.isArray(r)) return null;
				for (var n = r.length - 1; n >= 0; n--) {
					var a = r[n];
					if (t = a.style.getPropertyValue(e)) return t
				}
			}
		}, _.querySelectorAll = function(e) {
			if ("string" != typeof e) return logger.info("错误", e), [];
			try {
				return document.querySelectorAll(e)
			} catch (t) {
				return logger.info("错误", e), []
			}
		}, _.getReferrer = function(e) {
			var e = e || document.referrer;
			return "string" != typeof e ? "取值异常" : (0 === e.indexOf("https://www.baidu.com/") && (e = e.split("?")[0]), e = e.slice(0, sd.para.max_referrer_string_length), "string" == typeof e ? e : "")
		}, _.getKeywordFromReferrer = function() {
			var e = {
				baidu : "wd",
				google : "q",
				bing : "q",
				yahoo : "p",
				sogou : "query",
				so : "q"
			};
			if (document && "string" == typeof document.referrer) {
				if (0 === document.referrer.indexOf("http")) {
					var t = _.url("domain", document.referrer),
						r = _.url("?", document.referrer);
					for (var n in e)
						if (0 === t.indexOf(n) && "object" == typeof r && r[e[n]]) return r[e[n]];
					return "未取到值"
				}
				return "未取到值"
			}
			return "取值异常"
		}, _.getSourceFromReferrer = function() {
			function e(e, t) {
				for (var r = 0; r < e.length; r++)
					if (-1 !== t.split("?")[0].indexOf(e[r])) return !0
			}
			var t = [ "www.baidu.", "so.com", "sogou.com", "youdao.com", "google.", "yahoo.com/", "bing.com/", "ask.com/" ],
				r = [ "weibo.com", "renren.com", "kaixin001.com", "douban.com", "qzone.qq.com", "zhihu.com", "tieba.baidu.com", "weixin.qq.com" ],
				n = document.referrer || "",
				a = _.info.pageProp.url;
			if (a) {
				var i = a.match(/(utm_source|utm_medium|utm_campaign|utm_content|utm_term)\=[^&]+/);
				return i && i[0] ? "付费广告流量" : e(t, n) ? "自然搜索流量" : e(r, n) ? "社交网站流量" : "" === n ? "直接流量" : "引荐流量"
			}
			return "获取url异常"
		}, _.info = {
			initPage : function() {
				var e = _.getReferrer(),
					t = e ? _.url("hostname", e) : e,
					r = e ? _.url("domain", e) : e,
					n = location.href,
					a = n ? _.url("hostname", n) : n,
					i = n ? _.url("domain", n) : n;
				this.pageProp = {
					referrer : e,
					referrer_host : t,
					referrer_domain : r,
					url : n,
					url_host : a,
					url_domain : i
				}
			},
			pageProp : {},
			campaignParams : function() {
				var e = source_channel_standard.split(" "),
					t = "",
					r = {};
				return _.isArray(sd.para.source_channel) && sd.para.source_channel.length > 0 && (e = e.concat(sd.para.source_channel), e = _.unique(e)), _.each(e, function(e) {
						t = _.getQueryParam(location.href, e), t.length && (r[e] = t)
					}), r
			},
			campaignParamsStandard : function(e, t) {
				e = e || "", t = t || "";
				var r = _.info.campaignParams(),
					n = {},
					a = {};
				for (var i in r) -1 !== (" " + source_channel_standard + " ").indexOf(" " + i + " ") ? n[e + i] = r[i] : a[t + i] = r[i];
				return {
					$utms : n,
					otherUtms : a
				}
			},
			properties : function() {
				return {
					$screen_height : Number(screen.height) || 0,
					$screen_width : Number(screen.width) || 0,
					$lib : "js",
					$lib_version : String(LIB_VERSION)
				}
			},
			currentProps : {},
			register : function(e) {
				_.extend(_.info.currentProps, e)
			}
		}, sd.sendState = {}, sd.sendState._complete = 0, sd.sendState._receive = 0, sd.sendState.getSendCall = function(e, t) {
			if (sd.is_heatmap_render_mode) return !1;
			e._nocache = (String(Math.random()) + String(Math.random()) + String(Math.random())).replace(/\./g, "").slice(0, 15);
			var r = e;
			if (e = JSON.stringify(e), logger.info(_.formatJsonString(r)), sd.para.use_app_track)
				if ("object" == typeof SensorsData_APP_JS_Bridge && SensorsData_APP_JS_Bridge.sensorsdata_track) SensorsData_APP_JS_Bridge.sensorsdata_track(e), "function" == typeof t && t();
				else if (/sa-sdk-ios/.test(navigator.userAgent) && !window.MSStream) {
					var n = document.createElement("iframe");
					n.setAttribute("src", "sensorsanalytics://trackEvent?event=" + encodeURIComponent(e)), document.documentElement.appendChild(n), n.parentNode.removeChild(n), n = null, "function" == typeof t && t()
				} else this.prepareServerUrl(e, t);
			else this.prepareServerUrl(e, t)
		}, sd.sendState.getUrlPara = function(e, t) {
			var r = _.base64Encode(t),
				n = "crc=" + _.hashCode(r);
			return -1 !== e.indexOf("?") ? e + "&data=" + encodeURIComponent(r) + "&ext=" + encodeURIComponent(n) : e + "?data=" + encodeURIComponent(r) + "&ext=" + encodeURIComponent(n)
		}, sd.sendState.prepareServerUrl = function(e, t) {
			if (_.isArray(sd.para.server_url))
				for (var r = 0; r < sd.para.server_url.length; r++) this.sendCall(this.getUrlPara(sd.para.server_url[r], e), t);
			else this.sendCall(this.getUrlPara(sd.para.server_url, e), t)
		}, sd.sendState.stateInfo = function(e) {
			this.callback = e.callback, this.hasCalled = !1, this.img = document.createElement("img"), this.server_url = e.server_url, this.sendState = e.sendState, this.start()
		}, sd.sendState.stateInfo.prototype.start = function() {
			function e() {
				"object" != typeof t || "function" != typeof t.callback || t.hasCalled || (t.hasCalled = !0, t.callback(),
				delete t
				)
			}
			var t = this;
			setTimeout(e, sd.para.callback_timeout), this.img.onload = function(r) {
				this.onload = null, ++t.sendState._complete, e()
			}, this.img.onerror = function(t) {
				this.onerror = null, e()
			}, this.img.onabort = function(t) {
				this.onabort = null, e()
			}, this.img.src = this.server_url
		}, sd.sendState.sendCall = function(e, t) {
			++this._receive;
			var r = "_state" + this._receive;
			this[r] = new this.stateInfo({
				callback : t,
				server_url : e,
				sendState : this
			})
		};var saNewUser = {
				checkIsAddSign : function(e) {
					"track" === e.type && (_.cookie.getNewUser() ? e.properties.$is_first_day = !0 : e.properties.$is_first_day = !1)
				},
				is_first_visit_time : !1,
				checkIsFirstTime : function(e) {
					"track" === e.type && "$pageview" === e.event && (this.is_first_visit_time ? (e.properties.$is_first_time = !0, this.is_first_visit_time = !1) : e.properties.$is_first_time = !1)
				},
				setDeviceId : function(e) {
					var t = null,
						r = _.cookie.get("sensorsdata2015jssdkcross"),
						n = {};
					null != r && _.isJSONString(r) && (n = JSON.parse(r), n.$device_id && (t = n.$device_id)), t = t || e, sd.para.cross_subdomain === !0 ? store.set("$device_id", t) : (n.$device_id = t, _.cookie.set("sensorsdata2015jssdkcross", JSON.stringify(n), null, !0)), sd.para.is_track_device_id && (_.info.currentProps.$device_id = t)
				},
				storeInitCheck : function() {
					if (is_first_visitor) {
						var e = new Date,
							t = {
								h : 23 - e.getHours(),
								m : 59 - e.getMinutes(),
								s : 59 - e.getSeconds()
							};
						_.cookie.set(_.cookie.getCookieName("new_user"), "1", 3600 * t.h + 60 * t.m + t.s + "s"), this.is_first_visit_time = !0
					} else _.cookie.getNewUser() || (this.checkIsAddSign = function(e) {
							"track" === e.type && (e.properties.$is_first_day = !1)
						}), this.checkIsFirstTime = function(e) {
							"track" === e.type && "$pageview" === e.event && (e.properties.$is_first_time = !1)
					}
				},
				checkIsFirstLatest : function() {
					var e = _.info.pageProp.url_domain,
						t = _.info.pageProp.referrer_domain;
					e === t ? store.getProps() && store.getProps().$latest_referrer || sd.register({
						$latest_referrer : "取值异常",
						$latest_referrer_host : "取值异常",
						$latest_traffic_source_type : "取值异常",
						$latest_search_keyword : "取值异常"
					}) : sd.register({
						$latest_traffic_source_type : _.getSourceFromReferrer(),
						$latest_referrer : _.info.pageProp.referrer,
						$latest_referrer_host : _.info.pageProp.referrer_host,
						$latest_search_keyword : _.getKeywordFromReferrer()
					});
					var r = _.info.campaignParamsStandard("$latest_", "_latest_"),
						n = r.$utms,
						a = r.otherUtms;
					_.isEmptyObject(n) || sd.register(n), _.isEmptyObject(a) || sd.register(a)
				}
			},
			saEvent = {};
		saEvent.checkOption = {
			regChecks : {
				regName : /^((?!^distinct_id$|^original_id$|^time$|^properties$|^id$|^first_id$|^second_id$|^users$|^events$|^event$|^user_id$|^date$|^datetime$)[a-zA-Z_$][a-zA-Z\d_$]{0,99})$/i
			},
			checkPropertiesKey : function(e) {
				var t = this,
					r = !0;
				return _.each(e, function(e, n) {
						t.regChecks.regName.test(n) || (r = !1)
					}), r
			},
			check : function(e, t) {
				return "string" == typeof this[e] ? this[this[e]](t) : this[e](t)
			},
			str : function(e) {
				return _.isString(e) ? !0 : (logger.info("请检查参数格式,必须是字符串"), !0)
			},
			properties : function(e) {
				return _.strip_sa_properties(e), e ? _.isObject(e) ? this.checkPropertiesKey(e) ? !0 : (logger.info("properties里的key必须是由字符串数字_组成，且不能是系统保留字"), !0) : (logger.info("properties可以没有，但有的话必须是对象"), !0) : !0
			},
			propertiesMust : function(e) {
				return _.strip_sa_properties(e), void 0 === e || !_.isObject(e) || _.isEmptyObject(e) ? (logger.info("properties必须是对象且有值"), !0) : this.checkPropertiesKey(e) ? !0 : (logger.info("properties里的key必须是由字符串数字_组成，且不能是系统保留字"), !0)
			},
			event : function(e) {
				return _.isString(e) && this.regChecks.regName.test(e) ? !0 : (logger.info("请检查参数格式,必须是字符串,且eventName必须是字符串_开头,且不能是系统保留字"), !0)
			},
			test_id : "str",
			group_id : "str",
			distinct_id : function(e) {
				return _.isString(e) && /^.{1,255}$/.test(e) ? !0 : (logger.info("distinct_id必须是不能为空，且小于255位的字符串"),
				!1)
			}
		}, saEvent.check = function(e) {
			var t = !0;
			for (var r in e)
				if (!this.checkOption.check(r, e[r])) return !1;
			return t
		}, saEvent.send = function(e, t) {
			var r = {
				distinct_id : store.getDistinctId(),
				lib : {
					$lib : "js",
					$lib_method : "code",
					$lib_version : String(LIB_VERSION)
				},
				properties : {}
			};
			if (_.isObject(e) && _.isObject(e.properties) && !_.isEmptyObject(e.properties) && e.properties.$lib_detail && (r.lib.$lib_detail = e.properties.$lib_detail,
				delete e.properties.$lib_detail
				), "string" != typeof store.getDistinctId() || "" == typeof store.getDistinctId()) {
				var n = "";
				switch (store.getDistinctId()) {
				case null:
					n = "null";
					break;case void 0:
					n = "undefined";
					break;case "":
					n = "空";
					break;default:
					n = String(store.getDistinctId())
				}
				error_msg.push("distinct_id-" + just_test_distinctid + "-" + just_test_distinctid_2 + "-" + n + "-" + just_test_distinctid_detail + "-" + just_test_distinctid_detail2)
			}
			_.extend(r, e), error_msg.length > 0 && (r.jssdk_error = error_msg.join("--")), _.isObject(e.properties) && !_.isEmptyObject(e.properties) && _.extend(r.properties, e.properties), _.isObject(t) && _.extend(r.lib, t), e.type && "profile" === e.type.slice(0, 7) || (r.properties = _.extend({}, _.info.properties(), store.getProps(), store.getSessionProps(), _.info.currentProps, r.properties)), r.properties.$time && _.isDate(r.properties.$time) ? (r.time = 1 * r.properties.$time,
			delete r.properties.$time
				) : sd.para.use_client_time && (r.time = 1 * new Date), _.searchObjDate(r), _.searchObjString(r), saNewUser.checkIsAddSign(r), saNewUser.checkIsFirstTime(r), sd.para.debug_mode === !0 ? (logger.info(r), this.debugPath(JSON.stringify(r), t)) : sd.sendState.getSendCall(r, t)
		}, saEvent.debugPath = function(e, t) {
			var r = e,
				n = "";
			n = -1 !== sd.para.debug_mode_url.indexOf("?") ? sd.para.debug_mode_url + "&data=" + encodeURIComponent(_.base64Encode(e)) : sd.para.debug_mode_url + "?data=" + encodeURIComponent(_.base64Encode(e)), _.ajax({
				url : n,
				type : "GET",
				cors : !0,
				header : {
					"Dry-Run" : String(sd.para.debug_mode_upload)
				},
				success : function(e) {
					_.isEmptyObject(e) === !0 ? alert("debug数据发送成功" + r) : alert("debug失败 错误原因" + JSON.stringify(e))
				}
			})
		};var store = sd.store = {
				_sessionState : {},
				_state : {},
				getProps : function() {
					return this._state.props
				},
				getSessionProps : function() {
					return this._sessionState
				},
				getDistinctId : function() {
					return this._state.distinct_id
				},
				getFirstId : function() {
					return this._state.first_id
				},
				toState : function(e) {
					var t = null;
					if (null != e && _.isJSONString(e))
						if (t = JSON.parse(e), this._state = _.extend(t), t.distinct_id) {
							if ("object" == typeof t.props) {
								for (var r in t.props) "string" == typeof t.props[r] && (t.props[r] = t.props[r].slice(0, sd.para.max_referrer_string_length));
								this.save()
							}
						} else this.set("distinct_id", _.UUID()), error_msg.push("toStateParseDistinctError");
					else this.set("distinct_id", _.UUID()), error_msg.push("toStateParseError")
				},
				initSessionState : function() {
					var e = _.cookie.get("sensorsdata2015session"),
						t = null;
					null !== e && "object" == typeof (t = JSON.parse(e)) && (this._sessionState = t || {})
				},
				setOnce : function(e, t) {
					e in this._state || this.set(e, t)
				},
				set : function(e, t) {
					this._state = this._state || {}, this._state[e] = t, this.save()
				},
				change : function(e, t) {
					this._state[e] = t
				},
				setSessionProps : function(e) {
					var t = this._sessionState;
					_.extend(t, e), this.sessionSave(t)
				},
				setSessionPropsOnce : function(e) {
					var t = this._sessionState;
					_.coverExtend(t, e), this.sessionSave(t)
				},
				setProps : function(e) {
					var t = this._state.props || {};
					_.extend(t, e), this.set("props", t)
				},
				setPropsOnce : function(e) {
					var t = this._state.props || {};
					_.coverExtend(t, e), this.set("props", t)
				},
				clearAllProps : function() {
					this._sessionState = {};
					for (var e in this._state.props) 1 !== e.indexOf("latest_") &&
						delete this._state.props[e];
					this.sessionSave({}), this.save()
				},
				sessionSave : function(e) {
					this._sessionState = e, _.cookie.set("sensorsdata2015session", JSON.stringify(this._sessionState), 0)
				},
				save : function() {
					_.cookie.set(this.getCookieName(), JSON.stringify(this._state), 73e3, sd.para.cross_subdomain)
				},
				getCookieName : function() {
					var e = "";
					return sd.para.cross_subdomain === !1 ? (e = _.url("sub", location.href), e = "string" == typeof e && "" !== e ? "sa_jssdk_2015_" + e : "sa_jssdk_2015_root") : e = "sensorsdata2015jssdkcross", e
				},
				init : function() {
					navigator.cookieEnabled || (error_msg.push("cookieNotEnable"), _.localStorage.isSupport || error_msg.push("localStorageNotEnable")), this.initSessionState();
					var e = _.UUID(),
						t = _.cookie.get(this.getCookieName());
					null === t ? (is_first_visitor = !0, just_test_distinctid = 1, this.set("distinct_id", e)) : (just_test_distinctid = 2, just_test_distinctid_detail = JSON.stringify(t), just_test_distinctid_detail2 = navigator.userAgent + "^_^" + document.cookie, _.isJSONString(t) && JSON.parse(t).distinct_id || (is_first_visitor = !0), this.toState(t)), saNewUser.setDeviceId(e), saNewUser.storeInitCheck(), saNewUser.checkIsFirstLatest()
				}
			},
			commonWays = {
				getUtm : function() {
					return _.info.campaignParams()
				},
				getStayTime : function() {
					return (new Date - sd._t) / 1e3
				},
				setInitReferrer : function() {
					var e = _.getReferrer();
					sd.setOnceProfile({
						_init_referrer : e,
						_init_referrer_host : _.info.pageProp.referrer_host
					})
				},
				setSessionReferrer : function() {
					var e = _.getReferrer();
					store.setSessionPropsOnce({
						_session_referrer : e,
						_session_referrer_host : _.info.pageProp.referrer_host
					})
				},
				setDefaultAttr : function() {
					_.info.register({
						_current_url : location.href,
						_referrer : _.getReferrer(),
						_referring_host : _.info.pageProp.referrer_host
					})
				},
				allTrack : function() {
					return document && document.body ? sd.para.heatmap ? !1 : (sd.para.heatmap = {}, heatmap.init(), !1) : (setTimeout(this.allTrack, 1e3), !1)
				},
				trackHeatMap : function(e) {
					if ("object" == typeof e && e.tagName) {
						var t = e.tagName.toLowerCase(),
							r = e.parentNode.tagName.toLowerCase();
						"button" !== t && "a" !== t && "a" !== r && "button" !== r && "input" !== t && "textarea" !== t && heatmap.start(null, e, t)
					}
				},
				autoTrackWithoutProfile : function(e) {
					this.autoTrack(_.extend(e, {
						not_set_profile : !0
					}))
				},
				autoTrack : function(e, t) {
					e = _.isObject(e) ? e : {};
					var r = _.info.campaignParams(),
						n = {};
					for (var a in r) -1 !== (" " + source_channel_standard + " ").indexOf(" " + a + " ") ? n["$" + a] = r[a] : n[a] = r[a];
					is_first_visitor && !e.not_set_profile && sd.setOnceProfile(_.extend({
						$first_visit_time : new Date,
						$first_referrer : _.getReferrer(),
						$first_browser_language : navigator.language || "取值异常",
						$first_browser_charset : document.charset || "取值异常",
						$first_referrer_host : _.info.pageProp.referrer_host,
						$first_traffic_source_type : _.getSourceFromReferrer(),
						$first_search_keyword : _.getKeywordFromReferrer()
					}, n)), e.not_set_profile &&
					delete e.not_set_profile;
					var i = location.href;
					sd.para.is_single_page && _.addHashEvent(function() {
						var r = _.getReferrer(i);
						sd.track("$pageview", _.extend({
							$referrer : r,
							$referrer_host : _.url("hostname", r) || "",
							$url : location.href,
							$url_path : location.pathname,
							$title : document.title
						}, n, e), t), i = location.href
					}), sd.track("$pageview", _.extend({
						$referrer : _.getReferrer(),
						$referrer_host : _.info.pageProp.referrer_host,
						$url : location.href,
						$url_path : location.pathname,
						$title : document.title
					}, n, e), t)
				}
			};
		sd.quick = function() {
			var e = slice.call(arguments),
				t = e[0],
				r = e.slice(1);
			return "string" == typeof t && commonWays[t] ? commonWays[t].apply(commonWays, r) : void ("function" == typeof t ? t.apply(sd, r) : logger.info("quick方法中没有这个功能" + e[0]))
		}, sd.track = function(e, t, r) {
			saEvent.check({
				event : e,
				properties : t
			}) && saEvent.send({
				type : "track",
				event : e,
				properties : t
			}, r)
		}, _.trackLink = function(e, t, r) {
			function n(e) {
				function n() {
					i || (i = !0, location.href = a.href)
				}
				e.preventDefault();var i = !1;
				setTimeout(n, 1e3), sd.track(t, r, n)
			}
			e = e || {};
			var a = null;
			return e.ele && (a = e.ele), e.event && (a = e.target ? e.target : e.event.target), r = r || {}, a && "object" == typeof a ? !a.href || /^javascript/.test(a.href) || a.target || a.download || a.onclick ? (sd.track(t, r), !1) : (e.event && n(e.event), void (e.ele && _.addEvent(e.ele, "click", function(e) {
					n(e)
				}))) : !1
		}, sd.trackLink = function(e, t, r) {
			_.trackLink({
				ele : e
			}, t, r)
		}, sd.trackLinks = function(e, t, r) {
			return r = r || {}, e && "object" == typeof e ? !e.href || /^javascript/.test(e.href) || e.target ? !1 : void _.addEvent(e, "click", function(n) {
					function a() {
						i || (i = !0, location.href = e.href)
					}
					n.preventDefault();
					var i = !1;
					setTimeout(a, 1e3), sd.track(t, r, a)
				}) : !1
		}, sd.setProfile = function(e, t) {
			saEvent.check({
				propertiesMust : e
			}) && saEvent.send({
				type : "profile_set",
				properties : e
			}, t)
		}, sd.setOnceProfile = function(e, t) {
			saEvent.check({
				propertiesMust : e
			}) && saEvent.send({
				type : "profile_set_once",
				properties : e
			}, t)
		}, sd.appendProfile = function(e, t) {
			saEvent.check({
				propertiesMust : e
			}) && (_.each(e, function(t, r) {
				_.isString(t) ? e[r] = [ t ] : _.isArray(t) || (
				delete e[r]
				, logger.info("appendProfile属性的值必须是字符串或者数组"))
			}), _.isEmptyObject(e) || saEvent.send({
				type : "profile_append",
				properties : e
			}, t))
		}, sd.incrementProfile = function(e, t) {
			function r(e) {
				for (var t in e)
					if (!/-*\d+/.test(String(e[t]))) return !1;
				return !0
			}
			var n = e;
			_.isString(e) && (e = {}, e[n] = 1), saEvent.check({
				propertiesMust : e
			}) && (r(e) ? saEvent.send({
				type : "profile_increment",
				properties : e
			}, t) : logger.info("profile_increment的值只能是数字"))
		}, sd.deleteProfile = function(e) {
			saEvent.send({
				type : "profile_delete"
			}, e), store.set("distinct_id", _.UUID())
		}, sd.unsetProfile = function(e, t) {
			var r = e,
				n = {};
			_.isString(e) && (e = [], e.push(r)), _.isArray(e) ? (_.each(e, function(e) {
				_.isString(e) ? n[e] = !0 : logger.info("profile_unset给的数组里面的值必须时string,已经过滤掉", e)
			}), saEvent.send({
				type : "profile_unset",
				properties : n
			}, t)) : logger.info("profile_unset的参数是数组")
		}, sd.identify = function(e, t) {
			"number" == typeof e && (e = String(e));
			var r = store.getFirstId();
			"undefined" == typeof e ? r ? store.set("first_id", _.UUID()) : store.set("distinct_id", _.UUID()) : saEvent.check({
				distinct_id : e
			}) ? t === !0 ? r ? store.set("first_id", e) : store.set("distinct_id", e) : r ? store.change("first_id", e) : store.change("distinct_id", e) : logger.info("identify的参数必须是字符串")
		}, sd.trackSignup = function(e, t, r, n) {
			saEvent.check({
				distinct_id : e,
				event : t,
				properties : r
			}) && (saEvent.send({
				original_id : store.getFirstId() || store.getDistinctId(),
				distinct_id : e,
				type : "track_signup",
				event : t,
				properties : r
			}, n), store.set("distinct_id", e))
		}, sd.trackAbtest = function(e, t) {}, sd.registerPage = function(e) {
			saEvent.check({
				properties : e
			}) ? _.extend(_.info.currentProps, e) : logger.info("register输入的参数有误")
		}, sd.clearAllRegister = function() {
			store.clearAllProps()
		}, sd.register = function(e) {
			saEvent.check({
				properties : e
			}) ? store.setProps(e) : logger.info("register输入的参数有误")
		}, sd.registerOnce = function(e) {
			saEvent.check({
				properties : e
			}) ? store.setPropsOnce(e) : logger.info("registerOnce输入的参数有误")
		}, sd.registerSession = function(e) {
			saEvent.check({
				properties : e
			}) ? store.setSessionProps(e) : logger.info("registerSession输入的参数有误")
		}, sd.registerSessionOnce = function(e) {
			saEvent.check({
				properties : e
			}) ? store.setSessionPropsOnce(e) : logger.info("registerSessionOnce输入的参数有误")
		}, sd.login = function(e) {
			if ("number" == typeof e && (e = String(e)), saEvent.check({
					distinct_id : e
				})) {
				var t = store.getFirstId(),
					r = store.getDistinctId();
				e !== r && (t ? sd.trackSignup(e, "$SignUp") : (store.set("first_id", r), sd.trackSignup(e, "$SignUp")))
			} else logger.info("login的参数必须是字符串")
		}, sd.logout = function(e) {
			var t = store.getFirstId();
			t ? (store.set("first_id", ""), e === !0 ? store.set("distinct_id", _.UUID()) : store.set("distinct_id", t)) : logger.info("没有first_id，logout失败")
		};var heatmap_render = {
				heatDataElement : [],
				setRefresh : function() {
					var e = this,
						t = document.createElement("div");
					t.setAttribute("style", "border-radius:3px;font-size:14px;cursor:move;z-index:99999;padding:10px 16px;background:#3790e9;color:#fff;position: fixed;left:10px;bottom:10px;"), t.innerHTML = '<!-- <svg width="15px" height="13px" viewBox="0 0 15 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-145.000000, -1953.000000)" fill="#FFFFFF"><g transform="translate(132.000000, 1941.000000)"><path d="M27.8813854,14.6046259 L25.720853,15.6691713 C24.4905498,13.2443736 21.804888,11.6623409 18.7741412,12.0615454 C15.7734018,12.4607499 13.3728103,14.900333 13.042729,17.8574034 C12.592618,21.8494485 15.7583981,25.2352941 19.7193742,25.2352941 C22.5700766,25.2352941 24.9706681,23.4906226 25.9459084,21.0214688 L24.2804981,20.4744107 L24.2654944,20.4744107 C23.3952799,22.5295747 21.1297217,23.8602564 18.639108,23.342769 C16.7936532,22.9583499 15.2932835,21.4798147 14.9031874,19.646431 C14.2430247,16.5119364 16.6436163,13.7470755 19.7193742,13.7470755 C21.6548511,13.7470755 23.3052578,14.8411916 24.1154574,16.4380096 L21.8649028,17.5616964 C21.804888,17.5912671 21.804888,17.6947645 21.8799065,17.7095499 L26.3960193,19.1732998 C26.4410304,19.1880851 26.4860415,19.1585144 26.5010452,19.1141583 L27.9864112,14.6637674 C28.0314223,14.6341967 27.9564038,14.5750552 27.8813854,14.6046259 L27.8813854,14.6046259 Z" id="refresh"></path></g></g></g></svg> --> <span style="cursor:pointer;" title="当页面有内容更切换时候，点击刷新数据，重新计算">刷新数据</span>', document.body.appendChild(t), _.addEvent(t, "click", function(t) {
						t.target && t.target.tagName && "span" === t.target.tagName.toLowerCase() && (e.refreshHeatData(), e.showErrorInfo(5))
					}), _.addEvent(t, "mousedown", function(e) {
						e.target && e.target.tagName && "span" !== e.target.tagName.toLowerCase() && _.draggable(t, e)
					})
				},
				showErrorInfo : function(e, t) {
					var r = document.createElement("div");
					r.setAttribute("style", "background:#e55b41;border:none;border-radius:8px;color:#fff;font-size:18px;left:50%;margin-left:-300px;padding:15px;position: fixed;text-align: center;top: 0;width:600px;z-index:9999;"), 1 === e ? r.innerHTML = "当前页面在所选时间段内暂时没有点击数据" : 2 === e ? t.error ? r.innerHTML = t.error : r.innerHTML = "请求数据异常" : 3 === e ? r.innerHTML = "当前页面在所选时间段内暂时没有点击数据" : 4 === e ? t.error ? r.innerHTML = t.error : r.innerHTML = "请求数据异常" : 5 === e && (r.style.backgroundColor = "#3790e9", r.innerHTML = "刷新点击图数据成功"), document.body.appendChild(r), setTimeout(function() {
						document.body.removeChild(r)
					}, 5e3)
				},
				requestType : 1,
				getRequestInfo : function(e, t) {
					var r = this;
					if ("string" == typeof e && sd.para.web_url) {
						var n = new _.urlParse(sd.para.web_url);
						n._values.Path = "/api/heat_map/report/" + e;
						var a = new _.urlParse(sd.para.web_url);
						a._values.Path = "/api/heat_map/report/path/" + e;
						var i = a.getUrl();
						i = -1 === i.indexOf("?") ? i + "?pathUrl=" + t : i + "&pathUrl=" + t, t ? (this.requestType = 3, _.ajax({
							url : i,
							type : "POST",
							cors : !0,
							header : {
								cors : "true"
							},
							success : function(e) {
								r.bindEffect(), r.calculateHeatData(e)
							},
							error : function(e) {
								r.showErrorInfo(2, e), sessionStorage.removeItem("sensors_heatmap_id"), 0 === location.href.indexOf("http://www.notrack.com:8080/sdk_test.html") && (r.bindEffect(), r.calculateHeatData(window.data_sa_heat_test_data_test_201703130440 || {}))
							}
						})) : (this.requestType = 1, _.ajax({
							url : n.getUrl(),
							type : "POST",
							cors : !0,
							header : {
								cors : "true"
							},
							success : function(e) {
								r.bindEffect(), r.calculateHeatData(e)
							},
							error : function(e) {
								r.showErrorInfo(4, e), sessionStorage.removeItem("sensors_heatmap_id"), 0 === location.href.indexOf("http://www.notrack.com:8080/sdk_test.html") && (r.bindEffect(), r.calculateHeatData(window.data_sa_heat_test_data_test_201703130440 || {}))
							}
						}))
					} else _.logger.info("缺少web_url")
				},
				calculateHeatData : function(e) {
					this.ajaxHeatData = e;
					var t = this;
					if (!_.isObject(e) || !_.isArray(e.rows) || !_.isObject(e.rows[0])) return t.showErrorInfo(t.requestType), !1;
					var r = parseInt(e.page_view, 10),
						n = e.heat_map_id;
					e = e.rows;
					var a = 0,
						i = [];
					_.each(e, function(e) {
						e.by_values[0] && _.querySelectorAll(e.by_values[0])[0] && i.push(e)
					}), 0 === i.length && t.showErrorInfo(t.requestType), e = i, _.each(e, function(e, t) {
						e.value_fix = e.values[0][0], a += e.value_fix
					}), t.data_render = e, _.each(e, function(e, i) {
						if (e.by_values[0]) {
							e.data_page_percent = Number(e.value_fix / a * 100).toFixed(2) + "%", e.data_click_percent = Number(e.value_fix / r * 100).toFixed(2) + "%", e.data_click = Number(e.value_fix / r), e.data_page = Number(e.value_fix / a);
							var o = new _.urlParse(sd.para.web_url);
							o._values.Path = "/web-click/users", e.data_user_link = o.getUrl() + "#heat_map_id=" + n + "&element_selector=" + encodeURIComponent(e.by_values[0]), "null" === String(e.top_values[0]) ? e.data_top_value = "没有值" : e.data_top_value = String(e.top_values[0]);
							var s = _.querySelectorAll(e.by_values[0]);
							"object" == typeof s && s.length > 0 && t.renderHeatData(s, e, i)
						}
					})
				},
				heatData : function(e) {
					for (var t = [ .005, .01, .025, .05, .1, .5 ], r = 0; r < t.length; r++)
						if (e < t[r]) return r;
					return 6
				},
				heatDataTitle : function(e) {
					return "点击次数 " + e.value_fix + "\r\n点击概率 " + e.data_click_percent + "\r\n点击占比 " + e.data_page_percent + "\r\n历史数据 " + String(e.top_values[0]).slice(0, 30)
				},
				renderHeatData : function(e, t, r) {
					var n = _.ry(e[0]);
					if ("input" === n.ele.tagName.toLowerCase() || "textarea" === n.ele.tagName.toLowerCase()) {
						var a = n.getCssStyle("width");
						n = n.wrap("span"), "string" == typeof a && "%" === a.slice(-1) && (n.ele.style.width = a), n.ele.style.display = "inline-block"
					}
					this.heatDataElement.push(n), n.attr("data-heat-place", String(r)).addClass("sa-click-area").attr("data-click", t.data_click_percent).addClass("sa-click-area" + this.heatData(t.data_click)), "inline" === n.getStyle("display") && (e[0].style.display = "inline-block")
				},
				refreshHeatData : function() {
					_.each(this.heatDataElement, function(e) {
						e.removeClass("sa-click-area")
					}), this.heatDataElement = [], this.calculateHeatData(this.ajaxHeatData)
				},
				is_fix_state : null,
				showEffectBox : function(e, t, r) {
					if ("fixslidedown" === this.is_fix_state) t.style.position = "fixed", t.style.left = "auto", t.style.right = 0, t.style.top = 0, r && (t.className = "sa-heat-box-effect-2017314");
					else if ("notfix" === this.is_fix_state) {
						var n = heatmap.getBrowserWidth(),
							a = e.target,
							i = _.ry(a).offset(),
							o = _.ry(a).getSize(),
							s = i.left + o.width + 2,
							c = i.top + 1;
						s + 220 > n && (s = i.left - 220, i.left < 220 && (s = e.pageX)), t.style.position = "absolute", t.style.left = s + "px", t.style.top = c + "px"
					}
					"block" !== t.style.display && (t.style.display = "block")
				},
				bindEffect : function() {
					function e(e) {
						n = e;var t = e.target,
							a = t.getAttribute("data-heat-place"),
							u = r.data_render[a];
						if (!u) return !1;
						var d = _.trim(t.textContent);
						d && (d = d.replace(/[\r\n]/g, " ").replace(/[ ]+/g, " ").substring(0, 255)), u.data_current_content = d || "没有值", o = i.replace(/\{\{[^\{\{]+\}\}/g, function(e) {
							return e = e.slice(2, -2), "string" == typeof e && "object" == typeof u ? u[e] : void 0
						}), l.innerHTML = o, r.showEffectBox(e, c, s)
					}
					function t(t) {
						var r = t.target;
						setTimeout(function() {
							r === d && e(t)
						}, u)
					}
					var r = this,
						n = null,
						a = !1,
						r = this,
						i = '<div style="padding: 8px;"><div style="color: #CACACA">当前内容：</div><div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">{{data_current_content}}</div></div><div style="background: #444; height:1px;"></div><div style="padding: 8px;"><table style="width:100%;"><tr><td>点击次数: </td><td style="text-align:right;">{{value_fix}}次</td></tr><tr><td style="cursor:pointer;" title="点击次数/当前页面的浏览次数"><span style="float:left;">点击率</span><span style="float:left;margin-left:3px;"><svg width="12px" height="12px" viewBox="0 0 12 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-1803.000000, -158.000000)" fill="#979797"><g transform="translate(1737.000000, 84.000000)"><path d="M71,74 C68.24,74 66,76.24 66,79 C66,81.76 68.24,84 71,84 C73.76,84 76,81.76 76,79 C76,76.24 73.76,74 71,74 L71,74 Z M71.5,82.5 L70.5,82.5 L70.5,81.5 L71.5,81.5 L71.5,82.5 L71.5,82.5 Z M72.535,78.625 L72.085,79.085 C71.725,79.45 71.5,79.75 71.5,80.5 L70.5,80.5 L70.5,80.25 C70.5,79.7 70.725,79.2 71.085,78.835 L71.705,78.205 C71.89,78.025 72,77.775 72,77.5 C72,76.95 71.55,76.5 71,76.5 C70.45,76.5 70,76.95 70,77.5 L69,77.5 C69,76.395 69.895,75.5 71,75.5 C72.105,75.5 73,76.395 73,77.5 C73,77.94 72.82,78.34 72.535,78.625 L72.535,78.625 Z" id="prompt"></path></g></g></g></svg></span></td><td style="text-align:right;">{{data_click_percent}}</td></tr><tr><td style="cursor:pointer;" title="点击次数/当前页面的点击总次数"><span style="float:left;">点击占比</span> <span style="float:left;margin-left:3px;"><svg width="12px" height="12px" viewBox="0 0 12 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-1803.000000, -158.000000)" fill="#979797"><g transform="translate(1737.000000, 84.000000)"><path d="M71,74 C68.24,74 66,76.24 66,79 C66,81.76 68.24,84 71,84 C73.76,84 76,81.76 76,79 C76,76.24 73.76,74 71,74 L71,74 Z M71.5,82.5 L70.5,82.5 L70.5,81.5 L71.5,81.5 L71.5,82.5 L71.5,82.5 Z M72.535,78.625 L72.085,79.085 C71.725,79.45 71.5,79.75 71.5,80.5 L70.5,80.5 L70.5,80.25 C70.5,79.7 70.725,79.2 71.085,78.835 L71.705,78.205 C71.89,78.025 72,77.775 72,77.5 C72,76.95 71.55,76.5 71,76.5 C70.45,76.5 70,76.95 70,77.5 L69,77.5 C69,76.395 69.895,75.5 71,75.5 C72.105,75.5 73,76.395 73,77.5 C73,77.94 72.82,78.34 72.535,78.625 L72.535,78.625 Z" id="prompt"></path></g></g></g></svg></span></td><td style="text-align:right;">{{data_page_percent}}</td></tr></table></div><div style="background: #444; height:1px;"></div><div style="padding: 8px;"><div style="color: #CACACA;">历史内容：</div><div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">{{data_top_value}}</div></div><div style="background: #444; height:1px;"></div><div style="padding: 6px 8px;"><a style="color:#2a90e2;text-decoration: none;" href="{{data_user_link}}" target="_blank">查看用户列表</a ></div>',
						o = "",
						s = !0,
						c = document.createElement("div");
					document.body.appendChild(c), c.setAttribute("style", 'border-radius:3px;display:none;border:1px solid #000;position: fixed; right:0; top:0; background: #333;line-height:24px;font-size:13px;width:220px;color: #fff;font-family: "Helvetica Neue", Helvetica, Arial, "PingFang SC", "Hiragino Sans GB", "Heiti SC", "Microsoft YaHei", "WenQuanYi Micro Hei", sans-serif;box-shadow: 0 2px 4px rgba(0,0,0,0.24);z-index:99999;'), c.innerHTML = '<div id="sa_heat_float_right_box_content" style="clear:both;"></div>';
					var l = document.getElementById("sa_heat_float_right_box_content");
					_.addEvent(c, "mouseleave", function() {
						"notfix" === r.is_fix_state && (a = !1, c.style.display = "none")
					}), _.addEvent(c, "mouseenter", function() {
						"notfix" === r.is_fix_state && (a = !0)
					}), _.addEvent(c, "animationend", function() {
						c.className = ""
					}), this.is_fix_state = "notfix";
					var u = 600,
						d = null;
					/iPhone|Android/i.test(navigator.userAgent) ? _.addEvent(document, "mouseover", function(e) {
						var n = e.target,
							i = n.className;
						return d = n, "string" != typeof i || -1 === (" " + i + " ").indexOf(" sa-click-area ") ? !1 : (n.onmouseleave = function() {
								"notfix" === r.is_fix_state && setTimeout(function() {
									a || (a = !1, c.style.display = "none")
								}, u)
							}, void t(e))
					}) : _.addEvent(document, "mouseover", function(e) {
						var r = e.target,
							n = r.className;
						return d = r, "string" != typeof n || -1 === (" " + n + " ").indexOf(" sa-click-area ") ? !1 : void t(e)
					})
				},
				setCssStyle : function() {
					var e = '.sa-heat-box-head-2017322{border-bottom:1px solid rgba(0,0,0,.06);cursor:move;height:30px;background:#e1e1e1;color:#999;clear:both}.sa-heat-box-effect-2017314{animation-duration:.5s;animation-fill-mode:both;animation-iteration-count:1;animation-name:sa-heat-box-effect-2017314}@keyframes sa-heat-box-effect-2017314{0%{opacity:.6}to{opacity:1}}.sa-click-area{position:relative}.sa-click-area:before{cursor:pointer;content:"";width:100%;position:absolute;left:0;top:0;bottom:0}.sa-click-area.sa-click-area0:before{background:hsla(60,98%,80%,.75);box-shadow:0 0 0 2px #fefe9b inset}.sa-click-area.sa-click-area0:hover:before,input.sa-click-area.sa-click-area0,textarea.sa-click-area.sa-click-area0{background:hsla(60,98%,80%,.85)}.sa-click-area.sa-click-area1:before{background:rgba(255,236,142,.75);box-shadow:0 0 0 2px #ffec8e inset}.sa-click-area.sa-click-area1:hover:before,input.sa-click-area.sa-click-area1,textarea.sa-click-area.sa-click-area1{background:rgba(255,236,142,.85)}.sa-click-area.sa-click-area2:before{background:rgba(255,188,113,.75);box-shadow:0 0 0 2px #ffbc71 inset}.sa-click-area.sa-click-area2:hover:before,input.sa-click-area.sa-click-area2,textarea.sa-click-area.sa-click-area2{background:rgba(255,188,113,.85)}.sa-click-area.sa-click-area3:before{background:rgba(255,120,82,.75);box-shadow:0 0 0 2px #ff7852 inset}.sa-click-area.sa-click-area3:hover:before,input.sa-click-area.sa-click-area3,textarea.sa-click-area.sa-click-area3{background:rgba(255,120,82,.85)}.sa-click-area.sa-click-area4:before{background:rgba(255,65,90,.75);box-shadow:0 0 0 2px #ff415a inset}.sa-click-area.sa-click-area4:hover:before,input.sa-click-area.sa-click-area4,textarea.sa-click-area.sa-click-area4{background:rgba(255,65,90,.85)}.sa-click-area.sa-click-area5:before{background:rgba(199,0,18,.75);box-shadow:0 0 0 2px #c70012 inset}.sa-click-area.sa-click-area5:hover:before,input.sa-click-area.sa-click-area5,textarea.sa-click-area.sa-click-area5{background:rgba(199,0,18,.85)}.sa-click-area.sa-click-area6:before{background:rgba(127,0,79,.75);box-shadow:0 0 0 3px #7f004f inset}.sa-click-area.sa-click-area6:hover:before,input.sa-click-area.sa-click-area6,textarea.sa-click-area.sa-click-area6{background:rgba(127,0,79,.85)}.sa-click-area .sa-click-area:before{background:0 0!important}.sa-click-area:after{height:14px;line-height:14px;margin:-7px 0 0 -28px;width:56px;color:#fff;content:attr(data-click);font-size:14px;font-weight:700;left:50%;line-height:1em;position:absolute;text-align:center;text-indent:0;text-shadow:1px 1px 2px #000;top:50%;z-index:10}',
						t = document.createElement("style");
					t.type = "text/css";try {
						t.appendChild(document.createTextNode(e))
					} catch (r) {
						t.styleSheet.cssText = e
					} document.getElementsByTagName("head")[0].appendChild(t)
				}
			},
			heatmap = {
				getDomIndex : function(e) {
					var t = [].indexOf;
					if (!e.parentNode) return -1;
					var r = e.parentNode.children;
					if (!r) return -1;
					var n = r.length;
					if (t) return t.call(r, e);
					for (var a = 0; n > a; ++a)
						if (e == r[a]) return a;
					return -1
				},
				selector : function(e) {
					var t = e.parentNode && 9 == e.parentNode.nodeType ? -1 : this.getDomIndex(e);
					return e.tagName.toLowerCase() + (e.id ? "#" + e.id : "") + (~t ? ":nth-child(" + (t + 1) + ")" : "")
				},
				getDomSelector : function(e, t) {
					if (!e || !e.parentNode || !e.parentNode.children) return !1;
					t = t && t.join ? t : [];
					var r = e.nodeName.toLowerCase();
					return e && "body" !== r && 1 == e.nodeType ? (t.unshift(this.selector(e)), e.id ? t.join(" > ") : this.getDomSelector(e.parentNode, t)) : (t.unshift("body"), t.join(" > "))
				},
				na : function() {
					var e = document.documentElement.scrollLeft || window.pageXOffset;
					return parseInt(isNaN(e) ? 0 : e, 10)
				},
				i : function() {
					var e = 0;
					try {
						e = o.documentElement.scrollTop || m.pageYOffset, e = isNaN(e) ? 0 : e
					} catch (t) {
						e = 0
					} return parseInt(e, 10)
				},
				getBrowserWidth : function() {
					var e = window.innerWidth || document.body.clientWidth;
					return isNaN(e) ? 0 : parseInt(e, 10)
				},
				getBrowserHeight : function() {
					var e = window.innerHeight || document.body.clientHeight;
					return isNaN(e) ? 0 : parseInt(e, 10)
				},
				getScrollWidth : function() {
					var e = parseInt(document.body.scrollWidth, 10);
					return isNaN(e) ? 0 : e
				},
				getScrollHeight : function() {
					var e = parseInt(document.body.scrollHeight, 10);
					return isNaN(e) ? 0 : e
				},
				W : function(e) {
					var t = parseInt(+e.clientX + +this.na(), 10),
						e = parseInt(+e.clientY + +this.i(), 10);
					return {
						x : isNaN(t) ? 0 : t,
						y : isNaN(e) ? 0 : e
					}
				},
				start : function(e, t, r) {
					var n = this.getDomSelector(t),
						a = _.getEleInfo({
							target : t
						});
					a.$element_selector = n ? n : "", "a" === r && sd.para.heatmap && sd.para.heatmap.isTrackLink === !0 ? _.trackLink({
						event : e,
						target : t
					}, "$WebClick", a) : sd.track("$WebClick", a)
				},
				sendIframeData : function() {
					var e = this;
					_.bindReady(function() {
						window && window.parent && window.parent.window && window !== window.parent.window && (window.parent.window.postMessage({
							method : "setHeight",
							params : {
								height : e.getScrollHeight()
							}
						}, sd.para.web_url), window.parent.window.postMessage({
							method : "setUrl",
							params : {
								url : location.href
							}
						}, sd.para.web_url))
					})
				},
				prepare : function(e) {
					function t(e, t) {
						return document.querySelectorAll ? (heatmap_render.setCssStyle(), void setTimeout(function() {
							heatmap_render.getRequestInfo(e, t), heatmap_render.setRefresh(), n.sendIframeData()
						}, sd.para.heatmap.loadTimeout || 0)) : (alert("请更新到最新版浏览器,建议用chrome或者firefox"), !1)
					}
					var r = location.search.match(/sa-request-id=([^&]+)/),
						n = this;
					r && r[0] && r[1] ? (sd.is_heatmap_render_mode = !0, "object" == typeof window.sessionStorage && sessionStorage.setItem && sessionStorage.setItem("sensors_heatmap_id", r[1]), t(r[1])) : "object" == typeof window.sessionStorage && sessionStorage.setItem && "string" == typeof sessionStorage.getItem("sensors_heatmap_id") ? (sd.is_heatmap_render_mode = !0, t(sessionStorage.getItem("sensors_heatmap_id"), location.href)) : (e(), _.isObject(sd.para.heatmap) && this.init())
				},
				init : function() {
					var e = this;
					return _.isObject(sd.para.heatmap) ? _.isFunction(sd.para.heatmap.collect_url) && !sd.para.heatmap.collect_url() ? !1 : ("all" === sd.para.heatmap.collect_elements ? sd.para.heatmap.collect_elements = "all" : sd.para.heatmap.collect_elements = "interact", void ("all" === sd.para.heatmap.collect_elements ? _.addEvent(document, "click", function(t) {
						var r = t || window.event,
							n = r.target || r.srcElement,
							a = n.tagName.toLowerCase();
						if ("body" === a.toLowerCase() || "html" === a.toLowerCase()) return !1;
						if (!n || !n.parentNode || !n.parentNode.children) return !1;
						var i = n.parentNode.tagName.toLowerCase();
						"a" === i || "button" === i ? e.start(r, n.parentNode, n.parentNode.tagName.toLowerCase()) : e.start(r, n, a)
					}) : _.addEvent(document, "click", function(t) {
						var r = t || window.event,
							n = r.target || r.srcElement,
							a = n.tagName.toLowerCase();
						if ("body" === a.toLowerCase() || "html" === a.toLowerCase()) return !1;
						if (!n || !n.parentNode || !n.parentNode.children) return !1;
						var i = n.parentNode.tagName.toLowerCase();
						("button" === a || "a" === a || "a" === i || "button" === i || "input" === a || "textarea" === a) && ("a" === i || "button" === i ? e.start(r, n.parentNode, n.parentNode.tagName.toLowerCase()) : e.start(r, n, a))
					}))) : !1
				}
			};
		return sd.init = function(e) {
				(!e && has_declare || e && !has_declare) && (sd.initPara(e), sd._init())
			}, sd._init = function() {
				heatmap.prepare(function() {
					app_js_bridge(), _.info.initPage(), store.init(), sd._q && _.isArray(sd._q) && sd._q.length > 0 && _.each(sd._q, function(e) {
						sd[e[0]].apply(sd, slice.call(e[1]))
					})
				})
			}, sd.init(), sd
	} catch (err) {
		if ("object" == typeof console && console.log) try {
				console.log(err)
			} catch (e) {}
	}
});