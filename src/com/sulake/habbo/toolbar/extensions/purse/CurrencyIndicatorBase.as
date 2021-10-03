package com.sulake.habbo.toolbar.extensions.purse
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class CurrencyIndicatorBase implements ICurrencyIndicator
   {
      
      protected static const ANIM_DIRECTION_FORWARD:int = 0;
      
      protected static const ANIM_DIRECTION_BACKWARD:int = 1;
       
      
      private var _view:IWindowContainer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _disposed:Boolean = false;
      
      private var var_721:IBitmapWrapperWindow;
      
      private var var_2873:uint;
      
      private var var_2870:uint;
      
      private var var_2096:String;
      
      private var var_2095:String;
      
      private var var_304:Vector.<BitmapData>;
      
      private var var_2871:uint;
      
      private var var_2872:String = null;
      
      private var var_2097:uint = 0;
      
      private var var_303:int;
      
      private var var_722:Timer;
      
      public function CurrencyIndicatorBase(param1:IHabboWindowManager, param2:IAssetLibrary)
      {
         this.var_304 = new Vector.<BitmapData>();
         super();
         this._view = null;
         this._windowManager = param1;
         this._assets = param2;
         this.var_722 = null;
      }
      
      protected function set bgColorLight(param1:uint) : void
      {
         this.var_2873 = param1;
      }
      
      protected function set bgColorDark(param1:uint) : void
      {
         this.var_2870 = param1;
      }
      
      protected function set textElementName(param1:String) : void
      {
         this.var_2096 = param1;
      }
      
      protected function set textElementShadowName(param1:String) : void
      {
         this.var_2095 = param1;
      }
      
      protected function set iconAnimationDelay(param1:uint) : void
      {
         this.var_2871 = param1;
      }
      
      protected function set amountZeroText(param1:String) : void
      {
         this.var_2872 = param1;
      }
      
      protected function get amountZeroText() : String
      {
         return this.var_2872;
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         if(this.var_722)
         {
            this.var_722.stop();
            this.var_722 = null;
         }
         if(this.var_304)
         {
            this.var_304 = null;
         }
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this._disposed = true;
      }
      
      public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
      }
      
      public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
      }
      
      protected function onContainerClick(param1:WindowMouseEvent) : void
      {
      }
      
      protected function createWindow(param1:String, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:XmlAsset = this._assets.getAssetByName(param1) as XmlAsset;
         if(_loc3_)
         {
            this._view = this._windowManager.buildFromXML(_loc3_.content as XML,1) as IWindowContainer;
            if(this._view)
            {
               this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onContainerClick);
               this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onContainerMouseOver);
               this._view.addEventListener(WindowMouseEvent.const_25,this.onContainerMouseOut);
               _loc4_ = [];
               if(this._view.groupChildrenWithTag("ICON",_loc4_,true) == 1)
               {
                  this.var_721 = _loc4_[0] as IBitmapWrapperWindow;
                  _loc5_ = this._assets.getAssetByName(param2).content as BitmapData;
                  if(_loc5_)
                  {
                     this.setIconBitmap(_loc5_);
                  }
               }
            }
         }
      }
      
      protected function animateIcon(param1:int) : void
      {
         this.var_2097 = param1;
         if(this.var_721 && this.var_304.length > 0)
         {
            if(this.var_2097 == ANIM_DIRECTION_FORWARD)
            {
               this.var_303 = 0;
            }
            else
            {
               this.var_303 = this.var_304.length - 1;
            }
            this.var_722 = new Timer(this.var_2871,this.var_304.length);
            this.var_722.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
            this.var_722.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationTimerComplete);
            this.var_722.start();
            this.onAnimationTimer(null);
         }
      }
      
      protected function setText(param1:String) : void
      {
         if(this._view)
         {
            this._view.findChildByName(this.var_2096).caption = param1;
            this._view.findChildByName(this.var_2095).caption = param1;
         }
      }
      
      protected function setTextUnderline(param1:Boolean) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName(this.var_2096) as ITextWindow;
            _loc3_ = this._view.findChildByName(this.var_2095) as ITextWindow;
            _loc2_.underline = param1;
            _loc3_.underline = param1;
         }
      }
      
      protected function set iconAnimationSequence(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this._assets.getAssetByName(_loc2_);
            if(_loc3_)
            {
               _loc4_ = _loc3_.content as BitmapData;
               if(_loc4_)
               {
                  this.var_304.push(_loc4_.clone());
               }
            }
         }
      }
      
      private function onAnimationTimer(param1:TimerEvent) : void
      {
         if(this.var_721 && this.var_304.length > 0)
         {
            this.setIconBitmap(this.var_304[this.var_303]);
            if(this.var_2097 == ANIM_DIRECTION_FORWARD)
            {
               ++this.var_303;
               this.var_303 = this.var_303 < this.var_304.length ? int(this.var_303) : int(this.var_304.length - 1);
            }
            else
            {
               --this.var_303;
               this.var_303 = this.var_303 >= 0 ? int(this.var_303) : 0;
            }
         }
      }
      
      private function onAnimationTimerComplete(param1:TimerEvent) : void
      {
         if(this.var_304.length > 0)
         {
            this.setIconBitmap(this.var_304[0]);
         }
      }
      
      private function setIconBitmap(param1:BitmapData) : void
      {
         if(this.var_721)
         {
            this.var_721.bitmap = param1.clone();
            this.var_721.width = param1.width;
            this.var_721.height = param1.height;
            this.var_721.invalidate();
         }
      }
      
      private function onContainerMouseOver(param1:WindowMouseEvent) : void
      {
         this._view.color = this.var_2870;
      }
      
      private function onContainerMouseOut(param1:WindowMouseEvent) : void
      {
         this._view.color = this.var_2873;
      }
   }
}
