package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_848:String = "";
      
      public static const const_446:int = 0;
      
      public static const const_520:int = 255;
      
      public static const const_804:Boolean = false;
      
      public static const const_536:int = 0;
      
      public static const const_492:int = 0;
      
      public static const const_424:int = 0;
      
      public static const const_1381:int = 1;
      
      public static const const_1352:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2314:String = "";
      
      private var var_2063:int = 0;
      
      private var var_2312:int = 255;
      
      private var var_2879:Boolean = false;
      
      private var var_2881:int = 0;
      
      private var var_2880:int = 0;
      
      private var var_2878:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2314 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2314;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2063 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2063;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2312 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2312;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2879 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2879;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2881 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2881;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2880 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2880;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2878 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2878;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
