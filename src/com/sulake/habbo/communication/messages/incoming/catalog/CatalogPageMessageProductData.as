package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_79:String = "s";
      
      public static const const_189:String = "e";
       
      
      private var var_1642:String;
      
      private var var_2926:int;
      
      private var var_1094:String;
      
      private var var_1641:int;
      
      private var var_2128:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1642 = param1.readString();
         this.var_2926 = param1.readInteger();
         this.var_1094 = param1.readString();
         this.var_1641 = param1.readInteger();
         this.var_2128 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1642;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2926;
      }
      
      public function get extraParam() : String
      {
         return this.var_1094;
      }
      
      public function get productCount() : int
      {
         return this.var_1641;
      }
      
      public function get expiration() : int
      {
         return this.var_2128;
      }
   }
}
