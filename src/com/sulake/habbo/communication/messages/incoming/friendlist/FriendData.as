package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1020:int;
      
      private var var_838:Boolean;
      
      private var var_1755:Boolean;
      
      private var _figure:String;
      
      private var var_1514:int;
      
      private var var_1756:String;
      
      private var var_1757:String;
      
      private var var_1754:String;
      
      private var var_2434:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1020 = param1.readInteger();
         this.var_838 = param1.readBoolean();
         this.var_1755 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1514 = param1.readInteger();
         this.var_1756 = param1.readString();
         this.var_1757 = param1.readString();
         this.var_1754 = param1.readString();
         this.var_2434 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1020;
      }
      
      public function get online() : Boolean
      {
         return this.var_838;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1755;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1514;
      }
      
      public function get motto() : String
      {
         return this.var_1756;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1757;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
      
      public function get facebookId() : String
      {
         return this.var_2434;
      }
   }
}
