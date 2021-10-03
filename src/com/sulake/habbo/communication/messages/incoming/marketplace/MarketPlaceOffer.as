package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1360:int;
      
      private var _furniId:int;
      
      private var var_2471:int;
      
      private var var_2252:String;
      
      private var var_1833:int;
      
      private var var_430:int;
      
      private var var_2474:int = -1;
      
      private var var_2473:int;
      
      private var var_1832:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1360 = param1;
         this._furniId = param2;
         this.var_2471 = param3;
         this.var_2252 = param4;
         this.var_1833 = param5;
         this.var_430 = param6;
         this.var_2474 = param7;
         this.var_2473 = param8;
         this.var_1832 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get method_1() : int
      {
         return this.var_2471;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2474;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2473;
      }
      
      public function get offerCount() : int
      {
         return this.var_1832;
      }
   }
}
