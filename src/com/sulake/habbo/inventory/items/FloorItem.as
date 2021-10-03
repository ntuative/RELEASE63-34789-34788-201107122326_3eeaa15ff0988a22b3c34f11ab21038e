package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2252:String;
      
      protected var var_1662:Number;
      
      protected var var_3058:Boolean;
      
      protected var var_3059:Boolean;
      
      protected var var_2446:Boolean;
      
      protected var var_2898:Boolean;
      
      protected var var_3063:int;
      
      protected var var_2441:int;
      
      protected var var_2444:int;
      
      protected var var_2443:int;
      
      protected var var_1926:String;
      
      protected var var_1600:int;
      
      protected var var_946:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2446 = param5;
         this.var_3059 = param6;
         this.var_3058 = param7;
         this.var_2898 = param8;
         this.var_2252 = param9;
         this.var_1662 = param10;
         this.var_3063 = param11;
         this.var_2441 = param12;
         this.var_2444 = param13;
         this.var_2443 = param14;
         this.var_1926 = param15;
         this.var_1600 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get extra() : Number
      {
         return this.var_1662;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3058;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3059;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2446;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2898;
      }
      
      public function get expires() : int
      {
         return this.var_3063;
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
      
      public function get slotId() : String
      {
         return this.var_1926;
      }
      
      public function get songId() : int
      {
         return this.var_1600;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_946 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_946;
      }
   }
}
