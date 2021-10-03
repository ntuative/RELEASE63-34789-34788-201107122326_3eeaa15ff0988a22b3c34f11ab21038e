package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1278:int;
      
      private var var_2180:String;
      
      private var var_2073:int;
      
      private var var_2342:int;
      
      private var var_2338:int;
      
      private var var_2075:int;
      
      private var var_2074:Boolean;
      
      private var _category:String;
      
      private var var_2848:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1278 = param1.readInteger();
         this.var_2180 = param1.readString();
         this.var_2073 = Math.max(1,param1.readInteger());
         this.var_2342 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_2075 = param1.readInteger();
         this.var_2074 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2848 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2180;
      }
      
      public function get level() : int
      {
         return this.var_1278;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2073;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2342;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2338;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2075;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2074;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2848;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1278 > 1 || this.var_2074;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2075 = this.var_2073;
      }
   }
}
