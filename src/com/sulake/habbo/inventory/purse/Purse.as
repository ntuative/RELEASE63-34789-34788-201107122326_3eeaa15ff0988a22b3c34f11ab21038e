package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2186:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_3028:int = 0;
      
      private var var_3029:Boolean = false;
      
      private var var_2596:Boolean = false;
      
      private var var_3017:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2186 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2187 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_3028 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_3029 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2596 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_3017 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2186;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2187;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_3028;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_3029;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2596;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_3017;
      }
   }
}
