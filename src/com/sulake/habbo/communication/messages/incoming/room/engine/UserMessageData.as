package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1216:String = "M";
      
      public static const const_2012:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_461:int = 0;
      
      private var _name:String = "";
      
      private var var_1709:int = 0;
      
      private var var_1065:String = "";
      
      private var _figure:String = "";
      
      private var var_2662:String = "";
      
      private var var_2648:int;
      
      private var var_2659:int = 0;
      
      private var var_2660:String = "";
      
      private var var_2663:int = 0;
      
      private var var_2661:int = 0;
      
      private var var_2669:String = "";
      
      private var var_201:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_201)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_177 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_178;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_178 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_461;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_461 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_201)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1709;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_1709 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1065;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_1065 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_201)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2662;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2662 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2648;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2648 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2659;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2659 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2660;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2660 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2663;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2663 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2661;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2661 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2669;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2669 = param1;
         }
      }
   }
}
