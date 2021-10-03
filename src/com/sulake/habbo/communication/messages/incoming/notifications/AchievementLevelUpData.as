package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1278:int;
      
      private var var_2016:int;
      
      private var var_2342:int;
      
      private var var_2338:int;
      
      private var var_2339:int;
      
      private var var_2180:int;
      
      private var var_2341:String = "";
      
      private var var_2340:String = "";
      
      private var var_2343:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1278 = param1.readInteger();
         this.var_2180 = param1.readInteger();
         this.var_2341 = param1.readString();
         this.var_2016 = param1.readInteger();
         this.var_2342 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this.var_2343 = param1.readInteger();
         this.var_2340 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1278;
      }
      
      public function get points() : int
      {
         return this.var_2016;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2342;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2338;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2339;
      }
      
      public function get badgeId() : int
      {
         return this.var_2180;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2341;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2340;
      }
      
      public function get achievementID() : int
      {
         return this.var_2343;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
