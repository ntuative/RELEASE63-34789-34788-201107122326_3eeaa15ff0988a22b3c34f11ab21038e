package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1393:Boolean;
      
      private var var_1394:Boolean;
      
      private var var_1691:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1393;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1394;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1691;
      }
      
      public function flush() : Boolean
      {
         this.var_1393 = false;
         this.var_1394 = false;
         this.var_1691 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1393 = param1.readBoolean();
         this.var_1394 = param1.readBoolean();
         this.var_1691 = param1.readBoolean();
         return true;
      }
   }
}
