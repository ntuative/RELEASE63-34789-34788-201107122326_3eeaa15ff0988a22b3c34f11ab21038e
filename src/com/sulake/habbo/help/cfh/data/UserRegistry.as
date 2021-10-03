package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1532:int = 80;
       
      
      private var var_550:Map;
      
      private var var_1012:String = "";
      
      private var var_1520:Array;
      
      public function UserRegistry()
      {
         this.var_550 = new Map();
         this.var_1520 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_550;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_1012 = param1;
         if(this.var_1012 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_1012 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_550.getValue(param1) != null)
         {
            this.var_550.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_1012);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_1012 == "")
         {
            this.var_1520.push(param1);
         }
         this.var_550.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_550.length > const_1532)
         {
            _loc1_ = this.var_550.getKey(0);
            this.var_550.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1520.length > 0)
         {
            _loc1_ = this.var_550.getValue(this.var_1520.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_1012;
            }
         }
      }
   }
}
