package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1357:int;
      
      private var var_2476:String;
      
      private var var_2475:int;
      
      private var var_2337:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1357 = param1.readInteger();
         this.var_2476 = param1.readString();
         this.var_2337 = param1.readString();
         this.var_2475 = this.var_1357;
      }
      
      public function get requestId() : int
      {
         return this.var_1357;
      }
      
      public function get requesterName() : String
      {
         return this.var_2476;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2475;
      }
      
      public function get figureString() : String
      {
         return this.var_2337;
      }
   }
}
