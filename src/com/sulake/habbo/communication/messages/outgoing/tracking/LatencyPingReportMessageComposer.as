package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_3003:int;
      
      private var var_3005:int;
      
      private var var_3004:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_3003 = param1;
         this.var_3005 = param2;
         this.var_3004 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_3003,this.var_3005,this.var_3004];
      }
      
      public function dispose() : void
      {
      }
   }
}
