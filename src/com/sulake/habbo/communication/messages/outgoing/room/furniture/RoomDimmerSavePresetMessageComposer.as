package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var var_3039:String;
      
      private var var_3038:int;
      
      private var var_3037:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2304 = param1;
         this.var_2303 = param2;
         this.var_3039 = param3;
         this.var_3038 = param4;
         this.var_3037 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2304,this.var_2303,this.var_3039,this.var_3038,int(this.var_3037)];
      }
      
      public function dispose() : void
      {
      }
   }
}
