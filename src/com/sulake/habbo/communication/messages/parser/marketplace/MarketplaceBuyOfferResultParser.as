package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceBuyOfferResultParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_2592:int = -1;
      
      private var var_2590:int = -1;
      
      private var var_2591:int = -1;
      
      public function MarketplaceBuyOfferResultParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get offerId() : int
      {
         return this.var_2592;
      }
      
      public function get newPrice() : int
      {
         return this.var_2590;
      }
      
      public function get requestedOfferId() : int
      {
         return this.var_2591;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_2590 = param1.readInteger();
         this.var_2591 = param1.readInteger();
         return true;
      }
   }
}
