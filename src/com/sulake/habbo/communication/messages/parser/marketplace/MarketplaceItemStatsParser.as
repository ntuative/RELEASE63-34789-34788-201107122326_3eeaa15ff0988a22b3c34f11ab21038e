package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2473:int;
      
      private var var_2726:int;
      
      private var var_2724:int;
      
      private var _dayOffsets:Array;
      
      private var var_2135:Array;
      
      private var var_2136:Array;
      
      private var var_2725:int;
      
      private var var_2723:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2473;
      }
      
      public function get offerCount() : int
      {
         return this.var_2726;
      }
      
      public function get historyLength() : int
      {
         return this.var_2724;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2135;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2136;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2725;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2723;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2473 = param1.readInteger();
         this.var_2726 = param1.readInteger();
         this.var_2724 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2135 = [];
         this.var_2136 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2135.push(param1.readInteger());
            this.var_2136.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2723 = param1.readInteger();
         this.var_2725 = param1.readInteger();
         return true;
      }
   }
}
