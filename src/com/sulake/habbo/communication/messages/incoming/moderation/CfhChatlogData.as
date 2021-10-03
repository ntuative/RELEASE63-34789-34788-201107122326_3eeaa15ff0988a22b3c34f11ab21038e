package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2193:int;
      
      private var var_3027:int;
      
      private var var_1591:int;
      
      private var var_2714:int;
      
      private var var_142:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2193 = param1.readInteger();
         this.var_3027 = param1.readInteger();
         this.var_1591 = param1.readInteger();
         this.var_2714 = param1.readInteger();
         this.var_142 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2193);
      }
      
      public function get callId() : int
      {
         return this.var_2193;
      }
      
      public function get callerUserId() : int
      {
         return this.var_3027;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1591;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2714;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_142;
      }
   }
}
