package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2014:String;
      
      private var var_2012:int;
      
      private var var_2011:int;
      
      private var var_1845:int;
      
      private var _id:int;
      
      private var var_2015:Boolean;
      
      private var _type:String;
      
      private var var_2769:String;
      
      private var var_2767:int;
      
      private var var_2013:String;
      
      private var var_2768:int;
      
      private var var_2770:int;
      
      private var var_1584:int;
      
      private var var_2010:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2010 = new Date();
         super();
         this.var_2014 = param1.readString();
         this.var_2012 = param1.readInteger();
         this.var_2011 = param1.readInteger();
         this.var_1845 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2015 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2769 = param1.readString();
         this.var_2767 = param1.readInteger();
         this.var_2013 = param1.readString();
         this.var_2768 = param1.readInteger();
         this.var_2770 = param1.readInteger();
         this.var_1584 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2014;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2013;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2012;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2011;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1845;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2015;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2769;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2767;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2768;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2770;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1584 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2010.getTime();
         return int(Math.max(0,this.var_1584 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2014;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2013;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2015 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2012 >= this.var_2011;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2010;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1584 = param1;
      }
   }
}
