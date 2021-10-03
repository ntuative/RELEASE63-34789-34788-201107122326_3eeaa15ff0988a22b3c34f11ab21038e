package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2172:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1331:int = 3;
       
      
      private var var_1098:String;
      
      private var var_2595:int;
      
      private var var_2597:int;
      
      private var var_2602:int;
      
      private var var_2598:int;
      
      private var var_2603:Boolean;
      
      private var var_2596:Boolean;
      
      private var var_2604:int;
      
      private var var_2600:int;
      
      private var var_2594:Boolean;
      
      private var var_2601:int;
      
      private var var_2599:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1098 = param1.readString();
         this.var_2595 = param1.readInteger();
         this.var_2597 = param1.readInteger();
         this.var_2602 = param1.readInteger();
         this.var_2598 = param1.readInteger();
         this.var_2603 = param1.readBoolean();
         this.var_2596 = param1.readBoolean();
         this.var_2604 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_2594 = param1.readBoolean();
         this.var_2601 = param1.readInteger();
         this.var_2599 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1098;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2595;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2597;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2602;
      }
      
      public function get responseType() : int
      {
         return this.var_2598;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2603;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2596;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2604;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2600;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2594;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2601;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2599;
      }
   }
}
