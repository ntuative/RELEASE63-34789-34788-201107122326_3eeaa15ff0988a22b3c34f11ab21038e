package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1482:int;
      
      private var var_1483:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1482 = this.var_1482;
         _loc1_.var_1483 = this.var_1483;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1482 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1483 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1482;
      }
      
      public function get imgId() : int
      {
         return this.var_1483;
      }
   }
}
