package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2393:int;
      
      private var var_2917:int;
      
      private var var_1215:int;
      
      private var var_1216:int;
      
      private var var_1845:int;
      
      private var var_2916:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2393 = param1.readInteger();
         this.var_2917 = param1.readInteger();
         this.var_1215 = param1.readInteger();
         this.var_1216 = param1.readInteger();
         this.var_1845 = param1.readInteger();
         this.var_2916 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2393;
      }
      
      public function get charges() : int
      {
         return this.var_2917;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1215;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1216;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2916;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1845;
      }
   }
}
