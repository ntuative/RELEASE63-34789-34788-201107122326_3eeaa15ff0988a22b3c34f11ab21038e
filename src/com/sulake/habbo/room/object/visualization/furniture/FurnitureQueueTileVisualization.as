package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1445:int = 3;
      
      private static const const_1611:int = 2;
      
      private static const const_1612:int = 1;
      
      private static const const_1610:int = 15;
       
      
      private var var_354:Array;
      
      private var var_1343:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_354 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1611)
         {
            this.var_354 = new Array();
            this.var_354.push(const_1612);
            this.var_1343 = const_1610;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1343 > 0)
         {
            --this.var_1343;
         }
         if(this.var_1343 == 0)
         {
            if(this.var_354.length > 0)
            {
               super.setAnimation(this.var_354.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
