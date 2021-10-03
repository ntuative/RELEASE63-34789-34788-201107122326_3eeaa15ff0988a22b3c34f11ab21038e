package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_2571:Number = 0;
      
      private var var_2569:Number = 0;
      
      private var var_2566:Number = 0;
      
      private var var_2570:Number = 0;
      
      private var var_461:int = 0;
      
      private var var_2567:int = 0;
      
      private var var_361:Array;
      
      private var var_2568:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_361 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_177 = param3;
         this.var_178 = param4;
         this.var_2571 = param5;
         this.var_461 = param6;
         this.var_2567 = param7;
         this.var_2569 = param8;
         this.var_2566 = param9;
         this.var_2570 = param10;
         this.var_2568 = param11;
         this.var_361 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function get z() : Number
      {
         return this.var_178;
      }
      
      public function get localZ() : Number
      {
         return this.var_2571;
      }
      
      public function get targetX() : Number
      {
         return this.var_2569;
      }
      
      public function get targetY() : Number
      {
         return this.var_2566;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2570;
      }
      
      public function get dir() : int
      {
         return this.var_461;
      }
      
      public function get dirHead() : int
      {
         return this.var_2567;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2568;
      }
      
      public function get actions() : Array
      {
         return this.var_361.slice();
      }
   }
}
