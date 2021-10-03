package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2543:int;
      
      private var var_2544:int;
      
      private var var_2545:int;
      
      private var var_2546:String;
      
      private var var_1851:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2543 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this.var_2545 = param1.readInteger();
         this.var_2546 = param1.readString();
         this.var_1851 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2543;
      }
      
      public function get minute() : int
      {
         return this.var_2544;
      }
      
      public function get chatterId() : int
      {
         return this.var_2545;
      }
      
      public function get chatterName() : String
      {
         return this.var_2546;
      }
      
      public function get msg() : String
      {
         return this.var_1851;
      }
   }
}
