package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2486:int = 0;
      
      private var var_1578:String = "";
      
      private var var_1999:String = "";
      
      private var var_2483:String = "";
      
      private var var_2482:String = "";
      
      private var var_1842:int = 0;
      
      private var var_2484:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_1580:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_1581:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2486 = param1;
         this.var_1578 = param2;
         this.var_1999 = param3;
         this.var_2483 = param4;
         this.var_2482 = param5;
         if(param6)
         {
            this.var_1842 = 1;
         }
         else
         {
            this.var_1842 = 0;
         }
         this.var_2484 = param7;
         this.var_2487 = param8;
         this.var_1580 = param9;
         this.var_2485 = param10;
         this.var_1581 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2486,this.var_1578,this.var_1999,this.var_2483,this.var_2482,this.var_1842,this.var_2484,this.var_2487,this.var_1580,this.var_2485,this.var_1581];
      }
   }
}
