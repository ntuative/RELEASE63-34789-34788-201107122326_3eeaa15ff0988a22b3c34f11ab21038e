package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_847:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1756:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_847);
         this.var_1756 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1756;
      }
   }
}
