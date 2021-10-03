package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1792:String = "";
      
      private var var_2065:String = "";
      
      private var var_2284:String = "";
      
      private var var_2617:Number = 0;
      
      private var var_2618:Number = 0;
      
      private var var_2616:Number = 0;
      
      private var var_2614:Number = 0;
      
      private var var_2620:Boolean = false;
      
      private var var_2613:Boolean = false;
      
      private var var_2615:Boolean = false;
      
      private var var_2619:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1792 = param2;
         this.var_2065 = param3;
         this.var_2284 = param4;
         this.var_2617 = param5;
         this.var_2618 = param6;
         this.var_2616 = param7;
         this.var_2614 = param8;
         this.var_2620 = param9;
         this.var_2613 = param10;
         this.var_2615 = param11;
         this.var_2619 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1792;
      }
      
      public function get canvasId() : String
      {
         return this.var_2065;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2284;
      }
      
      public function get screenX() : Number
      {
         return this.var_2617;
      }
      
      public function get screenY() : Number
      {
         return this.var_2618;
      }
      
      public function get localX() : Number
      {
         return this.var_2616;
      }
      
      public function get localY() : Number
      {
         return this.var_2614;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2620;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2613;
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
