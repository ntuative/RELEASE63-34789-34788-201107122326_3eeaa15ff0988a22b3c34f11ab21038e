package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1841:int;
      
      private var _name:String;
      
      private var var_1278:int;
      
      private var var_2885:int;
      
      private var var_2381:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2884:int;
      
      private var var_2883:int;
      
      private var var_2882:int;
      
      private var var_2530:int;
      
      private var var_2375:int;
      
      private var _ownerName:String;
      
      private var var_572:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1841;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1278;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2885;
      }
      
      public function get experience() : int
      {
         return this.var_2381;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2884;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2883;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2882;
      }
      
      public function get respect() : int
      {
         return this.var_2530;
      }
      
      public function get ownerId() : int
      {
         return this.var_2375;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_572;
      }
      
      public function flush() : Boolean
      {
         this.var_1841 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1841 = param1.readInteger();
         this._name = param1.readString();
         this.var_1278 = param1.readInteger();
         this.var_2885 = param1.readInteger();
         this.var_2381 = param1.readInteger();
         this.var_2884 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2883 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2882 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2530 = param1.readInteger();
         this.var_2375 = param1.readInteger();
         this.var_572 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
