package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1543:Boolean;
      
      private var var_2756:int;
      
      private var var_2080:int;
      
      private var var_2081:int;
      
      private var var_2758:int;
      
      private var var_2759:int;
      
      private var var_2757:int;
      
      private var var_2354:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1543;
      }
      
      public function get commission() : int
      {
         return this.var_2756;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2080;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2081;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2759;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2758;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2757;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2354;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1543 = param1.readBoolean();
         this.var_2756 = param1.readInteger();
         this.var_2080 = param1.readInteger();
         this.var_2081 = param1.readInteger();
         this.var_2759 = param1.readInteger();
         this.var_2758 = param1.readInteger();
         this.var_2757 = param1.readInteger();
         this.var_2354 = param1.readInteger();
         return true;
      }
   }
}
