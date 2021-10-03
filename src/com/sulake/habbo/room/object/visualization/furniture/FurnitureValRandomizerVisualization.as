package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1054:int = 20;
      
      private static const const_722:int = 10;
      
      private static const const_1444:int = 31;
      
      private static const const_1445:int = 32;
      
      private static const const_721:int = 30;
       
      
      private var var_354:Array;
      
      private var var_823:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_354 = new Array();
         super();
         super.setAnimation(const_721);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_722)
         {
            if(this.var_823)
            {
               this.var_823 = false;
               this.var_354 = new Array();
               if(direction == 2)
               {
                  this.var_354.push(const_1054 + 5 - param1);
                  this.var_354.push(const_722 + 5 - param1);
               }
               else
               {
                  this.var_354.push(const_1054 + param1);
                  this.var_354.push(const_722 + param1);
               }
               this.var_354.push(const_721);
               return;
            }
            super.setAnimation(const_721);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
