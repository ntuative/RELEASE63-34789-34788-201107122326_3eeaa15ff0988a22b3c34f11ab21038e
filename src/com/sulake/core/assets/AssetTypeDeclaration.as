package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2397:String;
      
      private var var_2398:Class;
      
      private var var_2396:Class;
      
      private var var_1780:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2397 = param1;
         this.var_2398 = param2;
         this.var_2396 = param3;
         if(rest == null)
         {
            this.var_1780 = new Array();
         }
         else
         {
            this.var_1780 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2397;
      }
      
      public function get method_2() : Class
      {
         return this.var_2398;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2396;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1780;
      }
   }
}
