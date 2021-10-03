package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2437:int;
      
      private var var_1983:String;
      
      private var var_2698:String;
      
      private var var_2695:Boolean;
      
      private var var_2697:Boolean;
      
      private var var_2699:int;
      
      private var var_2696:String;
      
      private var var_2694:String;
      
      private var var_1754:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2437 = param1.readInteger();
         this.var_1983 = param1.readString();
         this.var_2698 = param1.readString();
         this.var_2695 = param1.readBoolean();
         this.var_2697 = param1.readBoolean();
         param1.readString();
         this.var_2699 = param1.readInteger();
         this.var_2696 = param1.readString();
         this.var_2694 = param1.readString();
         this.var_1754 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2437;
      }
      
      public function get avatarName() : String
      {
         return this.var_1983;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2698;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2695;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2697;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2699;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2696;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2694;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
   }
}
