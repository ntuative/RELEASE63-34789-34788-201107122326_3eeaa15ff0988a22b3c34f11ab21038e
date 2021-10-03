package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_578:WallRasterizer;
      
      private var var_577:FloorRasterizer;
      
      private var var_868:WallAdRasterizer;
      
      private var var_576:LandscapeRasterizer;
      
      private var var_867:PlaneMaskManager;
      
      private var var_880:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_578 = new WallRasterizer();
         this.var_577 = new FloorRasterizer();
         this.var_868 = new WallAdRasterizer();
         this.var_576 = new LandscapeRasterizer();
         this.var_867 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_880;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_577;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_578;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_868;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_576;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_867;
      }
      
      public function dispose() : void
      {
         if(this.var_578 != null)
         {
            this.var_578.dispose();
            this.var_578 = null;
         }
         if(this.var_577 != null)
         {
            this.var_577.dispose();
            this.var_577 = null;
         }
         if(this.var_868 != null)
         {
            this.var_868.dispose();
            this.var_868 = null;
         }
         if(this.var_576 != null)
         {
            this.var_576.dispose();
            this.var_576 = null;
         }
         if(this.var_867 != null)
         {
            this.var_867.dispose();
            this.var_867 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_578 != null)
         {
            this.var_578.clearCache();
         }
         if(this.var_577 != null)
         {
            this.var_577.clearCache();
         }
         if(this.var_576 != null)
         {
            this.var_576.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_578.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_577.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_868.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_576.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_867.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_880)
         {
            return;
         }
         this.var_578.initializeAssetCollection(param1);
         this.var_577.initializeAssetCollection(param1);
         this.var_868.initializeAssetCollection(param1);
         this.var_576.initializeAssetCollection(param1);
         this.var_867.initializeAssetCollection(param1);
         this.var_880 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
