package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_972:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1794:String = "inventory_effects";
      
      public static const const_1390:String = "inventory_badges";
      
      public static const const_1941:String = "inventory_clothes";
      
      public static const const_1862:String = "inventory_furniture";
       
      
      private var var_2488:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_972);
         this.var_2488 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2488;
      }
   }
}
