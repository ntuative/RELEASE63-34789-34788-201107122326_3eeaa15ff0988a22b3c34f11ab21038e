package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2239:int = 16777215;
      
      public static const const_1293:int = 8191;
      
      public static const const_1217:int = 8191;
      
      public static const const_2116:int = 1;
      
      public static const const_1304:int = 1;
      
      public static const const_1311:int = 1;
      
      private static var var_518:uint = 0;
      
      private static var var_519:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1293)
         {
            param2 = const_1293;
         }
         else if(param2 < const_1304)
         {
            param2 = const_1304;
         }
         if(param3 > const_1217)
         {
            param3 = const_1217;
         }
         else if(param3 < const_1311)
         {
            param3 = const_1311;
         }
         super(param2,param3,param4,param5);
         ++var_518;
         var_519 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_518;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_519;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_519 -= width * height * 4;
            --var_518;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
