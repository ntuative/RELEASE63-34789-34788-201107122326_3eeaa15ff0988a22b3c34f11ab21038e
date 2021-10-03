package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_259:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2780:int = 0;
      
      private var var_2781:int = 0;
      
      private var var_2778:int = 0;
      
      private var var_2779:Boolean = false;
      
      private var var_1820:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_259,param6,param7);
         this.var_2780 = param1;
         this.var_2781 = param2;
         this.var_2778 = param3;
         this.var_2779 = param4;
         this.var_1820 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2780;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2781;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2778;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2779;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1820;
      }
   }
}
