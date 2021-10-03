package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1841:int;
      
      private var var_1278:int;
      
      private var var_2377:int;
      
      private var var_2381:int;
      
      private var var_2380:int;
      
      private var _energy:int;
      
      private var var_2374:int;
      
      private var _nutrition:int;
      
      private var var_2376:int;
      
      private var var_2375:int;
      
      private var _ownerName:String;
      
      private var var_2530:int;
      
      private var var_572:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1841;
      }
      
      public function get level() : int
      {
         return this.var_1278;
      }
      
      public function get levelMax() : int
      {
         return this.var_2377;
      }
      
      public function get experience() : int
      {
         return this.var_2381;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2380;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2374;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2376;
      }
      
      public function get ownerId() : int
      {
         return this.var_2375;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2530;
      }
      
      public function get age() : int
      {
         return this.var_572;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1841 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1278 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2377 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2381 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2374 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2376 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2375 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2530 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_572 = param1;
      }
   }
}
