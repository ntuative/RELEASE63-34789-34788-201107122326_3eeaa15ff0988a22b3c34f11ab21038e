package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1360:int;
      
      private var var_2914:Boolean;
      
      private var var_2283:Boolean;
      
      private var var_2915:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_2914 = param1.readBoolean();
         this.var_2915 = param1.readInteger();
         this.var_2283 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2914;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2283;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2915;
      }
   }
}
