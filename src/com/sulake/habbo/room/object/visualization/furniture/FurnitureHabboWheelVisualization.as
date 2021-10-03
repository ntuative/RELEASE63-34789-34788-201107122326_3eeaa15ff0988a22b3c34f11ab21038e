package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1054:int = 10;
      
      private static const const_722:int = 20;
      
      private static const const_1444:int = 31;
      
      private static const const_1445:int = 32;
       
      
      private var var_354:Array;
      
      private var var_823:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_354 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_823)
            {
               this.var_823 = true;
               this.var_354 = new Array();
               this.var_354.push(const_1444);
               this.var_354.push(const_1445);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1054)
         {
            if(this.var_823)
            {
               this.var_823 = false;
               this.var_354 = new Array();
               this.var_354.push(const_1054 + param1);
               this.var_354.push(const_722 + param1);
               this.var_354.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_354.length > 0)
            {
               super.setAnimation(this.var_354.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
