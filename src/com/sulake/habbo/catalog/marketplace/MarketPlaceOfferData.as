package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_108:int = 1;
      
      public static const const_78:int = 2;
       
      
      private var var_1360:int;
      
      private var _furniId:int;
      
      private var var_2471:int;
      
      private var var_2252:String;
      
      private var var_1833:int;
      
      private var var_2473:int;
      
      private var var_2472:int;
      
      private var var_430:int;
      
      private var var_2474:int = -1;
      
      private var var_1832:int;
      
      private var var_48:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1360 = param1;
         this._furniId = param2;
         this.var_2471 = param3;
         this.var_2252 = param4;
         this.var_1833 = param5;
         this.var_430 = param6;
         this.var_2473 = param7;
         this.var_1832 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.dispose();
            this.var_48 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2473;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_48 != null)
         {
            this.var_48.dispose();
         }
         this.var_48 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2472 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2472;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2474;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2474 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1833 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1360 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1832;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1832 = param1;
      }
   }
}
