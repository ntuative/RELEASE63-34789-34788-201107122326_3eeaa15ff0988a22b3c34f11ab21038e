package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_168:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_985:int = 2;
      
      public static const const_993:int = 3;
      
      public static const const_1735:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1756:String = "";
      
      private var var_2648:int;
      
      private var var_2659:int = 0;
      
      private var var_2661:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_256:Array;
      
      private var var_1560:int = 0;
      
      private var var_2693:String = "";
      
      private var var_2692:int = 0;
      
      private var var_2691:int = 0;
      
      private var var_2170:Boolean = false;
      
      private var var_1754:String = "";
      
      private var var_2265:Boolean = false;
      
      private var var_2991:Boolean = false;
      
      private var var_2984:Boolean = true;
      
      private var var_1201:int = 0;
      
      private var var_2990:Boolean = false;
      
      private var var_2988:Boolean = false;
      
      private var var_2989:Boolean = false;
      
      private var var_2985:Boolean = false;
      
      private var var_2987:Boolean = false;
      
      private var var_2992:Boolean = false;
      
      private var var_2986:int = 0;
      
      private var var_2169:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_256 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1756 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1756;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2648;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2659 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2659;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2661;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_256 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_256;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1560 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1560;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2693 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2693;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2991 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2991;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1201 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1201;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2990 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2990;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2988 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2988;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2989 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2989;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2985 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2985;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2987 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2987;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2992 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2992;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2986 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2986;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2984 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2984;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2169 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2169;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2692 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2692;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2691 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2691;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2170 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2170;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1754 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2265;
      }
   }
}
