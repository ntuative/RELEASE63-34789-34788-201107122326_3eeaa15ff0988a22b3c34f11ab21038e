package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1975:int = 0;
      
      private var var_1976:int = 0;
      
      private var var_1845:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1975;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1976;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1845;
      }
      
      public function flush() : Boolean
      {
         this.var_1975 = 0;
         this.var_1976 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1975 = param1.readInteger();
         this.var_1976 = param1.readInteger();
         this.var_1845 = param1.readInteger();
         return true;
      }
   }
}
