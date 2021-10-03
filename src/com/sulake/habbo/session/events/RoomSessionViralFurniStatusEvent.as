package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_535:String = "RSVFS_STATUS";
      
      public static const const_563:String = "RSVFS_RECEIVED";
       
      
      private var var_208:String;
      
      private var var_239:int;
      
      private var var_430:int = -1;
      
      private var _shareId:String;
      
      private var var_2817:String;
      
      private var var_2867:Boolean;
      
      private var var_1672:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_430 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2817;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2867;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1672;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_239 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_430 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2817 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2867 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1672 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_208;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_208 = param1;
      }
   }
}
