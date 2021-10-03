package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_173:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_151:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1297:String;
      
      private var var_1486:Array;
      
      private var var_1347:Array;
      
      private var var_1825:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1297 = param2;
         this.var_1486 = param3;
         this.var_1347 = param4;
         if(this.var_1347 == null)
         {
            this.var_1347 = [];
         }
         this.var_1825 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1297;
      }
      
      public function get choices() : Array
      {
         return this.var_1486.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1347.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1825;
      }
   }
}
