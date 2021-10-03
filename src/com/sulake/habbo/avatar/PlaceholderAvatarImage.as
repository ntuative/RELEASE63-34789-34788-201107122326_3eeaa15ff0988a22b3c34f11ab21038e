package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_802:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1150)
         {
            _structure = null;
            _assets = null;
            var_287 = null;
            var_315 = null;
            _figure = null;
            var_605 = null;
            var_361 = null;
            if(!var_1421 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_879 = null;
            var_1150 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_802[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_802[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_434:
               switch(_loc3_)
               {
                  case AvatarAction.const_806:
                  case AvatarAction.const_539:
                  case AvatarAction.const_429:
                  case AvatarAction.const_779:
                  case AvatarAction.const_396:
                  case AvatarAction.const_782:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_367:
            case AvatarAction.const_180:
            case AvatarAction.const_255:
            case AvatarAction.const_964:
            case AvatarAction.const_736:
            case AvatarAction.const_837:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
