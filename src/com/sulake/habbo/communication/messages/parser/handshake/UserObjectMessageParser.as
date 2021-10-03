package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1065:String;
      
      private var var_2523:String;
      
      private var var_1754:String;
      
      private var var_2527:int;
      
      private var var_2524:String;
      
      private var var_2528:int;
      
      private var var_2525:int;
      
      private var var_2526:int;
      
      private var var_1201:int;
      
      private var var_790:int;
      
      private var var_2458:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1065 = param1.readString();
         this.var_2523 = param1.readString();
         this.var_1754 = param1.readString();
         this.var_2527 = param1.readInteger();
         this.var_2524 = param1.readString();
         this.var_2528 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_1201 = param1.readInteger();
         this.var_790 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1065;
      }
      
      public function get customData() : String
      {
         return this.var_2523;
      }
      
      public function get realName() : String
      {
         return this.var_1754;
      }
      
      public function get tickets() : int
      {
         return this.var_2527;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2524;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2528;
      }
      
      public function get directMail() : int
      {
         return this.var_2525;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2526;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1201;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_790;
      }
      
      public function get identityId() : int
      {
         return this.var_2458;
      }
   }
}
