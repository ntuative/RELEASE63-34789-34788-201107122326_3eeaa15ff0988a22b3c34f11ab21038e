package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1730:IID;
      
      private var var_1150:Boolean;
      
      private var var_1163:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1730 = param1;
         this.var_1163 = new Array();
         this.var_1150 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1730;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1150;
      }
      
      public function get receivers() : Array
      {
         return this.var_1163;
      }
      
      public function dispose() : void
      {
         if(!this.var_1150)
         {
            this.var_1150 = true;
            this.var_1730 = null;
            while(this.var_1163.length > 0)
            {
               this.var_1163.pop();
            }
            this.var_1163 = null;
         }
      }
   }
}
