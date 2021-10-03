package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1360:int;
      
      private var var_1733:String;
      
      private var var_1833:int;
      
      private var _upgrade:Boolean;
      
      private var var_2670:Boolean;
      
      private var var_2671:int;
      
      private var var_2674:int;
      
      private var var_2672:int;
      
      private var var_2675:int;
      
      private var var_2676:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_1733 = param1.readString();
         this.var_1833 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2670 = param1.readBoolean();
         this.var_2671 = param1.readInteger();
         this.var_2674 = param1.readInteger();
         this.var_2672 = param1.readInteger();
         this.var_2675 = param1.readInteger();
         this.var_2676 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get productCode() : String
      {
         return this.var_1733;
      }
      
      public function get price() : int
      {
         return this.var_1833;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2670;
      }
      
      public function get periods() : int
      {
         return this.var_2671;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2674;
      }
      
      public function get year() : int
      {
         return this.var_2672;
      }
      
      public function get month() : int
      {
         return this.var_2675;
      }
      
      public function get day() : int
      {
         return this.var_2676;
      }
   }
}
