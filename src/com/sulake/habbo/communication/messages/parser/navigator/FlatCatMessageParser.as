package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_426:int;
      
      private var var_1771:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_426 = param1.readInteger();
         this.var_1771 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_426 = 0;
         this.var_1771 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_426;
      }
      
      public function get nodeId() : int
      {
         return this.var_1771;
      }
   }
}
