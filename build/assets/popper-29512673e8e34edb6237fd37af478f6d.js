//# sourceMappingURL=popper.js.map
/*

 Copyright (c) 2016 Federico Zivolo and contributors

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/
var process=process||{env:{NODE_ENV:"development"}};
(function(H,A){"object"===typeof exports&&"undefined"!==typeof module?module.exports=A():"function"===typeof define&&define.amd?define(A):H.Popper=A()})(this,function(){function H(a){var b=!1;return function(){b||(b=!0,window.Promise.resolve().then(function(){b=!1;a()}))}}function A(a){var b=!1;return function(){b||(b=!0,setTimeout(function(){b=!1;a()},la))}}function R(a){var b={};return a&&"[object Function]"===b.toString.call(a)}function v(a,b){if(1!==a.nodeType)return[];a=a.ownerDocument.defaultView.getComputedStyle(a,
null);return b?a[b]:a}function I(a){return"HTML"===a.nodeName?a:a.parentNode||a.host}function B(a){if(!a)return document.body;switch(a.nodeName){case "HTML":case "BODY":return a.ownerDocument.body;case "#document":return a.body}var b=v(a);return/(auto|scroll|overlay)/.test(b.overflow+b.overflowY+b.overflowX)?a:B(I(a))}function w(a){return 11===a?S:10===a?T:S||T}function x(a){if(!a)return document.documentElement;for(var b=w(10)?document.body:null,c=a.offsetParent||null;c===b&&a.nextElementSibling;)c=
(a=a.nextElementSibling).offsetParent;return(b=c&&c.nodeName)&&"BODY"!==b&&"HTML"!==b?-1!==["TH","TD","TABLE"].indexOf(c.nodeName)&&"static"===v(c,"position")?x(c):c:a?a.ownerDocument.documentElement:document.documentElement}function J(a){return null!==a.parentNode?J(a.parentNode):a}function E(a,b){if(!(a&&a.nodeType&&b&&b.nodeType))return document.documentElement;var c=a.compareDocumentPosition(b)&Node.DOCUMENT_POSITION_FOLLOWING,d=c?a:b,e=c?b:a;c=document.createRange();c.setStart(d,0);c.setEnd(e,
0);c=c.commonAncestorContainer;if(a!==c&&b!==c||d.contains(e))return a=c.nodeName,a="BODY"===a?!1:"HTML"===a||x(c.firstElementChild)===c,a?c:x(c);d=J(a);return d.host?E(d.host,b):E(a,J(b).host)}function y(a){var b="top"===(1<arguments.length&&void 0!==arguments[1]?arguments[1]:"top")?"scrollTop":"scrollLeft",c=a.nodeName;return"BODY"===c||"HTML"===c?(c=a.ownerDocument.documentElement,(a.ownerDocument.scrollingElement||c)[b]):a[b]}function ma(a,b){var c=2<arguments.length&&void 0!==arguments[2]?arguments[2]:
!1,d=y(b,"top"),e=y(b,"left");c=c?-1:1;a.top+=d*c;a.bottom+=d*c;a.left+=e*c;a.right+=e*c;return a}function U(a,b){b="x"===b?"Left":"Top";var c="Left"===b?"Right":"Bottom";return parseFloat(a["border"+b+"Width"])+parseFloat(a["border"+c+"Width"])}function V(a,b,c,d){return Math.max(b["offset"+a],b["scroll"+a],c["client"+a],c["offset"+a],c["scroll"+a],w(10)?parseInt(c["offset"+a])+parseInt(d["margin"+("Height"===a?"Top":"Left")])+parseInt(d["margin"+("Height"===a?"Bottom":"Right")]):0)}function W(a){var b=
a.body;a=a.documentElement;var c=w(10)&&getComputedStyle(a);return{height:V("Height",b,a,c),width:V("Width",b,a,c)}}function t(a){return r({},a,{right:a.left+a.width,bottom:a.top+a.height})}function K(a){var b={};try{if(w(10)){b=a.getBoundingClientRect();var c=y(a,"top"),d=y(a,"left");b.top+=c;b.left+=d;b.bottom+=c;b.right+=d}else b=a.getBoundingClientRect()}catch(e){}b={left:b.left,top:b.top,width:b.right-b.left,height:b.bottom-b.top};d="HTML"===a.nodeName?W(a.ownerDocument):{};c=a.offsetWidth-(d.width||
a.clientWidth||b.width);d=a.offsetHeight-(d.height||a.clientHeight||b.height);if(c||d)a=v(a),c-=U(a,"x"),d-=U(a,"y"),b.width-=c,b.height-=d;return t(b)}function L(a,b){var c=2<arguments.length&&void 0!==arguments[2]?arguments[2]:!1,d=w(10),e="HTML"===b.nodeName,f=K(a),g=K(b),h=B(a),l=v(b),k=parseFloat(l.borderTopWidth),n=parseFloat(l.borderLeftWidth);c&&e&&(g.top=Math.max(g.top,0),g.left=Math.max(g.left,0));f=t({top:f.top-g.top-k,left:f.left-g.left-n,width:f.width,height:f.height});f.marginTop=0;
f.marginLeft=0;!d&&e&&(e=parseFloat(l.marginTop),l=parseFloat(l.marginLeft),f.top-=k-e,f.bottom-=k-e,f.left-=n-l,f.right-=n-l,f.marginTop=e,f.marginLeft=l);if(d&&!c?b.contains(h):b===h&&"BODY"!==h.nodeName)f=ma(f,b);return f}function na(a){var b=1<arguments.length&&void 0!==arguments[1]?arguments[1]:!1,c=a.ownerDocument.documentElement,d=L(a,c),e=Math.max(c.clientWidth,window.innerWidth||0),f=Math.max(c.clientHeight,window.innerHeight||0),g=b?0:y(c);b=b?0:y(c,"left");return t({top:g-d.top+d.marginTop,
left:b-d.left+d.marginLeft,width:e,height:f})}function X(a){var b=a.nodeName;return"BODY"===b||"HTML"===b?!1:"fixed"===v(a,"position")?!0:(a=I(a))?X(a):!1}function Y(a){if(!a||!a.parentElement||w())return document.documentElement;for(a=a.parentElement;a&&"none"===v(a,"transform");)a=a.parentElement;return a||document.documentElement}function M(a,b,c,d){var e=4<arguments.length&&void 0!==arguments[4]?arguments[4]:!1,f={top:0,left:0},g=e?Y(a):E(a,b&&b.referenceNode?b.referenceNode:b);if("viewport"===
d)f=na(g,e);else{if("scrollParent"===d){var h=B(I(b));"BODY"===h.nodeName&&(h=a.ownerDocument.documentElement)}else h="window"===d?a.ownerDocument.documentElement:d;e=L(h,g,e);"HTML"!==h.nodeName||X(g)?f=e:(h=W(a.ownerDocument),g=h.height,h=h.width,f.top+=e.top-e.marginTop,f.bottom=g+e.top,f.left+=e.left-e.marginLeft,f.right=h+e.left)}c=c||0;e="number"===typeof c;f.left+=e?c:c.left||0;f.top+=e?c:c.top||0;f.right-=e?c:c.right||0;f.bottom-=e?c:c.bottom||0;return f}function Z(a,b,c,d,e){var f=5<arguments.length&&
void 0!==arguments[5]?arguments[5]:0;if(-1===a.indexOf("auto"))return a;f=M(c,d,f,e);var g={top:{width:f.width,height:b.top-f.top},right:{width:f.right-b.right,height:f.height},bottom:{width:f.width,height:f.bottom-b.bottom},left:{width:b.left-f.left,height:f.height}};f=Object.keys(g).map(function(l){var k=g[l];return r({key:l},g[l],{area:k.width*k.height})}).sort(function(l,k){return k.area-l.area});var h=f.filter(function(l){var k=l.height;return l.width>=c.clientWidth&&k>=c.clientHeight});f=0<
h.length?h[0].key:f[0].key;h=a.split("-")[1];return f+(h?"-"+h:"")}function aa(a,b,c){var d=3<arguments.length&&void 0!==arguments[3]?arguments[3]:null,e=d?Y(b):E(b,c&&c.referenceNode?c.referenceNode:c);return L(c,e,d)}function ba(a){var b=a.ownerDocument.defaultView.getComputedStyle(a),c=parseFloat(b.marginTop||0)+parseFloat(b.marginBottom||0);b=parseFloat(b.marginLeft||0)+parseFloat(b.marginRight||0);return{width:a.offsetWidth+b,height:a.offsetHeight+c}}function F(a){var b={left:"right",right:"left",
bottom:"top",top:"bottom"};return a.replace(/left|right|bottom|top/g,function(c){return b[c]})}function ca(a,b,c){c=c.split("-")[0];a=ba(a);var d={width:a.width,height:a.height},e=-1!==["right","left"].indexOf(c),f=e?"top":"left",g=e?"left":"top",h=e?"height":"width";d[f]=b[f]+b[h]/2-a[h]/2;d[g]=c===g?b[g]-a[e?"width":"height"]:b[F(g)];return d}function C(a,b){return Array.prototype.find?a.find(b):a.filter(b)[0]}function oa(a,b,c){if(Array.prototype.findIndex)return a.findIndex(function(e){return e[b]===
c});var d=C(a,function(e){return e[b]===c});return a.indexOf(d)}function da(a,b,c){(void 0===c?a:a.slice(0,oa(a,"name",c))).forEach(function(d){d["function"]&&console.warn("`modifier.function` is deprecated, use `modifier.fn`!");var e=d["function"]||d.fn;d.enabled&&R(e)&&(b.offsets.popper=t(b.offsets.popper),b.offsets.reference=t(b.offsets.reference),b=e(b,d))});return b}function ea(a,b){return a.some(function(c){var d=c.name;return c.enabled&&d===b})}function N(a){for(var b=[!1,"ms","Webkit","Moz",
"O"],c=a.charAt(0).toUpperCase()+a.slice(1),d=0;d<b.length;d++){var e=b[d];e=e?""+e+c:a;if("undefined"!==typeof document.body.style[e])return e}return null}function fa(a){return(a=a.ownerDocument)?a.defaultView:window}function ha(a,b,c,d){var e="BODY"===a.nodeName;a=e?a.ownerDocument.defaultView:a;a.addEventListener(b,c,{passive:!0});e||ha(B(a.parentNode),b,c,d);d.push(a)}function pa(a,b){fa(a).removeEventListener("resize",b.updateBound);b.scrollParents.forEach(function(c){c.removeEventListener("scroll",
b.updateBound)});b.updateBound=null;b.scrollParents=[];b.scrollElement=null;b.eventsEnabled=!1;return b}function O(a){return""!==a&&!isNaN(parseFloat(a))&&isFinite(a)}function P(a,b){Object.keys(b).forEach(function(c){var d="";-1!=="width height top right bottom left".split(" ").indexOf(c)&&O(b[c])&&(d="px");a.style[c]=b[c]+d})}function qa(a,b){Object.keys(b).forEach(function(c){!1!==b[c]?a.setAttribute(c,b[c]):a.removeAttribute(c)})}function ra(a,b){var c=a.offsets,d=c.popper,e=Math.round,f=Math.floor,
g=function(k){return k};c=e(c.reference.width);var h=e(d.width),l=-1!==["left","right"].indexOf(a.placement);a=-1!==a.placement.indexOf("-");f=b?l||a||c%2===h%2?e:f:g;e=b?e:g;return{left:f(1===c%2&&1===h%2&&!a&&b?d.left-1:d.left),top:e(d.top),bottom:e(d.bottom),right:f(d.right)}}function ia(a,b,c){var d=C(a,function(f){return f.name===b});a=!!d&&a.some(function(f){return f.name===c&&f.enabled&&f.order<d.order});if(!a){var e="`"+b+"`";console.warn("`"+c+"` modifier is required by "+e+" modifier in order to work, be sure to include it before "+
e+"!")}return a}function ja(a){var b=1<arguments.length&&void 0!==arguments[1]?arguments[1]:!1,c=Q.indexOf(a);c=Q.slice(c+1).concat(Q.slice(0,c));return b?c.reverse():c}function sa(a,b,c,d){var e=[0,0],f=-1!==["right","left"].indexOf(d);a=a.split(/(\+|\-)/).map(function(h){return h.trim()});d=a.indexOf(C(a,function(h){return-1!==h.search(/,|\s/)}));a[d]&&-1===a[d].indexOf(",")&&console.warn("Offsets separated by white space(s) are deprecated, use a comma (,) instead.");var g=/\s*,\s*|\s+/;a=-1!==
d?[a.slice(0,d).concat([a[d].split(g)[0]]),[a[d].split(g)[1]].concat(a.slice(d+1))]:[a];a=a.map(function(h,l){var k=(1===l?!f:f)?"height":"width",n=!1;return h.reduce(function(m,p){return""===m[m.length-1]&&-1!==["+","-"].indexOf(p)?(m[m.length-1]=p,n=!0,m):n?(m[m.length-1]+=p,n=!1,m):m.concat(p)},[]).map(function(m){var p=m.match(/((?:\-|\+)?\d*\.?\d*)(.*)/);var q=+p[1];p=p[2];if(q)if(0===p.indexOf("%")){switch(p){case "%p":m=b;break;default:m=c}q*=t(m)[k]/100}else q="vh"===p||"vw"===p?("vh"===p?
Math.max(document.documentElement.clientHeight,window.innerHeight||0):Math.max(document.documentElement.clientWidth,window.innerWidth||0))/100*q:q;else q=m;return q})});a.forEach(function(h,l){h.forEach(function(k,n){O(k)&&(e[l]+=k*("-"===h[n-1]?-1:1))})});return e}var D="undefined"!==typeof window&&"undefined"!==typeof document&&"undefined"!==typeof navigator,la=function(){for(var a=["Edge","Trident","Firefox"],b=0;b<a.length;b+=1)if(D&&0<=navigator.userAgent.indexOf(a[b]))return 1;return 0}(),ta=
D&&window.Promise?H:A,S=D&&!(!window.MSInputMethodContext||!document.documentMode),T=D&&/MSIE 10/.test(navigator.userAgent),ua=function(){function a(b,c){for(var d=0;d<c.length;d++){var e=c[d];e.enumerable=e.enumerable||!1;e.configurable=!0;"value"in e&&(e.writable=!0);Object.defineProperty(b,e.key,e)}}return function(b,c,d){c&&a(b.prototype,c);d&&a(b,d);return b}}(),z=function(a,b,c){b in a?Object.defineProperty(a,b,{value:c,enumerable:!0,configurable:!0,writable:!0}):a[b]=c;return a},r=Object.assign||
function(a){for(var b=1;b<arguments.length;b++){var c=arguments[b],d;for(d in c)Object.prototype.hasOwnProperty.call(c,d)&&(a[d]=c[d])}return a},va=D&&/Firefox/i.test(navigator.userAgent),ka="auto-start auto auto-end top-start top top-end right-start right right-end bottom-end bottom bottom-start left-end left left-start".split(" "),Q=ka.slice(3),G=function(){function a(b,c){var d=this,e=2<arguments.length&&void 0!==arguments[2]?arguments[2]:{};if(!(this instanceof a))throw new TypeError("Cannot call a class as a function");
this.scheduleUpdate=function(){return requestAnimationFrame(d.update)};this.update=ta(this.update.bind(this));this.options=r({},a.Defaults,e);this.state={isDestroyed:!1,isCreated:!1,scrollParents:[]};this.reference=b&&b.jquery?b[0]:b;this.popper=c&&c.jquery?c[0]:c;this.options.modifiers={};Object.keys(r({},a.Defaults.modifiers,e.modifiers)).forEach(function(g){d.options.modifiers[g]=r({},a.Defaults.modifiers[g]||{},e.modifiers?e.modifiers[g]:{})});this.modifiers=Object.keys(this.options.modifiers).map(function(g){return r({name:g},
d.options.modifiers[g])}).sort(function(g,h){return g.order-h.order});this.modifiers.forEach(function(g){if(g.enabled&&R(g.onLoad))g.onLoad(d.reference,d.popper,d.options,g,d.state)});this.update();var f=this.options.eventsEnabled;f&&this.enableEventListeners();this.state.eventsEnabled=f}ua(a,[{key:"update",value:function(){if(!this.state.isDestroyed){var b={instance:this,styles:{},arrowStyles:{},attributes:{},flipped:!1,offsets:{}};b.offsets.reference=aa(this.state,this.popper,this.reference,this.options.positionFixed);
b.placement=Z(this.options.placement,b.offsets.reference,this.popper,this.reference,this.options.modifiers.flip.boundariesElement,this.options.modifiers.flip.padding);b.originalPlacement=b.placement;b.positionFixed=this.options.positionFixed;b.offsets.popper=ca(this.popper,b.offsets.reference,b.placement);b.offsets.popper.position=this.options.positionFixed?"fixed":"absolute";b=da(this.modifiers,b);if(this.state.isCreated)this.options.onUpdate(b);else this.state.isCreated=!0,this.options.onCreate(b)}}},
{key:"destroy",value:function(){this.state.isDestroyed=!0;ea(this.modifiers,"applyStyle")&&(this.popper.removeAttribute("x-placement"),this.popper.style.position="",this.popper.style.top="",this.popper.style.left="",this.popper.style.right="",this.popper.style.bottom="",this.popper.style.willChange="",this.popper.style[N("transform")]="");this.disableEventListeners();this.options.removeOnDestroy&&this.popper.parentNode.removeChild(this.popper);return this}},{key:"enableEventListeners",value:function(){if(!this.state.eventsEnabled){var b=
this.reference,c=this.state;c.updateBound=this.scheduleUpdate;fa(b).addEventListener("resize",c.updateBound,{passive:!0});b=B(b);ha(b,"scroll",c.updateBound,c.scrollParents);c.scrollElement=b;c.eventsEnabled=!0;this.state=c}}},{key:"disableEventListeners",value:function(){this.state.eventsEnabled&&(cancelAnimationFrame(this.scheduleUpdate),this.state=pa(this.reference,this.state))}}]);return a}();G.Utils=("undefined"!==typeof window?window:global).PopperUtils;G.placements=ka;G.Defaults={placement:"bottom",
positionFixed:!1,eventsEnabled:!0,removeOnDestroy:!1,onCreate:function(){},onUpdate:function(){},modifiers:{shift:{order:100,enabled:!0,fn:function(a){var b=a.placement,c=b.split("-")[0];if(b=b.split("-")[1]){var d=a.offsets,e=d.reference;d=d.popper;var f=-1!==["bottom","top"].indexOf(c);c=f?"left":"top";f=f?"width":"height";e={start:z({},c,e[c]),end:z({},c,e[c]+e[f]-d[f])};a.offsets.popper=r({},d,e[b])}return a}},offset:{order:200,enabled:!0,fn:function(a,b){var c=b.offset,d=a.offsets;b=d.popper;
var e=d.reference;d=a.placement.split("-")[0];c=O(+c)?[+c,0]:sa(c,b,e,d);"left"===d?(b.top+=c[0],b.left-=c[1]):"right"===d?(b.top+=c[0],b.left+=c[1]):"top"===d?(b.left+=c[0],b.top-=c[1]):"bottom"===d&&(b.left+=c[0],b.top+=c[1]);a.popper=b;return a},offset:0},preventOverflow:{order:300,enabled:!0,fn:function(a,b){var c=b.boundariesElement||x(a.instance.popper);a.instance.reference===c&&(c=x(c));var d=N("transform"),e=a.instance.popper.style,f=e.top,g=e.left,h=e[d];e.top="";e.left="";e[d]="";var l=
M(a.instance.popper,a.instance.reference,b.padding,c,a.positionFixed);e.top=f;e.left=g;e[d]=h;b.boundaries=l;var k=a.offsets.popper,n={primary:function(m){var p=k[m];k[m]<l[m]&&!b.escapeWithReference&&(p=Math.max(k[m],l[m]));return z({},m,p)},secondary:function(m){var p="right"===m?"left":"top",q=k[p];k[m]>l[m]&&!b.escapeWithReference&&(q=Math.min(k[p],l[m]-("right"===m?k.width:k.height)));return z({},p,q)}};b.priority.forEach(function(m){var p=-1!==["left","top"].indexOf(m)?"primary":"secondary";
k=r({},k,n[p](m))});a.offsets.popper=k;return a},priority:["left","right","top","bottom"],padding:5,boundariesElement:"scrollParent"},keepTogether:{order:400,enabled:!0,fn:function(a){var b=a.offsets,c=b.popper;b=b.reference;var d=a.placement.split("-")[0],e=Math.floor,f=-1!==["top","bottom"].indexOf(d);d=f?"right":"bottom";var g=f?"left":"top";f=f?"width":"height";c[d]<e(b[g])&&(a.offsets.popper[g]=e(b[g])-c[f]);c[g]>e(b[d])&&(a.offsets.popper[g]=e(b[d]));return a}},arrow:{order:500,enabled:!0,fn:function(a,
b){var c;if(!ia(a.instance.modifiers,"arrow","keepTogether"))return a;b=b.element;if("string"===typeof b){if(b=a.instance.popper.querySelector(b),!b)return a}else if(!a.instance.popper.contains(b))return console.warn("WARNING: `arrow.element` must be child of its popper element!"),a;var d=a.placement.split("-")[0],e=a.offsets,f=e.popper,g=e.reference,h=-1!==["left","right"].indexOf(d);d=h?"height":"width";var l=h?"Top":"Left";e=l.toLowerCase();var k=h?"left":"top",n=h?"bottom":"right";h=ba(b)[d];
g[n]-h<f[e]&&(a.offsets.popper[e]-=f[e]-(g[n]-h));g[e]+h>f[n]&&(a.offsets.popper[e]+=g[e]+h-f[n]);a.offsets.popper=t(a.offsets.popper);g=g[e]+g[d]/2-h/2;var m=v(a.instance.popper);n=parseFloat(m["margin"+l]);l=parseFloat(m["border"+l+"Width"]);l=g-a.offsets.popper[e]-n-l;l=Math.max(Math.min(f[d]-h,l),0);a.arrowElement=b;a.offsets.arrow=(c={},z(c,e,Math.round(l)),z(c,k,""),c);return a},element:"[x-arrow]"},flip:{order:600,enabled:!0,fn:function(a,b){if(ea(a.instance.modifiers,"inner")||a.flipped&&
a.placement===a.originalPlacement)return a;var c=M(a.instance.popper,a.instance.reference,b.padding,b.boundariesElement,a.positionFixed),d=a.placement.split("-")[0],e=F(d),f=a.placement.split("-")[1]||"",g=[];switch(b.behavior){case "flip":g=[d,e];break;case "clockwise":g=ja(d);break;case "counterclockwise":g=ja(d,!0);break;default:g=b.behavior}g.forEach(function(h,l){if(d!==h||g.length===l+1)return a;d=a.placement.split("-")[0];e=F(d);var k=a.offsets.popper;h=a.offsets.reference;var n=Math.floor;
h="left"===d&&n(k.right)>n(h.left)||"right"===d&&n(k.left)<n(h.right)||"top"===d&&n(k.bottom)>n(h.top)||"bottom"===d&&n(k.top)<n(h.bottom);var m=n(k.left)<n(c.left),p=n(k.right)>n(c.right),q=n(k.top)<n(c.top);n=n(k.bottom)>n(c.bottom);k="left"===d&&m||"right"===d&&p||"top"===d&&q||"bottom"===d&&n;var u=-1!==["top","bottom"].indexOf(d),wa=!!b.flipVariationsByContent&&(u&&"start"===f&&p||u&&"end"===f&&m||!u&&"start"===f&&n||!u&&"end"===f&&q);m=!!b.flipVariations&&(u&&"start"===f&&m||u&&"end"===f&&p||
!u&&"start"===f&&q||!u&&"end"===f&&n)||wa;if(h||k||m){a.flipped=!0;if(h||k)d=g[l+1];m&&("end"===f?f="start":"start"===f&&(f="end"));a.placement=d+(f?"-"+f:"");a.offsets.popper=r({},a.offsets.popper,ca(a.instance.popper,a.offsets.reference,a.placement));a=da(a.instance.modifiers,a,"flip")}});return a},behavior:"flip",padding:5,boundariesElement:"viewport",flipVariations:!1,flipVariationsByContent:!1},inner:{order:700,enabled:!1,fn:function(a){var b=a.placement,c=b.split("-")[0],d=a.offsets,e=d.popper;
d=d.reference;var f=-1!==["left","right"].indexOf(c),g=-1===["top","left"].indexOf(c);e[f?"left":"top"]=d[c]-(g?e[f?"width":"height"]:0);a.placement=F(b);a.offsets.popper=t(e);return a}},hide:{order:800,enabled:!0,fn:function(a){if(!ia(a.instance.modifiers,"hide","preventOverflow"))return a;var b=a.offsets.reference,c=C(a.instance.modifiers,function(d){return"preventOverflow"===d.name}).boundaries;if(b.bottom<c.top||b.left>c.right||b.top>c.bottom||b.right<c.left){if(!0===a.hide)return a;a.hide=!0;
a.attributes["x-out-of-boundaries"]=""}else{if(!1===a.hide)return a;a.hide=!1;a.attributes["x-out-of-boundaries"]=!1}return a}},computeStyle:{order:850,enabled:!0,fn:function(a,b){var c=b.x,d=b.y,e=a.offsets.popper,f=C(a.instance.modifiers,function(m){return"applyStyle"===m.name}).gpuAcceleration;void 0!==f&&console.warn("WARNING: `gpuAcceleration` option moved to `computeStyle` modifier and will not be supported in future versions of Popper.js!");b=void 0!==f?f:b.gpuAcceleration;f=x(a.instance.popper);
var g=K(f);e={position:e.position};var h=ra(a,2>window.devicePixelRatio||!va);c="bottom"===c?"top":"bottom";d="right"===d?"left":"right";var l=N("transform"),k=void 0,n=void 0;n="bottom"===c?"HTML"===f.nodeName?-f.clientHeight+h.bottom:-g.height+h.bottom:h.top;k="right"===d?"HTML"===f.nodeName?-f.clientWidth+h.right:-g.width+h.right:h.left;b&&l?(e[l]="translate3d("+k+"px, "+n+"px, 0)",e[c]=0,e[d]=0,e.willChange="transform"):(e[c]=n*("bottom"===c?-1:1),e[d]=k*("right"===d?-1:1),e.willChange=c+", "+
d);a.attributes=r({},{"x-placement":a.placement},a.attributes);a.styles=r({},e,a.styles);a.arrowStyles=r({},a.offsets.arrow,a.arrowStyles);return a},gpuAcceleration:!0,x:"bottom",y:"right"},applyStyle:{order:900,enabled:!0,fn:function(a){P(a.instance.popper,a.styles);qa(a.instance.popper,a.attributes);a.arrowElement&&Object.keys(a.arrowStyles).length&&P(a.arrowElement,a.arrowStyles);return a},onLoad:function(a,b,c,d,e){d=aa(e,b,a,c.positionFixed);a=Z(c.placement,d,b,a,c.modifiers.flip.boundariesElement,
c.modifiers.flip.padding);b.setAttribute("x-placement",a);P(b,{position:c.positionFixed?"fixed":"absolute"});return c},gpuAcceleration:void 0}}};return G});