package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1145:String;
      
      protected var var_211:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_937:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_937 = param1;
         this.var_1145 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1145;
      }
      
      public function get content() : Object
      {
         return this.var_211;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_937;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_211.loaderInfo != null)
            {
               if(this.var_211.loaderInfo.loader != null)
               {
                  this.var_211.loaderInfo.loader.unload();
               }
            }
            this.var_211 = null;
            this.var_937 = null;
            this._disposed = true;
            this.var_1145 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_211 = param1 as DisplayObject;
            if(this.var_211 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_211 = DisplayAsset(param1).var_211;
            this.var_937 = DisplayAsset(param1).var_937;
            if(this.var_211 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_211 = DisplayAsset(param1).var_211;
            this.var_937 = DisplayAsset(param1).var_937;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
