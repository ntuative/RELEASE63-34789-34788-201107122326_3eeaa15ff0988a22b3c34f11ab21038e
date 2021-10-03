package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1266:int = 1;
      
      public static const const_1030:int = 2;
      
      public static const const_1010:int = 3;
      
      public static const const_1793:int = 4;
       
      
      private var _index:int;
      
      private var var_2369:String;
      
      private var var_2365:String;
      
      private var var_2368:Boolean;
      
      private var var_2367:String;
      
      private var var_1056:String;
      
      private var var_2370:int;
      
      private var var_2366:int;
      
      private var _type:int;
      
      private var var_2314:String;
      
      private var var_964:GuestRoomData;
      
      private var var_963:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2369 = param1.readString();
         this.var_2365 = param1.readString();
         this.var_2368 = param1.readInteger() == 1;
         this.var_2367 = param1.readString();
         this.var_1056 = param1.readString();
         this.var_2370 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1266)
         {
            this.var_2314 = param1.readString();
         }
         else if(this._type == const_1010)
         {
            this.var_963 = new PublicRoomData(param1);
         }
         else if(this._type == const_1030)
         {
            this.var_964 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_964 != null)
         {
            this.var_964.dispose();
            this.var_964 = null;
         }
         if(this.var_963 != null)
         {
            this.var_963.dispose();
            this.var_963 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2369;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2365;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2368;
      }
      
      public function get picText() : String
      {
         return this.var_2367;
      }
      
      public function get picRef() : String
      {
         return this.var_1056;
      }
      
      public function get folderId() : int
      {
         return this.var_2370;
      }
      
      public function get tag() : String
      {
         return this.var_2314;
      }
      
      public function get userCount() : int
      {
         return this.var_2366;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_964;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_963;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1266)
         {
            return 0;
         }
         if(this.type == const_1030)
         {
            return this.var_964.maxUserCount;
         }
         if(this.type == const_1010)
         {
            return this.var_963.maxUsers;
         }
         return 0;
      }
   }
}
