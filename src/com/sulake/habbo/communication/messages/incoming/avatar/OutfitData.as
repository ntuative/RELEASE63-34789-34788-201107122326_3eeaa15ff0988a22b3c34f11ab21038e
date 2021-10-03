package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1926:int;
      
      private var var_2337:String;
      
      private var var_1020:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1926 = param1.readInteger();
         this.var_2337 = param1.readString();
         this.var_1020 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1926;
      }
      
      public function get figureString() : String
      {
         return this.var_2337;
      }
      
      public function get gender() : String
      {
         return this.var_1020;
      }
   }
}
