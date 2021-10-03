package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1600:int;
      
      private var var_1981:Number;
      
      private var var_2702:Number;
      
      private var var_2701:int;
      
      private var var_2703:Number;
      
      private var var_2700:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1600 = param1;
         this.var_1981 = param2;
         this.var_2702 = param3;
         this.var_2703 = param4;
         this.var_2700 = param5;
         this.var_2701 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1600;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1981 < 0)
         {
            return 0;
         }
         return this.var_1981 + (getTimer() - this.var_2701) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2702;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2703;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2700;
      }
   }
}
