package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1841:int;
      
      private var var_2690:String;
      
      private var var_1278:int;
      
      private var var_1264:int;
      
      private var var_1912:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1841 = param1.readInteger();
         this.var_2690 = param1.readString();
         this.var_1278 = param1.readInteger();
         this.var_1264 = param1.readInteger();
         this.var_1912 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1841;
      }
      
      public function get petName() : String
      {
         return this.var_2690;
      }
      
      public function get level() : int
      {
         return this.var_1278;
      }
      
      public function get petType() : int
      {
         return this.var_1264;
      }
      
      public function get breed() : int
      {
         return this.var_1912;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
