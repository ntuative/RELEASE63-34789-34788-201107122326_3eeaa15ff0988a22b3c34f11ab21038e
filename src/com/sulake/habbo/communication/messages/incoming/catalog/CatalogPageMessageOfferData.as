package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1360:int;
      
      private var var_1844:String;
      
      private var var_1215:int;
      
      private var var_1216:int;
      
      private var var_1845:int;
      
      private var var_1820:int;
      
      private var var_1292:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_1844 = param1.readString();
         this.var_1215 = param1.readInteger();
         this.var_1216 = param1.readInteger();
         this.var_1845 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1292 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1292.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1820 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get localizationId() : String
      {
         return this.var_1844;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1215;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1216;
      }
      
      public function get products() : Array
      {
         return this.var_1292;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1845;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1820;
      }
   }
}
