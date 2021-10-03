package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_211:IWindowContainer;
      
      private var var_3099:int;
      
      private var var_418:RoomEventViewCtrl;
      
      private var var_420:Timer;
      
      private var var_165:RoomSettingsCtrl;
      
      private var var_311:RoomThumbnailCtrl;
      
      private var var_1128:TagRenderer;
      
      private var var_419:IWindowContainer;
      
      private var var_421:IWindowContainer;
      
      private var var_738:IWindowContainer;
      
      private var var_2178:IWindowContainer;
      
      private var var_2177:IWindowContainer;
      
      private var var_1385:IWindowContainer;
      
      private var var_1012:ITextWindow;
      
      private var var_1127:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_913:ITextWindow;
      
      private var var_1389:ITextWindow;
      
      private var var_1126:ITextWindow;
      
      private var var_912:ITextWindow;
      
      private var var_1685:ITextWindow;
      
      private var var_312:IWindowContainer;
      
      private var var_915:IWindowContainer;
      
      private var var_1683:IWindowContainer;
      
      private var var_2176:ITextWindow;
      
      private var var_737:ITextWindow;
      
      private var var_2175:IWindow;
      
      private var var_1387:IContainerButtonWindow;
      
      private var var_1384:IContainerButtonWindow;
      
      private var var_1388:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1386:IContainerButtonWindow;
      
      private var var_1684:IButtonWindow;
      
      private var var_1682:IButtonWindow;
      
      private var var_1681:IButtonWindow;
      
      private var var_911:IWindowContainer;
      
      private var var_1390:ITextWindow;
      
      private var var_1125:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_914:IButtonWindow;
      
      private var var_1680:Boolean = false;
      
      private const const_762:int = 75;
      
      private const const_894:int = 3;
      
      private const const_1022:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_418 = new RoomEventViewCtrl(this._navigator);
         this.var_165 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_311 = new RoomThumbnailCtrl(this._navigator);
         this.var_1128 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_165);
         this.var_420 = new Timer(6000,1);
         this.var_420.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_420)
         {
            this.var_420.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_420.reset();
            this.var_420 = null;
         }
         this._navigator = null;
         this.var_418 = null;
         this.var_165 = null;
         this.var_311 = null;
         if(this.var_1128)
         {
            this.var_1128.dispose();
            this.var_1128 = null;
         }
         this.var_211 = null;
         this.var_419 = null;
         this.var_421 = null;
         this.var_738 = null;
         this.var_2178 = null;
         this.var_2177 = null;
         this.var_1385 = null;
         this.var_1012 = null;
         this.var_1127 = null;
         this._ownerName = null;
         this.var_913 = null;
         this.var_1389 = null;
         this.var_1126 = null;
         this.var_912 = null;
         this.var_1685 = null;
         this.var_312 = null;
         this.var_915 = null;
         this.var_1683 = null;
         this.var_2176 = null;
         this.var_737 = null;
         this.var_2175 = null;
         this.var_1387 = null;
         this.var_1384 = null;
         this.var_1388 = null;
         this._remFavouriteButton = null;
         this.var_1386 = null;
         this.var_1684 = null;
         this.var_1682 = null;
         this.var_1681 = null;
         this.var_911 = null;
         this.var_1390 = null;
         this.var_1125 = null;
         this._buttons = null;
         this.var_914 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_420.reset();
         this.var_418.active = true;
         this.var_165.active = false;
         this.var_311.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_420.reset();
         this.var_165.load(param1);
         this.var_165.active = true;
         this.var_418.active = false;
         this.var_311.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_165.active = true;
         this.var_418.active = false;
         this.var_311.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_420.reset();
         this.var_165.active = false;
         this.var_418.active = false;
         this.var_311.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1680 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_420.reset();
         this.var_418.active = false;
         this.var_165.active = false;
         this.var_311.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_894;
         this._window.y = this.const_762;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_211,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_211.height = Util.getLowestPoint(this.var_211);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_1022;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_419);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_165.refresh(this.var_419);
         this.var_311.refresh(this.var_419);
         Util.moveChildrenToColumn(this.var_419,["room_details","room_buttons"],0,2);
         this.var_419.height = Util.getLowestPoint(this.var_419);
         this.var_419.visible = true;
         Logger.log("XORP: " + this.var_421.visible + ", " + this.var_1385.visible + ", " + this.var_738.visible + ", " + this.var_738.rectangle + ", " + this.var_419.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_312);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.method_9(_loc1_);
         this.var_418.refresh(this.var_312);
         if(Util.hasVisibleChildren(this.var_312) && !(this.var_165.active || this.var_311.active))
         {
            Util.moveChildrenToColumn(this.var_312,["event_details","event_buttons"],0,2);
            this.var_312.height = Util.getLowestPoint(this.var_312);
            this.var_312.visible = true;
         }
         else
         {
            this.var_312.visible = false;
         }
         Logger.log("EVENT: " + this.var_312.visible + ", " + this.var_312.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "AvatarEditorGridColorItem";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_165.active && !this.var_311.active && !this.var_418.active)
         {
            this.var_911.visible = true;
            this.var_1125.text = this.getEmbedData();
         }
         else
         {
            this.var_911.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_165.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_914)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_914.visible = _loc1_;
            if(this.var_1680)
            {
               this.var_914.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_914.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_165.active || this.var_311.active)
         {
            return;
         }
         this.var_1012.text = param1.roomName;
         this.var_1012.height = this.var_1012.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_913.text = param1.description;
         this.var_1128.refreshTags(this.var_421,param1.tags);
         this.var_913.visible = false;
         if(param1.description != "")
         {
            this.var_913.height = this.var_913.textHeight + 5;
            this.var_913.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1384,"facebook_logo_small",_loc3_,null,0);
         this.var_1384.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1387,"thumb_up",_loc4_,null,0);
         this.var_1387.visible = _loc4_;
         this.var_912.visible = !_loc4_;
         this.var_1685.visible = !_loc4_;
         this.var_1685.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_421,"home",param2,null,0);
         this._navigator.refreshButton(this.var_421,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_421,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_1012.y,0);
         this.var_421.visible = true;
         this.var_421.height = Util.getLowestPoint(this.var_421);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_421.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_165.active || this.var_311.active)
         {
            return;
         }
         this.var_1127.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1127.height = this.var_1127.textHeight + 5;
         this.var_1389.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1389.height = this.var_1389.textHeight + 5;
         Util.moveChildrenToColumn(this.var_738,["public_space_name","public_space_desc"],this.var_1127.y,0);
         this.var_738.visible = true;
         this.var_738.height = Math.max(86,Util.getLowestPoint(this.var_738));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_418.active)
         {
            return;
         }
         this.var_2176.text = param1.eventName;
         this.var_737.text = param1.eventDescription;
         this.var_1128.refreshTags(this.var_915,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_737.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_737.height = this.var_737.textHeight + 5;
            this.var_737.y = Util.getLowestPoint(this.var_915) + 2;
            this.var_737.visible = true;
         }
         this.var_915.visible = true;
         this.var_915.height = Util.getLowestPoint(this.var_915);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_165.active || this.var_311.active)
         {
            return;
         }
         this.var_1684.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1388.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1386.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1385.visible = Util.hasVisibleChildren(this.var_1385);
      }
      
      private function method_9(param1:RoomEventData) : void
      {
         if(this.var_418.active)
         {
            return;
         }
         this.var_1682.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1681.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1683.visible = Util.hasVisibleChildren(this.var_1683);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_211 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_419 = IWindowContainer(this.find("room_info"));
         this.var_421 = IWindowContainer(this.find("room_details"));
         this.var_738 = IWindowContainer(this.find("public_space_details"));
         this.var_2178 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2177 = IWindowContainer(this.find("rating_cont"));
         this.var_1385 = IWindowContainer(this.find("room_buttons"));
         this.var_1012 = ITextWindow(this.find("room_name"));
         this.var_1127 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_913 = ITextWindow(this.find("room_desc"));
         this.var_1389 = ITextWindow(this.find("public_space_desc"));
         this.var_1126 = ITextWindow(this.find("owner_caption"));
         this.var_912 = ITextWindow(this.find("rating_caption"));
         this.var_1685 = ITextWindow(this.find("rating_txt"));
         this.var_312 = IWindowContainer(this.find("event_info"));
         this.var_915 = IWindowContainer(this.find("event_details"));
         this.var_1683 = IWindowContainer(this.find("event_buttons"));
         this.var_2176 = ITextWindow(this.find("event_name"));
         this.var_737 = ITextWindow(this.find("event_desc"));
         this.var_1384 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1387 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2175 = this.find("staff_pick_button");
         this.var_1388 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1386 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1684 = IButtonWindow(this.find("room_settings_button"));
         this.var_1682 = IButtonWindow(this.find("create_event_button"));
         this.var_1681 = IButtonWindow(this.find("edit_event_button"));
         this.var_911 = IWindowContainer(this.find("embed_info"));
         this.var_1390 = ITextWindow(this.find("embed_info_txt"));
         this.var_1125 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_914 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1388,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1684,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1386,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1682,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1681,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1125,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1387,this.onThumbUp);
         this.addMouseClickListener(this.var_2175,this.onStaffPick);
         this.addMouseClickListener(this.var_1384,this.onFacebookLike);
         this.addMouseClickListener(this.var_914,this.onZoomClick);
         this._navigator.refreshButton(this.var_1388,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1386,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_419,this.onHover);
         this.addMouseOverListener(this.var_312,this.onHover);
         this.var_1126.width = this.var_1126.textWidth;
         Util.method_3(this.var_2178,["owner_caption","owner_name"],this.var_1126.x,this.var_1126.y,3);
         this.var_912.width = this.var_912.textWidth;
         Util.method_3(this.var_2177,["rating_caption","rating_txt"],this.var_912.x,this.var_912.y,3);
         this.var_1390.height = this.var_1390.textHeight + 5;
         Util.moveChildrenToColumn(this.var_911,["embed_info_txt","embed_src_txt"],this.var_1390.y,2);
         this.var_911.height = Util.getLowestPoint(this.var_911) + 5;
         this.var_3099 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1125.setSelection(0,this.var_1125.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_321));
         this.var_1680 = !this.var_1680;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_420.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_165 != null)
         {
            this.var_165.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
