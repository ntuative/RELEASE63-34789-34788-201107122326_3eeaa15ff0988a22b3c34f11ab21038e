package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1777:int;
      
      private var var_2391:int;
      
      private var var_781:int;
      
      private var var_560:Number;
      
      private var var_2390:Boolean;
      
      private var var_2392:int;
      
      private var var_1778:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_560);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2391 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2392 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2390 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_781;
         if(this.var_781 == 1)
         {
            this.var_560 = param1;
            this.var_1777 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_781);
            this.var_560 = this.var_560 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2390 && param3 - this.var_1777 >= this.var_2391)
         {
            this.var_781 = 0;
            if(this.var_1778 < this.var_2392)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1778;
               this.var_1777 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
