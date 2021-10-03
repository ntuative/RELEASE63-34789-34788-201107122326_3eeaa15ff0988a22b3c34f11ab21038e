package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1446:Number = 12;
       
      
      private var var_2410:int = -1;
      
      private var var_2407:int = -2;
      
      private var var_216:Vector3d = null;
      
      private var var_1178:Number = 0;
      
      private var var_1463:Number = 0;
      
      private var var_1785:Boolean = false;
      
      private var var_194:Vector3d = null;
      
      private var var_1783:Vector3d;
      
      private var var_2406:Boolean = false;
      
      private var var_2411:Boolean = false;
      
      private var var_2405:Boolean = false;
      
      private var var_2404:Boolean = false;
      
      private var var_2409:int = 0;
      
      private var var_2403:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2408:int = 0;
      
      private var var_2412:int = 0;
      
      private var var_1738:int = -1;
      
      private var var_1782:int = 0;
      
      private var var_1784:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1783 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_194;
      }
      
      public function get targetId() : int
      {
         return this.var_2410;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2407;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1783;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2406;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2411;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2405;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2404;
      }
      
      public function get screenWd() : int
      {
         return this.var_2409;
      }
      
      public function get screenHt() : int
      {
         return this.var_2403;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2408;
      }
      
      public function get roomHt() : int
      {
         return this.var_2412;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1738;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_216 != null && this.var_194 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2410 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1783.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2406 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2411 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2405 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2404 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2409 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2403 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1784 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2412 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1738 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_216 == null)
         {
            this.var_216 = new Vector3d();
         }
         if(this.var_216.x != param1.x || this.var_216.y != param1.y || this.var_216.z != param1.z)
         {
            this.var_216.assign(param1);
            this.var_1782 = 0;
            _loc2_ = Vector3d.dif(this.var_216,this.var_194);
            this.var_1178 = _loc2_.length;
            this.var_1785 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_216 = null;
         this.var_194 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_194 != null)
         {
            return;
         }
         this.var_194 = new Vector3d();
         this.var_194.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_194 == null)
         {
            this.var_194 = new Vector3d();
         }
         this.var_194.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_216 != null && this.var_194 != null)
         {
            ++this.var_1782;
            if(this.var_1784)
            {
               this.var_1784 = false;
               this.var_194 = this.var_216;
               this.var_216 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_216,this.var_194);
            if(_loc3_.length > this.var_1178)
            {
               this.var_1178 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_194 = this.var_216;
               this.var_216 = null;
               this.var_1463 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1178);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1178 / const_1446;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1785)
               {
                  if(_loc7_ < this.var_1463)
                  {
                     _loc7_ = this.var_1463;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1785 = false;
                  }
               }
               this.var_1463 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_194 = Vector3d.sum(this.var_194,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1738 = -1;
      }
   }
}
