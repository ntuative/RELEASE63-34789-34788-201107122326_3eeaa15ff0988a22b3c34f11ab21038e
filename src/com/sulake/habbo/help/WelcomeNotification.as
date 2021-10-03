package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2950:String;
      
      private var var_2794:String;
      
      public function WelcomeNotification(param1:String, param2:String)
      {
         super();
         this.var_2950 = param1;
         this.var_2794 = param2;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2950;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2794;
      }
   }
}
