package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1884:String = "pricing_model_unknown";
      
      public static const const_405:String = "pricing_model_single";
      
      public static const const_431:String = "pricing_model_multi";
      
      public static const const_545:String = "pricing_model_bundle";
      
      public static const const_1768:String = "price_type_none";
      
      public static const const_916:String = "price_type_credits";
      
      public static const const_1327:String = "price_type_activitypoints";
      
      public static const const_1248:String = "price_type_credits_and_activitypoints";
       
      
      private var var_798:String;
      
      private var var_1217:String;
      
      private var var_1360:int;
      
      private var var_1844:String;
      
      private var var_1215:int;
      
      private var var_1216:int;
      
      private var var_1845:int;
      
      private var var_259:ICatalogPage;
      
      private var var_651:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1820:int = 0;
      
      private var var_2495:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1360 = param1;
         this.var_1844 = param2;
         this.var_1215 = param3;
         this.var_1216 = param4;
         this.var_1845 = param5;
         this.var_259 = param8;
         this.var_1820 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1820;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_259;
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
      
      public function get activityPointType() : int
      {
         return this.var_1845;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_651;
      }
      
      public function get pricingModel() : String
      {
         return this.var_798;
      }
      
      public function get priceType() : String
      {
         return this.var_1217;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2495;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2495 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1360 = 0;
         this.var_1844 = "";
         this.var_1215 = 0;
         this.var_1216 = 0;
         this.var_1845 = 0;
         this.var_259 = null;
         if(this.var_651 != null)
         {
            this.var_651.dispose();
            this.var_651 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_798)
         {
            case const_405:
               this.var_651 = new SingleProductContainer(this,param1);
               break;
            case const_431:
               this.var_651 = new MultiProductContainer(this,param1);
               break;
            case const_545:
               this.var_651 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_798);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_798 = const_405;
            }
            else
            {
               this.var_798 = const_431;
            }
         }
         else if(param1.length > 1)
         {
            this.var_798 = const_545;
         }
         else
         {
            this.var_798 = const_1884;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1215 > 0 && this.var_1216 > 0)
         {
            this.var_1217 = const_1248;
         }
         else if(this.var_1215 > 0)
         {
            this.var_1217 = const_916;
         }
         else if(this.var_1216 > 0)
         {
            this.var_1217 = const_1327;
         }
         else
         {
            this.var_1217 = const_1768;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_259.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_651.products)
         {
            _loc4_ = this.var_259.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
