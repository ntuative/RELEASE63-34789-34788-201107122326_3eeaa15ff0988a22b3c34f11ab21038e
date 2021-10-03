package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1873:int;
      
      private var var_1943:int;
      
      private var var_1944:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1943 = param1.readInteger();
         this.var_1873 = param1.readInteger();
         this.var_1944 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1873 = 0;
         this.var_1943 = 0;
         this.var_1944 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1873;
      }
      
      public function get messageId() : int
      {
         return this.var_1943;
      }
      
      public function get timestamp() : String
      {
         return this.var_1944;
      }
   }
}
