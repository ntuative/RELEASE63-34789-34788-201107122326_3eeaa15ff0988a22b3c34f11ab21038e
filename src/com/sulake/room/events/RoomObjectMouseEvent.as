package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_162:String = "ROE_MOUSE_CLICK";
      
      public static const const_193:String = "ROE_MOUSE_ENTER";
      
      public static const const_640:String = "ROE_MOUSE_MOVE";
      
      public static const const_196:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2332:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_582:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1792:String = "";
      
      private var var_2613:Boolean;
      
      private var var_2620:Boolean;
      
      private var var_2615:Boolean;
      
      private var var_2619:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1792 = param2;
         this.var_2613 = param5;
         this.var_2620 = param6;
         this.var_2615 = param7;
         this.var_2619 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1792;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2613;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2620;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2615;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2619;
      }
   }
}
