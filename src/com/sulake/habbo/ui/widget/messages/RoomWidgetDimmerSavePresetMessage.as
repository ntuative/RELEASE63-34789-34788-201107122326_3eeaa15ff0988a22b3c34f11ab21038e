package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_909:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var _color:uint;
      
      private var var_1291:int;
      
      private var var_2302:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_909);
         this.var_2304 = param1;
         this.var_2303 = param2;
         this._color = param3;
         this.var_1291 = param4;
         this.var_2302 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2304;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2303;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1291;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2302;
      }
   }
}
