package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PlaceObjectErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1873:int;
      
      public function PlaceObjectErrorMessageParser()
      {
         super();
      }
      
      public function get errorCode() : int
      {
         return this.var_1873;
      }
      
      public function flush() : Boolean
      {
         this.var_1873 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1873 = param1.readInteger();
         return true;
      }
   }
}
