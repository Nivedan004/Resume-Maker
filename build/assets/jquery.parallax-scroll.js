//# sourceMappingURL=jquery.parallax-scroll.js.map
var process=process||{env:{NODE_ENV:"development"}};$(function(){ParallaxScroll.init()});
var ParallaxScroll={showLogs:!1,round:1E3,init:function(){this._log("init");this._inited?(this._log("Already Inited"),this._inited=!0):(this._requestAnimationFrame=function(){return window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(u,A){window.setTimeout(u,1E3/60)}}(),this._onScroll(!0))},_inited:!1,_properties:"x y z rotateX rotateY rotateZ scaleX scaleY scaleZ scale".split(" "),
_requestAnimationFrame:null,_log:function(u){this.showLogs&&console.log("Parallax Scroll / "+u)},_onScroll:function(u){var A=$(document).scrollTop(),C=$(window).height();this._log("onScroll "+A);$("[data-parallax]").each($.proxy(function(y,d){var b=$(d),a=[],D=!1;y=b.data("style");void 0==y&&(y=b.attr("style")||"",b.data("style",y));var g=[b.data("parallax")],m;for(m=2;;m++)if(b.data("parallax"+m))g.push(b.data("parallax-"+m));else break;var F=g.length;for(m=0;m<F;m++){var f=g[m],n=f["from-scroll"];
void 0==n&&(n=Math.max(0,$(d).offset().top-C));n|=0;var p=f.distance,q=f["to-scroll"];void 0==p&&void 0==q&&(p=C);p=Math.max(p|0,1);var h=f.easing,z=f["easing-return"];void 0!=h&&$.easing&&$.easing[h]||(h=null);void 0!=z&&$.easing&&$.easing[z]||(z=h);if(h){var k=f.duration;void 0==k&&(k=p);k=Math.max(k|0,1);var B=f["duration-return"];void 0==B&&(B=k);p=1;var e=b.data("current-time");void 0==e&&(e=0)}void 0==q&&(q=n+p);q|=0;var r=f.smoothness;void 0==r&&(r=30);r|=0;if(u||0==r)r=1;r|=0;var t=A;t=Math.max(t,
n);t=Math.min(t,q);h&&(void 0==b.data("sens")&&b.data("sens","back"),t>n&&("back"==b.data("sens")?(e=1,b.data("sens","go")):e++),t<q&&("go"==b.data("sens")?(e=1,b.data("sens","back")):e++),u&&(e=k),b.data("current-time",e));this._properties.map($.proxy(function(c){var v=0,l=f[c];if(void 0!=l){"scale"==c||"scaleX"==c||"scaleY"==c||"scaleZ"==c?v=1:l|=0;var w=b.data("_"+c);void 0==w&&(w=v);var E=(t-n)/(q-n)*(l-v)+v,x=w+(E-w)/r;h&&0<e&&e<=k&&("back"==b.data("sens")&&(v=l,l=-l,h=z,k=B),x=$.easing[h](null,
e,v,l,k));x=Math.ceil(x*this.round)/this.round;x==w&&E==l&&(x=l);a[c]||(a[c]=0);a[c]+=x;w!=a[c]&&(b.data("_"+c,a[c]),D=!0)}},this))}D&&(void 0!=a.z&&(d=f.perspective,void 0==d&&(d=800),g=b.parent(),g.data("style")||g.data("style",g.attr("style")||""),g.attr("style","perspective:"+d+"px; -webkit-perspective:"+d+"px; "+g.data("style"))),void 0==a.scaleX&&(a.scaleX=1),void 0==a.scaleY&&(a.scaleY=1),void 0==a.scaleZ&&(a.scaleZ=1),void 0!=a.scale&&(a.scaleX*=a.scale,a.scaleY*=a.scale,a.scaleZ*=a.scale),
d="translate3d("+(a.x?a.x:0)+"px, "+(a.y?a.y:0)+"px, "+(a.z?a.z:0)+"px) rotateX("+((a.rotateX?a.rotateX:0)+"deg) rotateY("+(a.rotateY?a.rotateY:0)+"deg) rotateZ("+(a.rotateZ?a.rotateZ:0)+"deg) scaleX(")+(a.scaleX+") scaleY("+a.scaleY+") scaleZ("+a.scaleZ+");"),this._log(d),b.attr("style","transform:"+d+" -webkit-transform:"+d+" "+y))},this));window.requestAnimationFrame?window.requestAnimationFrame($.proxy(this._onScroll,this,!1)):this._requestAnimationFrame($.proxy(this._onScroll,this,!1))}};