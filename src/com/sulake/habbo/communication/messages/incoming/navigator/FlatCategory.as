package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1771:int;
      
      private var var_2854:String;
      
      private var var_350:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1771 = param1.readInteger();
         this.var_2854 = param1.readString();
         this.var_350 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1771;
      }
      
      public function get nodeName() : String
      {
         return this.var_2854;
      }
      
      public function get visible() : Boolean
      {
         return this.var_350;
      }
   }
}
