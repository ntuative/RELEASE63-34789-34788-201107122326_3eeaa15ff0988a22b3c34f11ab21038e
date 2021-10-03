package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_461:int = 0;
      
      private var var_580:int = 0;
      
      private var var_719:int = 0;
      
      private var _type:int = 0;
      
      private var var_3124:String = "";
      
      private var var_1662:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2586:int = 0;
      
      private var var_2587:Boolean;
      
      private var var_2935:String = null;
      
      private var var_201:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_580;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_580 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_719;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_719 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_201)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_201)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_201)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2935;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2935 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1662;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_1662 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2586;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2586 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2587;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2587 = param1;
      }
   }
}
