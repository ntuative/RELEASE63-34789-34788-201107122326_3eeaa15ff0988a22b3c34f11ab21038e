package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_562:QuestsList;
      
      private var var_485:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_400:QuestTracker;
      
      private var var_696:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
         this.var_400 = new QuestTracker(this.var_49);
         this.var_562 = new QuestsList(this.var_49);
         this.var_485 = new QuestDetails(this.var_49);
         this._questCompleted = new QuestCompleted(this.var_49);
         this.var_696 = new NextQuestTimer(this.var_49);
      }
      
      public function onToolbarClick() : void
      {
         this.var_562.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_562.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_400.onQuest(param1);
         this.var_485.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_696.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_400.onQuestCompleted(param1);
         this.var_485.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_400.onQuestCancelled();
         this.var_485.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_696.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_400.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_562.onRoomExit();
         this.var_400.onRoomExit();
         this.var_485.onRoomExit();
         this.var_696.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_400.update(param1);
         this.var_696.update(param1);
         this.var_562.update(param1);
         this.var_485.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         if(this.var_562)
         {
            this.var_562.dispose();
            this.var_562 = null;
         }
         if(this.var_400)
         {
            this.var_400.dispose();
            this.var_400 = null;
         }
         if(this.var_485)
         {
            this.var_485.dispose();
            this.var_485 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_696)
         {
            this.var_696.dispose();
            this.var_696 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_562;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_485;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_400;
      }
   }
}
