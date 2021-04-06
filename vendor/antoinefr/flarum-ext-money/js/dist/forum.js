module.exports=function(t){var n={};function e(o){if(n[o])return n[o].exports;var r=n[o]={i:o,l:!1,exports:{}};return t[o].call(r.exports,r,r.exports,e),r.l=!0,r.exports}return e.m=t,e.c=n,e.d=function(t,n,o){e.o(t,n)||Object.defineProperty(t,n,{enumerable:!0,get:o})},e.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},e.t=function(t,n){if(1&n&&(t=e(t)),8&n)return t;if(4&n&&"object"==typeof t&&t&&t.__esModule)return t;var o=Object.create(null);if(e.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:t}),2&n&&"string"!=typeof t)for(var r in t)e.d(o,r,function(n){return t[n]}.bind(null,r));return o},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)},e.p="",e(e.s=8)}([function(t,n){t.exports=flarum.core.compat.extend},function(t,n){t.exports=flarum.core.compat["components/Button"]},function(t,n){t.exports=flarum.core.compat["components/UserCard"]},function(t,n){t.exports=flarum.core.compat["utils/UserControls"]},function(t,n){t.exports=flarum.core.compat["components/Modal"]},function(t,n){t.exports=flarum.core.compat["utils/Stream"]},function(t,n){t.exports=flarum.core.compat.Model},function(t,n){t.exports=flarum.core.compat["models/User"]},function(t,n,e){"use strict";e.r(n);var o=e(0),r=e(2),a=e.n(r),i=e(3),u=e.n(i),s=e(1),c=e.n(s);var l=e(4),p=e.n(l),f=e(5),d=e.n(f),y=function(t){var n,e;function o(){return t.apply(this,arguments)||this}e=t,(n=o).prototype=Object.create(e.prototype),n.prototype.constructor=n,n.__proto__=e;var r=o.prototype;return r.oninit=function(n){t.prototype.oninit.call(this,n),this.money=d()(this.attrs.user.data.attributes.money||0)},r.className=function(){return"UserMoneyModal Modal--small"},r.title=function(){return app.translator.trans("antoinefr-money.forum.modal.title",{user:this.attrs.user})},r.content=function(){var t=app.forum.attribute("antoinefr-money.moneyname")||"[money]";return m("div",{className:"Modal-body"},m("div",{className:"Form"},m("div",{className:"Form-group"},m("label",null,app.translator.trans("antoinefr-money.forum.modal.current")," ",t.replace("[money]",this.attrs.user.data.attributes.money)),m("input",{required:!0,className:"FormControl",type:"number",step:"any",bidi:this.money})),m("div",{className:"Form-group"},c.a.component({className:"Button Button--primary",type:"submit",loading:this.loading},app.translator.trans("antoinefr-money.forum.modal.submit_button")))))},r.onsubmit=function(t){var n=this;t.preventDefault(),this.loading=!0,this.attrs.user.save({money:this.money()},{errorHandler:this.onerror.bind(this)}).then(this.hide.bind(this)).catch((function(){n.loading=!1,m.redraw()}))},o}(p.a),b=e(6),h=e.n(b),v=e(7),x=e.n(v);app.initializers.add("antoinefr-money",(function(){x.a.prototype.canEditMoney=h.a.attribute("canEditMoney"),Object(o.extend)(a.a.prototype,"infoItems",(function(t){var n=app.forum.attribute("antoinefr-money.moneyname")||"[money]";app.forum.attribute("antoinefr-money.noshowzero")?0!==this.attrs.user.data.attributes.money&&t.add("money",m("span",null,n.replace("[money]",this.attrs.user.data.attributes.money))):t.add("money",m("span",null,n.replace("[money]",this.attrs.user.data.attributes.money)))})),Object(o.extend)(u.a,"moderationControls",(function(t,n){n.canEditMoney()&&t.add("money",c.a.component({icon:"fas fa-money-bill",onclick:function(){return app.modal.show(y,{user:n})}},app.translator.trans("antoinefr-money.forum.user_controls.money_button")))}))}))}]);
//# sourceMappingURL=forum.js.map