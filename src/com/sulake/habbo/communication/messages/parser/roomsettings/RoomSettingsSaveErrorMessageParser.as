package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2170:int = 1;
      
      public static const const_2246:int = 2;
      
      public static const const_2203:int = 3;
      
      public static const const_2249:int = 4;
      
      public static const const_1729:int = 5;
      
      public static const const_2242:int = 6;
      
      public static const const_1899:int = 7;
      
      public static const const_1944:int = 8;
      
      public static const const_2173:int = 9;
      
      public static const const_1764:int = 10;
      
      public static const const_1812:int = 11;
      
      public static const const_1744:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1873:int;
      
      private var var_679:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1873 = param1.readInteger();
         this.var_679 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1873;
      }
      
      public function get info() : String
      {
         return this.var_679;
      }
   }
}
