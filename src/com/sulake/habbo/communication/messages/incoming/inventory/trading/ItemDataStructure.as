package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2423:int;
      
      private var var_1661:String;
      
      private var var_2445:int;
      
      private var var_2442:int;
      
      private var _category:int;
      
      private var var_2252:String;
      
      private var var_1662:int;
      
      private var var_2447:int;
      
      private var var_2441:int;
      
      private var var_2444:int;
      
      private var var_2443:int;
      
      private var var_2446:Boolean;
      
      private var var_3108:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2423 = param1;
         this.var_1661 = param2;
         this.var_2445 = param3;
         this.var_2442 = param4;
         this._category = param5;
         this.var_2252 = param6;
         this.var_1662 = param7;
         this.var_2447 = param8;
         this.var_2441 = param9;
         this.var_2444 = param10;
         this.var_2443 = param11;
         this.var_2446 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2423;
      }
      
      public function get itemType() : String
      {
         return this.var_1661;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2445;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2442;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get extra() : int
      {
         return this.var_1662;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2447;
      }
      
      public function get creationDay() : int
      {
         return this.var_2441;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2444;
      }
      
      public function get creationYear() : int
      {
         return this.var_2443;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2446;
      }
      
      public function get songID() : int
      {
         return this.var_1662;
      }
   }
}
