package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1021:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2632:String;
      
      private var var_2631:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_1021,param3,param4);
         this.var_2632 = param1;
         this.var_2631 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2632;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2631;
      }
   }
}
