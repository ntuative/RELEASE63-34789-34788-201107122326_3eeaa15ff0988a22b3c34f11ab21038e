package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_320:int = 0;
      
      private static const const_700:int = 1;
      
      private static const const_701:int = 2;
      
      private static const const_1104:int = 3;
      
      private static const const_1097:int = 4;
      
      private static const const_1098:int = 5;
      
      private static const const_1105:int = 6;
      
      private static const const_1099:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1100:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1103:int = 6;
      
      private static const const_1575:int = 4;
      
      private static const const_702:int = 2;
      
      private static const const_1102:int = 200;
      
      private static const const_319:Array = ["a","b","c","d"];
      
      private static const const_1101:int = 10000;
      
      private static const const_1577:int = 0;
      
      private static const const_699:int = -1;
      
      private static const const_1571:Point = new Point(10,87);
      
      private static const const_1573:int = 162;
      
      private static const const_1574:Number = 0.01;
      
      private static const const_1578:Number = 100;
      
      private static const const_1576:int = 1000;
      
      private static const const_683:String = "quest_tracker";
      
      private static const const_1572:int = 10;
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_222:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_555:Timer;
      
      private var var_842:ProgressBar;
      
      private var var_254:int = 0;
      
      private var var_1045:int = 0;
      
      private var var_1569:int = 0;
      
      private var var_1303:int = -1;
      
      private var var_843:int = -1;
      
      private var var_1044:int = -1;
      
      private var var_1302:int;
      
      private var var_1568:int;
      
      private var var_2721:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_49)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_683);
         }
         this.var_49 = null;
         this.var_222 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_555)
         {
            this.var_555.stop();
            this.var_555 = null;
         }
         if(this.var_842)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_222 = param1;
            this.var_1045 = 0;
            this.refreshTrackerDetails();
            this.var_1303 = 0;
            this.var_254 = const_1104;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_222 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_842.refresh(0,100,-1);
            this.var_254 = const_701;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_49.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_555 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_49.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_555 = new Timer(_loc3_ * 1000,1);
            this.var_555.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_555.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_222 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_254 == const_701)
            {
               this.var_254 = const_700;
            }
            this.setupPrompt(this.var_843,const_1575,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_254 = const_700;
            this.setupPrompt(const_1577,const_702,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_49.isQuestWithPrompts(this.var_222))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_319.length)
         {
            this.var_49.setupPromptFrameImage(this._window,this.var_222,const_319[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_49.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_49,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1103)
         {
            new PendingImage(this.var_49,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_842 = new ProgressBar(this.var_49,IWindowContainer(this._window.findChildByName("content_cont")),const_1573,"quests.tracker.progress",false,const_1571);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1103)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_319.length)
         {
            this.getPromptFrame(const_319[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_49.localization.registerParameter("quests.tracker.caption","quest_name",this.var_49.getQuestName(this.var_222));
         this._window.findChildByName("desc_txt").caption = this.var_49.getQuestDesc(this.var_222);
         this._window.findChildByName("more_info_txt").visible = this.var_49.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_49.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_222.completedSteps / this.var_222.totalSteps);
         this.var_842.refresh(_loc1_,100,this.var_222.id);
         this.var_49.setupQuestImage(this._window,this.var_222);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.questController.questDetails.showDetails(this.var_222);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_842.updateView();
         switch(this.var_254)
         {
            case const_700:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1574));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_254 = const_320;
                  this._window.x = _loc2_;
               }
               break;
            case const_701:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1578 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_254 = const_320;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1104:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1100[this.var_1303]).visible = true;
               ++this.var_1303;
               if(this.var_1303 >= const_1100.length)
               {
                  this.var_254 = const_1098;
                  this.var_1569 = const_1576;
               }
               break;
            case const_1105:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1302 -= param1;
               this.getPromptFrame(const_319[this.var_1044]).visible = true;
               if(this.var_1302 < 0)
               {
                  this.var_1302 = const_1102;
                  ++this.var_1044;
                  if(this.var_1044 >= const_319.length)
                  {
                     this.var_1044 = 0;
                     --this.var_1568;
                     if(this.var_1568 < 1)
                     {
                        this.setupPrompt(const_1101,const_702,true);
                        this.var_254 = const_320;
                     }
                  }
               }
               break;
            case const_1097:
               if(this.var_1045 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_254 = const_320;
                  this.setupPrompt(const_1101,const_702,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1099[this.var_1045];
                  ++this.var_1045;
               }
               break;
            case const_1098:
               this.var_1569 -= param1;
               if(this.var_1569 < 0)
               {
                  this.var_254 = const_320;
                  this.setWindowVisible(false);
               }
               break;
            case const_320:
               if(this.var_843 != const_699)
               {
                  this.var_843 -= param1;
                  if(this.var_843 < 0)
                  {
                     this.var_843 = const_699;
                     if(this.var_222 != null && this.var_49.isQuestWithPrompts(this.var_222))
                     {
                        if(this.var_2721)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_254 = const_1105;
                           this.var_1044 = 0;
                           this.var_1302 = const_1102;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1572;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_555.reset();
            this.var_555.start();
         }
         else
         {
            this.var_49.questController.questDetails.openForNextQuest = this.var_49.configuration.getKey("questing.showDetailsForNextQuest") == "AvatarEditorGridColorItem";
            this.var_49.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_49.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_49.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_49.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_699,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_843 = param1;
         this.var_1568 = param2;
         this.var_2721 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1045 = 0;
         this.var_254 = const_1097;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_49.toolbar.extensionView.detachExtension(const_683);
         }
         else
         {
            this.var_49.toolbar.extensionView.attachExtension(const_683,this._window);
         }
      }
   }
}
