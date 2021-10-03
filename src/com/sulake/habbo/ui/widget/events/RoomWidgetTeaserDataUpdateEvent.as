package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_581:String = "RWTDUE_TEASER_DATA";
      
      public static const const_1012:String = "RWTDUE_GIFT_DATA";
      
      public static const const_793:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_239:int;
      
      private var _data:String;
      
      private var var_430:int;
      
      private var var_208:String;
      
      private var var_2817:String;
      
      private var var_2867:Boolean;
      
      private var var_1672:int = 0;
      
      private var var_2868:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2817;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2867;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2868;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1672;
      }
      
      public function set status(param1:int) : void
      {
         this.var_430 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2817 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2867 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2868 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_239 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_208;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_208 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1672 = param1;
      }
   }
}
