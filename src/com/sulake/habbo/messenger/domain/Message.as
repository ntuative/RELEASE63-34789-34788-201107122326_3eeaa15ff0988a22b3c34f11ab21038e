package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_1009:int = 1;
      
      public static const const_938:int = 2;
      
      public static const const_738:int = 3;
      
      public static const const_1400:int = 4;
      
      public static const const_784:int = 5;
      
      public static const const_1172:int = 6;
       
      
      private var _type:int;
      
      private var var_1368:int;
      
      private var var_2481:String;
      
      private var var_2999:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1368 = param2;
         this.var_2481 = param3;
         this.var_2999 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2481;
      }
      
      public function get time() : String
      {
         return this.var_2999;
      }
      
      public function get senderId() : int
      {
         return this.var_1368;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
