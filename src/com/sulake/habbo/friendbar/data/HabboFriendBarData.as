package com.sulake.habbo.friendbar.data
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.friendlist.BuddyRequestsEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FindFriendsProcessResultEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendListUpdateEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendNotificationEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendRequestData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.MessengerInitEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.NewBuddyRequestEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.NewConsoleMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.friendlist.RoomInviteEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.FindNewFriendsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.FollowFriendMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.parser.friendlist.FriendListUpdateMessageParser;
   import com.sulake.habbo.communication.messages.parser.friendlist.FriendNotificationMessageParser;
   import com.sulake.habbo.communication.messages.parser.friendlist.NewConsoleMessageMessageParser;
   import com.sulake.habbo.communication.messages.parser.friendlist.RoomInviteMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.events.FindFriendsNotificationEvent;
   import com.sulake.habbo.friendbar.events.FriendBarUpdateEvent;
   import com.sulake.habbo.friendbar.events.FriendRequestUpdateEvent;
   import com.sulake.habbo.friendbar.events.NewMessageEvent;
   import com.sulake.habbo.friendbar.events.NotificationEvent;
   import com.sulake.habbo.friendbar.iid.IIDHabboEventStream;
   import com.sulake.habbo.friendbar.stream.IHabboEventStream;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.friendlist.events.FriendRequestEvent;
   import com.sulake.habbo.messenger.IConversation;
   import com.sulake.habbo.messenger.IHabboMessenger;
   import com.sulake.habbo.tracking.HabboTracking;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboMessenger;
   
   public class HabboFriendBarData extends Component implements IHabboFriendBarData
   {
      
      private static const const_318:Boolean = false;
      
      private static const const_1069:Boolean = false;
      
      private static const const_692:String = "Navigation";
      
      private static const const_693:String = "Friend Bar";
      
      private static const const_1486:String = "go.friendbar";
      
      private static const const_1485:String = "chat_btn_click";
      
      private static const const_1484:String = "find_friends_btn_click";
      
      private static const const_1068:String = "Toolbar";
      
      private static const const_1067:String = "open";
      
      private static const const_1066:String = "close";
      
      private static const const_1488:String = "FRIENDLIST";
      
      private static const const_1487:String = "MESSENGER";
       
      
      private var var_984:IHabboConfigurationManager;
      
      private var var_94:IHabboCommunicationManager;
      
      private var var_84:IHabboFriendList;
      
      private var var_218:IHabboMessenger;
      
      private var var_650:IHabboEventStream;
      
      private var var_113:Array;
      
      private var var_327:Map;
      
      private var var_120:Array;
      
      private var var_797:int;
      
      private var var_2480:Boolean = false;
      
      private var var_1840:Boolean = false;
      
      public function HabboFriendBarData(param1:HabboFriendBar, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_113 = new Array();
         this.var_327 = new Map();
         this.var_120 = new Array();
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationAvailable);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerAvailable);
         queueInterface(new IIDHabboFriendList(),this.onFriendListComponentAvailable);
         queueInterface(new IIDHabboMessenger(),this.onMessengerComponentAvailable);
         queueInterface(new IIDHabboEventStream(),this.onOfflineStreamAvailable);
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_984)
            {
               this.var_984.release(new IIDHabboConfigurationManager());
               this.var_984 = null;
            }
            if(this.var_94)
            {
               this.var_94.release(new IIDHabboCommunicationManager());
               this.var_94 = null;
            }
            if(this.var_84)
            {
               if(!this.var_84.disposed)
               {
                  this.var_84.events.removeEventListener(FriendRequestEvent.const_60,this.onFriendRequestEvent);
                  this.var_84.events.removeEventListener(FriendRequestEvent.const_230,this.onFriendRequestEvent);
               }
               this.var_84.release(new IIDHabboFriendList());
               this.var_84 = null;
            }
            if(this.var_218)
            {
               this.var_218.release(new IIDHabboMessenger());
               this.var_218 = null;
            }
            if(this.var_650)
            {
               this.var_650.release(new IIDHabboEventStream());
               this.var_650 = null;
            }
            this.var_113 = null;
            this.var_327.dispose();
            this.var_327 = null;
            this.var_120 = null;
            super.dispose();
         }
      }
      
      public function get numFriends() : int
      {
         return this.var_113.length;
      }
      
      public function getFriendAt(param1:int) : IFriendEntity
      {
         return this.var_113[param1];
      }
      
      public function getFriendByID(param1:int) : IFriendEntity
      {
         return this.var_327.getValue(param1);
      }
      
      public function getFriendByName(param1:String) : IFriendEntity
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_113)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function setFriendAt(param1:IFriendEntity, param2:int) : void
      {
         var _loc3_:int = this.var_113.indexOf(param1);
         if(_loc3_ > -1 && _loc3_ != param2)
         {
            this.var_113.splice(_loc3_,1);
            this.var_113.splice(param2,0,param1);
            events.dispatchEvent(new FriendBarUpdateEvent());
         }
      }
      
      public function get numFriendRequests() : int
      {
         return !!this.var_120 ? int(this.var_120.length) : 0;
      }
      
      public function getFriendRequestAt(param1:int) : FriendRequest
      {
         return !!this.var_120 ? this.var_120[param1] : null;
      }
      
      public function getFriendRequestByID(param1:int) : FriendRequest
      {
         var _loc2_:* = null;
         if(this.var_120)
         {
            for each(_loc2_ in this.var_120)
            {
               if(_loc2_.id == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function getFriendRequestByName(param1:String) : FriendRequest
      {
         var _loc2_:* = null;
         if(this.var_120)
         {
            for each(_loc2_ in this.var_120)
            {
               if(_loc2_.name == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function getFriendRequestList() : Array
      {
         return this.var_120;
      }
      
      public function acceptFriendRequest(param1:int) : void
      {
         this.removeFriendRequest(param1);
         if(this.var_84)
         {
            if(!this.var_84.disposed)
            {
               this.var_84.acceptFriendRequest(param1);
            }
         }
      }
      
      public function acceptAllFriendRequests() : void
      {
         this.var_120 = [];
         this.var_84.acceptAllFriendRequests();
         events.dispatchEvent(new FriendRequestUpdateEvent());
      }
      
      public function declineFriendRequest(param1:int) : void
      {
         this.removeFriendRequest(param1);
         if(this.var_84)
         {
            if(!this.var_84.disposed)
            {
               this.var_84.declineFriendRequest(param1);
            }
         }
      }
      
      public function declineAllFriendRequests() : void
      {
         this.var_120 = [];
         this.var_84.declineAllFriendRequests();
         events.dispatchEvent(new FriendRequestUpdateEvent());
      }
      
      private function removeFriendRequest(param1:int) : void
      {
         var _loc2_:* = null;
         if(this.var_120)
         {
            for each(_loc2_ in this.var_120)
            {
               if(_loc2_.id == param1)
               {
                  this.var_120.splice(this.var_120.indexOf(_loc2_),1);
                  events.dispatchEvent(new FriendRequestUpdateEvent());
                  return;
               }
            }
         }
      }
      
      public function followToRoom(param1:int) : void
      {
         if(this.var_94)
         {
            this.var_94.getHabboMainConnection(null).send(new FollowFriendMessageComposer(param1));
            this.var_94.getHabboMainConnection(null).send(new EventLogMessageComposer(const_692,const_693,const_1486));
         }
      }
      
      public function startConversation(param1:int) : void
      {
         if(this.var_218)
         {
            this.var_218.startConversation(param1);
            events.dispatchEvent(new NewMessageEvent(false,param1));
            if(this.var_94)
            {
               this.var_94.getHabboMainConnection(null).send(new EventLogMessageComposer(const_692,const_693,const_1485));
            }
         }
      }
      
      public function findNewFriends() : void
      {
         if(this.var_94)
         {
            this.var_94.getHabboMainConnection(null).send(new FindNewFriendsMessageComposer());
            this.var_94.getHabboMainConnection(null).send(new EventLogMessageComposer(const_692,const_693,const_1484));
         }
      }
      
      public function toggleFriendList() : void
      {
         var _loc1_:* = null;
         if(this.var_84)
         {
            if(!this.var_84.disposed)
            {
               if(!this.var_84.isOpen())
               {
                  if(this.var_120.length > 0)
                  {
                     this.var_84.openFriendRequests();
                  }
                  else
                  {
                     this.var_84.openFriendList();
                  }
               }
               else
               {
                  _loc1_ = this.var_84.mainWindow;
                  if(_loc1_ != null && WindowToggle.isHiddenByOtherWindows(_loc1_))
                  {
                     _loc1_.activate();
                     return;
                  }
                  this.var_84.close();
               }
               if(this.var_94)
               {
                  this.var_94.getHabboMainConnection(null).send(new EventLogMessageComposer(const_1068,const_1488,!!this.var_84.isOpen() ? const_1067 : const_1066));
               }
            }
         }
      }
      
      public function toggleMessenger() : void
      {
         if(this.var_218)
         {
            if(!this.var_218.disposed)
            {
               this.var_218.toggleMessenger();
               if(this.var_94)
               {
                  this.var_94.getHabboMainConnection(null).send(new EventLogMessageComposer(const_1068,const_1487,!!this.var_218.isOpen() ? const_1067 : const_1066));
               }
            }
         }
      }
      
      public function toggleOfflineStream() : void
      {
         if(this.var_650)
         {
            if(!this.var_650.disposed)
            {
               this.var_650.visible = !this.var_650.visible;
            }
         }
      }
      
      private function onConfigurationAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_984 = param2 as IHabboConfigurationManager;
         this.var_2480 = this.var_984.getBoolean("friendbar.notifications.enabled",false);
         this.var_1840 = this.var_984.getBoolean("friendbar.requests.enabled",false);
      }
      
      private function onCommunicationManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_94 = param2 as IHabboCommunicationManager;
         this.var_94.addHabboConnectionMessageEvent(new MessengerInitEvent(this.onMessengerInitialized));
         this.var_94.addHabboConnectionMessageEvent(new FriendListUpdateEvent(this.onFriendListUpdate));
         this.var_94.addHabboConnectionMessageEvent(new FindFriendsProcessResultEvent(this.onFindFriendProcessResult));
         this.var_94.addHabboConnectionMessageEvent(new NewBuddyRequestEvent(this.onNewFriendRequest));
         this.var_94.addHabboConnectionMessageEvent(new BuddyRequestsEvent(this.onFriendRequestList));
         this.var_94.addHabboConnectionMessageEvent(new NewConsoleMessageEvent(this.onNewConsoleMessage));
         this.var_94.addHabboConnectionMessageEvent(new RoomInviteEvent(this.onRoomInvite));
         this.var_94.addHabboConnectionMessageEvent(new FriendNotificationEvent(this.onFriendNotification));
      }
      
      private function onMessengerComponentAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_218 = param2 as IHabboMessenger;
      }
      
      private function onOfflineStreamAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_650 = param2 as IHabboEventStream;
      }
      
      private function onFriendListComponentAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_84 = param2 as IHabboFriendList;
         this.var_84.events.addEventListener(FriendRequestEvent.const_60,this.onFriendRequestEvent);
         this.var_84.events.addEventListener(FriendRequestEvent.const_230,this.onFriendRequestEvent);
      }
      
      private function onMessengerInitialized(param1:IMessageEvent) : void
      {
         this.buildFriendList(MessengerInitEvent(param1).getParser().friends);
      }
      
      private function onFriendListUpdate(param1:IMessageEvent) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc8_:int = 0;
         var _loc2_:FriendListUpdateMessageParser = FriendListUpdateEvent(param1).getParser();
         var _loc5_:Array = _loc2_.removedFriendIds;
         var _loc6_:Array = _loc2_.updatedFriends;
         var _loc7_:Array = _loc2_.addedFriends;
         for each(_loc8_ in _loc5_)
         {
            _loc3_ = this.var_327.getValue(_loc8_);
            if(_loc3_)
            {
               this.var_327.remove(_loc8_);
               this.var_113.splice(this.var_113.indexOf(_loc3_),1);
            }
         }
         for each(_loc4_ in _loc6_)
         {
            _loc3_ = this.var_327.getValue(_loc4_.id);
            if(_loc3_)
            {
               if(_loc4_.online || const_318)
               {
                  _loc3_.name = _loc4_.name;
                  _loc3_.realName = _loc4_.realName;
                  _loc3_.motto = _loc4_.motto;
                  _loc3_.gender = _loc4_.gender;
                  _loc3_.online = _loc4_.online;
                  _loc3_.allowFollow = _loc4_.followingAllowed;
                  _loc3_.figure = _loc4_.figure;
                  _loc3_.categoryId = _loc4_.categoryId;
                  _loc3_.lastAccess = _loc4_.lastAccess;
               }
               else
               {
                  this.var_327.remove(_loc4_.id);
                  this.var_113.splice(this.var_113.indexOf(_loc3_),1);
               }
            }
            else if(_loc4_.online || const_318)
            {
               _loc3_ = new FriendEntity(_loc4_.id,_loc4_.name,_loc4_.realName,_loc4_.motto,_loc4_.gender,_loc4_.online,_loc4_.followingAllowed,_loc4_.figure,_loc4_.categoryId,_loc4_.lastAccess);
               this.var_113.splice(0,0,_loc3_);
               this.var_327.add(_loc3_.id,_loc3_);
            }
         }
         for each(_loc4_ in _loc7_)
         {
            if(_loc4_.online || const_318)
            {
               if(this.var_327.getValue(_loc4_.id) == null)
               {
                  _loc3_ = new FriendEntity(_loc4_.id,_loc4_.name,_loc4_.realName,_loc4_.motto,_loc4_.gender,_loc4_.online,_loc4_.followingAllowed,_loc4_.figure,_loc4_.categoryId,_loc4_.lastAccess);
                  this.var_113.push(_loc3_);
                  this.var_327.add(_loc3_.id,_loc3_);
               }
            }
            this.removeFriendRequest(_loc4_.id);
         }
         if(_loc7_.length > 0 || _loc6_.length > 0)
         {
            this.var_113 = !!const_318 ? this.sortByNameAndOnlineStatus(this.var_113) : this.sortByName(this.var_113);
         }
         events.dispatchEvent(new FriendBarUpdateEvent());
      }
      
      private function onFindFriendProcessResult(param1:FindFriendsProcessResultEvent) : void
      {
         events.dispatchEvent(new FindFriendsNotificationEvent(param1.success));
      }
      
      private function onNewFriendRequest(param1:NewBuddyRequestEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_1840)
         {
            _loc2_ = param1.getParser().req;
            this.var_120.push(new FriendRequest(_loc2_.requestId,_loc2_.requesterName,_loc2_.figureString));
            events.dispatchEvent(new FriendRequestUpdateEvent());
         }
      }
      
      private function onFriendRequestList(param1:BuddyRequestsEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_1840)
         {
            _loc2_ = param1.getParser().reqs;
            for each(_loc3_ in _loc2_)
            {
               this.var_120.push(new FriendRequest(_loc3_.requestId,_loc3_.requesterName,_loc3_.figureString));
            }
            events.dispatchEvent(new FriendRequestUpdateEvent());
         }
      }
      
      private function onFriendRequestEvent(param1:FriendRequestEvent) : void
      {
         this.removeFriendRequest(param1.requestId);
      }
      
      private function onNewConsoleMessage(param1:NewConsoleMessageEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:NewConsoleMessageMessageParser = param1.getParser();
         this.var_797 = _loc2_.senderId;
         var _loc3_:Boolean = true;
         if(this.var_218)
         {
            if(this.var_218.isOpen())
            {
               _loc4_ = this.var_218.getActiveConversation();
               if(_loc4_)
               {
                  if(_loc4_.id == this.var_797)
                  {
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            events.dispatchEvent(new NewMessageEvent(true,this.var_797));
            this.makeNotification(String(this.var_797),FriendNotification.const_410,null,false,false);
         }
      }
      
      private function onRoomInvite(param1:RoomInviteEvent) : void
      {
         var _loc2_:RoomInviteMessageParser = param1.getParser();
         this.var_797 = _loc2_.senderId;
         if(this.var_218 && !this.var_218.isOpen())
         {
            events.dispatchEvent(new NewMessageEvent(true,this.var_797));
            this.makeNotification(String(this.var_797),FriendNotification.const_410,null,true,false);
         }
      }
      
      private function onFriendNotification(param1:FriendNotificationEvent) : void
      {
         var _loc2_:FriendNotificationMessageParser = param1.getParser();
         this.makeNotification(_loc2_.avatarId,_loc2_.typeCode,_loc2_.message,true,true);
      }
      
      private function makeNotification(param1:String, param2:int, param3:String, param4:Boolean, param5:Boolean) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(this.var_2480)
         {
            _loc6_ = this.getFriendByID(parseInt(param1));
            if(_loc6_)
            {
               _loc8_ = _loc6_.notifications;
               for each(_loc7_ in _loc8_)
               {
                  if(_loc7_.typeCode == param2)
                  {
                     _loc7_.message = param3;
                     _loc7_.viewOnce = param4;
                     break;
                  }
                  _loc7_ = null;
               }
               if(!_loc7_)
               {
                  _loc7_ = new FriendNotification(param2,param3,param4);
                  _loc8_.push(_loc7_);
               }
               events.dispatchEvent(new NotificationEvent(_loc6_.id,_loc7_));
               if(param5)
               {
                  this.setFriendAt(_loc6_,0);
               }
               if(_loc6_.logEventId < 0)
               {
                  _loc6_.logEventId = _loc6_.getNextLogEventId();
               }
               HabboTracking.getInstance().trackEventLog("FriendBar",FriendNotification.typeCodeToString(param2),"notified",_loc6_.logEventId > 0 ? String(_loc6_.logEventId) : "");
            }
         }
      }
      
      private function buildFriendList(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.online || const_318)
            {
               _loc3_ = new FriendEntity(_loc2_.id,_loc2_.name,_loc2_.realName,_loc2_.motto,_loc2_.gender,_loc2_.online,_loc2_.followingAllowed,_loc2_.figure,_loc2_.categoryId,_loc2_.lastAccess);
               this.var_113.push(_loc3_);
               this.var_327.add(_loc3_.id,_loc3_);
            }
         }
         this.var_113 = !!const_318 ? this.sortByNameAndOnlineStatus(this.var_113) : this.sortByName(this.var_113);
         events.dispatchEvent(new FriendBarUpdateEvent());
      }
      
      private function sortByName(param1:Array) : Array
      {
         if(const_1069)
         {
            param1.sortOn("name",[Array.CASEINSENSITIVE]);
         }
         return param1;
      }
      
      private function sortByNameAndOnlineStatus(param1:Array) : Array
      {
         var _loc4_:* = null;
         var _loc2_:* = [];
         var _loc3_:* = [];
         var _loc5_:int = param1.length;
         while(_loc5_-- > 0)
         {
            _loc4_ = param1[_loc5_];
            if(_loc4_.online)
            {
               _loc2_.push(_loc4_);
            }
            else
            {
               _loc3_.push(_loc4_);
            }
         }
         if(const_1069)
         {
            _loc2_.sortOn("name",[Array.CASEINSENSITIVE]);
            _loc3_.sortOn("name",[0 | 0]);
         }
         _loc5_ = _loc3_.length;
         while(_loc5_-- > 0)
         {
            _loc2_.push(_loc3_.pop());
         }
         return _loc2_;
      }
   }
}