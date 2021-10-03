package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2181:int = 0;
      
      private var var_1689:Dictionary;
      
      private var var_2186:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_2596:Boolean = false;
      
      private var var_2604:int = 0;
      
      private var var_2600:int = 0;
      
      private var var_3017:Boolean = false;
      
      public function Purse()
      {
         this.var_1689 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2181;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2181 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2186;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2186 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2187;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2187 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2186 > 0 || this.var_2187 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2596;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_3017;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_3017 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2596 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2604;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2604 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2600;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2600 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1689;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1689 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1689[param1];
      }
   }
}
