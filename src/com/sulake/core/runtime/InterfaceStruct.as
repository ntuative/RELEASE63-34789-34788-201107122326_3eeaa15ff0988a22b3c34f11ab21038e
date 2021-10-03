package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1561:IID;
      
      private var var_1980:String;
      
      private var var_121:IUnknown;
      
      private var var_837:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1561 = param1;
         this.var_1980 = getQualifiedClassName(this.var_1561);
         this.var_121 = param2;
         this.var_837 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1561;
      }
      
      public function get iis() : String
      {
         return this.var_1980;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_121;
      }
      
      public function get references() : uint
      {
         return this.var_837;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_121 == null;
      }
      
      public function dispose() : void
      {
         this.var_1561 = null;
         this.var_1980 = null;
         this.var_121 = null;
         this.var_837 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_837;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_837) : uint(0);
      }
   }
}
