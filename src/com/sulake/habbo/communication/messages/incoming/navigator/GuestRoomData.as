package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_426:int;
      
      private var var_787:Boolean;
      
      private var var_1012:String;
      
      private var _ownerName:String;
      
      private var var_2329:int;
      
      private var var_2366:int;
      
      private var var_2941:int;
      
      private var var_1751:String;
      
      private var var_2939:int;
      
      private var var_2507:Boolean;
      
      private var var_832:int;
      
      private var var_1514:int;
      
      private var var_2937:String;
      
      private var var_931:Array;
      
      private var var_2938:RoomThumbnailData;
      
      private var var_2323:Boolean;
      
      private var var_2940:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_931 = new Array();
         super();
         this.var_426 = param1.readInteger();
         this.var_787 = param1.readBoolean();
         this.var_1012 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2329 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this.var_2941 = param1.readInteger();
         this.var_1751 = param1.readString();
         this.var_2939 = param1.readInteger();
         this.var_2507 = param1.readBoolean();
         this.var_832 = param1.readInteger();
         this.var_1514 = param1.readInteger();
         this.var_2937 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_931.push(_loc4_);
            _loc3_++;
         }
         this.var_2938 = new RoomThumbnailData(param1);
         this.var_2323 = param1.readBoolean();
         this.var_2940 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_931 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_426;
      }
      
      public function get event() : Boolean
      {
         return this.var_787;
      }
      
      public function get roomName() : String
      {
         return this.var_1012;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2329;
      }
      
      public function get userCount() : int
      {
         return this.var_2366;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2941;
      }
      
      public function get description() : String
      {
         return this.var_1751;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2939;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2507;
      }
      
      public function get score() : int
      {
         return this.var_832;
      }
      
      public function get categoryId() : int
      {
         return this.var_1514;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2937;
      }
      
      public function get tags() : Array
      {
         return this.var_931;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2938;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2323;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2940;
      }
   }
}
