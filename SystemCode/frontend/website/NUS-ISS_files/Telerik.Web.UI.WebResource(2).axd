Type.registerNamespace("Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend");Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase=function(element){Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase.initializeBase(this,[element]);this._handlePageLoadDelegate=null;this._baseUrl=null;this._onLoadEvents=null;};Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase.prototype={initialize:function(){Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase.callBaseMethod(this,"initialize");if(this._onLoadEvents){for(var i=0,len=this._onLoadEvents.length;i<len;i++){var h=this._onLoadEvents[i];if(h&&window[h]){this.add_viewLoaded(window[h]);}}}this._handlePageLoadDelegate=Function.createDelegate(this,this._handlePageLoad);Sys.Application.add_load(this._handlePageLoadDelegate);},dispose:function(){Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase.callBaseMethod(this,"dispose");this._handleViewLoadedDelegate=null;Sys.Application.remove_load(this._handlePageLoadDelegate);},add_viewLoaded:function(handler){this.get_events().addHandler("viewLoaded",handler);},remove_viewLoaded:function(handler){this.get_events().removeHandler("viewLoaded",handler);},_handlePageLoad:function(sender,args){var handler=this.get_events().getHandler("viewLoaded");if(handler){handler(this);}},get_onLoadEvents:function(){return this._onLoadEvents;},set_onLoadEvents:function(value){this._onLoadEvents=value;},get_baseUrl:function(){return this._baseUrl;},set_baseUrl:function(value){if(this._baseUrl!=value){this._baseUrl=value;this.raisePropertyChanged("baseUrl");}}};Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase.registerClass("Telerik.Sitefinity.Web.UI.ContentUI.Views.Backend.ViewBase",Sys.UI.Control);Type.registerNamespace("Telerik.Sitefinity.Web.UI");var _userPreferences=null;function GetUserPreferences(){return _userPreferences;}Telerik.Sitefinity.Web.UI.UserPreferences=function(){Telerik.Sitefinity.Web.UI.UserPreferences.initializeBase(this);this._timeOffset=0;this._timeZoneDisplayName=null;this._timeZoneId=null;this._userBrowserSettingsForCalculatingDates=true;};Telerik.Sitefinity.Web.UI.UserPreferences.prototype={initialize:function(){Telerik.Sitefinity.Web.UI.UserPreferences.callBaseMethod(this,"initialize");_userPreferences=this;},dispose:function(){Telerik.Sitefinity.Web.UI.UserPreferences.callBaseMethod(this,"dispose");},sitefinityLocaleFormat:function(date,format){if(this._userBrowserSettingsForCalculatingDates){return date.localeFormat(format);}else{return this.sitefinityToLocalDate(date).format(format);}},sitefinityToLocalDate:function(date){if(date==null){return date;}if(this._userBrowserSettingsForCalculatingDates){return date;}else{var ticks=parseInt(date.getTime())+parseInt(this._timeOffset)+parseInt(date.getTimezoneOffset()*60*1000);var newDate=new Date(ticks);return newDate;}},sitefinityToUniversalDate:function(date){if(date==null){return date;}if(this._userBrowserSettingsForCalculatingDates){return date;}else{var ticks=parseInt(date.getTime())-parseInt(this._timeOffset)-parseInt(date.getTimezoneOffset()*60*1000);var newDate=new Date(ticks);return newDate;}},get_timeOffset:function(){return this._timeOffset;},set_timeOffset:function(value){this._timeOffset=value;},get_timeZoneDisplayName:function(){return this._timeZoneDisplayName;},set_timeZoneDisplayName:function(value){this._timeZoneDisplayName=value;},get_timeZoneId:function(){return this._timeZoneId;},set_timeZoneId:function(value){this._timeZoneId=value;},get_userBrowserSettingsForCalculatingDates:function(){return this._userBrowserSettingsForCalculatingDates;},set_userBrowserSettingsForCalculatingDates:function(value){this._userBrowserSettingsForCalculatingDates=value;}};Telerik.Sitefinity.Web.UI.UserPreferences.registerClass("Telerik.Sitefinity.Web.UI.UserPreferences",Sys.Component);Date.prototype.sitefinityLocaleFormat=function(value){return GetUserPreferences().sitefinityLocaleFormat(this,value);};if(typeof(Sys)!=='undefined')Sys.Application.notifyScriptLoaded();(function(){function loadHandler(){var hf=window.__TsmHiddenField;if(!hf)return;if(!hf._RSM_init){hf._RSM_init=true;hf.value='';}
hf.value+=';;Telerik.Sitefinity, Version=12.2.7200.0, Culture=neutral, PublicKeyToken=b28c218413bdf563:en-US:69f7f411-db5d-4f58-8ffa-4a9e263f780b:721addc:41f6c3a7';Sys.Application.remove_load(loadHandler);};Sys.Application.add_load(loadHandler);})();