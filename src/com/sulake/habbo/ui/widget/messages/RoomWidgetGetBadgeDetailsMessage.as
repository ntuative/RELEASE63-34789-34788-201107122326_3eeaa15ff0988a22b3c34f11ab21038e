package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_1003:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1560:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_1003);
         this.var_1560 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1560;
      }
   }
}
