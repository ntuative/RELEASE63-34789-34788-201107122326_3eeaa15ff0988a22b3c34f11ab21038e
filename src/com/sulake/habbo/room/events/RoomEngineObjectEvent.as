package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_902:String = "REOE_OBJECT_SELECTED";
      
      public static const const_619:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_201:String = "REOB_OBJECT_ADDED";
      
      public static const const_428:String = "REOE_OBJECT_REMOVED";
      
      public static const const_159:String = "REOB_OBJECT_PLACED";
      
      public static const const_794:String = "REOB_OBJECT_CONTENT_UPDATED";
      
      public static const const_1020:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_193:String = "REOB_OBJECT_MOUSE_ENTER";
      
      public static const const_196:String = "REOB_OBJECT_MOUSE_LEAVE";
      
      public static const const_167:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_177:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_178:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_175:String = "REOE_WIDGET_REQUEST_TROPHY";
      
      public static const const_157:String = "REOE_WIDGET_REQUEST_TEASER";
      
      public static const const_144:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_147:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_111:String = "REOR_REMOVE_DIMMER";
      
      public static const const_166:String = "REOR_REQUEST_CLOTHING_CHANGE";
      
      public static const const_156:String = "REOR_WIDGET_REQUEST_PLAYLIST_EDITOR";
      
      public static const const_512:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_494:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_584:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_627:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
       
      
      private var var_239:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         this.var_239 = param4;
         this._category = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get category() : int
      {
         return this._category;
      }
   }
}
