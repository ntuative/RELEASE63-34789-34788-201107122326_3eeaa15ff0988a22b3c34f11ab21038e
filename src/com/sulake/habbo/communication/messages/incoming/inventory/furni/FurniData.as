package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2563:int;
      
      private var var_1661:String;
      
      private var _objId:int;
      
      private var var_1732:int;
      
      private var _category:int;
      
      private var var_2252:String;
      
      private var var_2656:Boolean;
      
      private var var_2657:Boolean;
      
      private var var_2655:Boolean;
      
      private var var_2658:Boolean;
      
      private var var_2586:int;
      
      private var var_1662:int;
      
      private var var_1926:String = "";
      
      private var var_1600:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2563 = param1;
         this.var_1661 = param2;
         this._objId = param3;
         this.var_1732 = param4;
         this._category = param5;
         this.var_2252 = param6;
         this.var_2656 = param7;
         this.var_2657 = param8;
         this.var_2655 = param9;
         this.var_2658 = param10;
         this.var_2586 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1926 = param1;
         this.var_1662 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2563;
      }
      
      public function get itemType() : String
      {
         return this.var_1661;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1732;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2656;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2657;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2655;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2658;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2586;
      }
      
      public function get slotId() : String
      {
         return this.var_1926;
      }
      
      public function get songId() : int
      {
         return this.var_1600;
      }
      
      public function get extra() : int
      {
         return this.var_1662;
      }
   }
}
