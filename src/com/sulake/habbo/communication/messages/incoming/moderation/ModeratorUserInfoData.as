package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2686:int;
      
      private var var_2687:int;
      
      private var var_838:Boolean;
      
      private var var_2685:int;
      
      private var var_2683:int;
      
      private var var_2684:int;
      
      private var var_2682:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2686 = param1.readInteger();
         this.var_2687 = param1.readInteger();
         this.var_838 = param1.readBoolean();
         this.var_2685 = param1.readInteger();
         this.var_2683 = param1.readInteger();
         this.var_2684 = param1.readInteger();
         this.var_2682 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2686;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2687;
      }
      
      public function get online() : Boolean
      {
         return this.var_838;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2685;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2683;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2684;
      }
      
      public function get banCount() : int
      {
         return this.var_2682;
      }
   }
}
