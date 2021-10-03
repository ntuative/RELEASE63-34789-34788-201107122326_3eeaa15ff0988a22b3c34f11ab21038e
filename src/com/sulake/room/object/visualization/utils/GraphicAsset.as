package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2311:String;
      
      private var var_2876:String;
      
      private var var_467:BitmapDataAsset;
      
      private var var_1506:Boolean;
      
      private var var_1507:Boolean;
      
      private var var_2877:Boolean;
      
      private var _offsetX:int;
      
      private var var_1177:int;
      
      private var var_225:int;
      
      private var _height:int;
      
      private var var_880:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2311 = param1;
         this.var_2876 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_467 = _loc9_;
            this.var_880 = false;
         }
         else
         {
            this.var_467 = null;
            this.var_880 = true;
         }
         this.var_1506 = param4;
         this.var_1507 = param5;
         this._offsetX = param6;
         this.var_1177 = param7;
         this.var_2877 = param8;
      }
      
      public function dispose() : void
      {
         this.var_467 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_880 && this.var_467 != null)
         {
            _loc1_ = this.var_467.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_225 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_880 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1507;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1506;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_225;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2311;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2876;
      }
      
      public function get asset() : IAsset
      {
         return this.var_467;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2877;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1506)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1507)
         {
            return this.var_1177;
         }
         return -(this.height + this.var_1177);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1177;
      }
   }
}
