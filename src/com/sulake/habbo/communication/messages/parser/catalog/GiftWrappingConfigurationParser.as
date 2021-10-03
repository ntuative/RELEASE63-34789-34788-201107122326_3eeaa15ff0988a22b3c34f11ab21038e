package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2773:Boolean;
      
      private var var_2774:int;
      
      private var var_2019:Array;
      
      private var var_886:Array;
      
      private var var_884:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2773;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2774;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2019;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_886;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_884;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_2019 = [];
         this.var_886 = [];
         this.var_884 = [];
         this.var_2773 = param1.readBoolean();
         this.var_2774 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_2019.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_886.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_884.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
