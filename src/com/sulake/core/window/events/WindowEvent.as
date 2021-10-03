package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1966:String = "WE_DESTROY";
      
      public static const const_349:String = "WE_DESTROYED";
      
      public static const const_1732:String = "WE_OPEN";
      
      public static const const_1756:String = "WE_OPENED";
      
      public static const const_1769:String = "WE_CLOSE";
      
      public static const const_1880:String = "WE_CLOSED";
      
      public static const const_1918:String = "WE_FOCUS";
      
      public static const const_339:String = "WE_FOCUSED";
      
      public static const const_1911:String = "WE_UNFOCUS";
      
      public static const const_1957:String = "WE_UNFOCUSED";
      
      public static const const_1784:String = "WE_ACTIVATE";
      
      public static const const_677:String = "WE_ACTIVATED";
      
      public static const const_1734:String = "WE_DEACTIVATE";
      
      public static const const_570:String = "WE_DEACTIVATED";
      
      public static const const_326:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_550:String = "WE_UNSELECT";
      
      public static const const_669:String = "WE_UNSELECTED";
      
      public static const const_1828:String = "WE_LOCK";
      
      public static const const_1741:String = "WE_LOCKED";
      
      public static const const_1905:String = "WE_UNLOCK";
      
      public static const const_1803:String = "WE_UNLOCKED";
      
      public static const const_870:String = "WE_ENABLE";
      
      public static const const_284:String = "WE_ENABLED";
      
      public static const const_777:String = "WE_DISABLE";
      
      public static const const_257:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_435:String = "WE_RELOCATED";
      
      public static const const_1272:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1774:String = "WE_MINIMIZE";
      
      public static const const_1800:String = "WE_MINIMIZED";
      
      public static const const_1736:String = "WE_MAXIMIZE";
      
      public static const const_1871:String = "WE_MAXIMIZED";
      
      public static const const_1742:String = "WE_RESTORE";
      
      public static const const_1987:String = "WE_RESTORED";
      
      public static const const_599:String = "WE_CHILD_ADDED";
      
      public static const const_418:String = "WE_CHILD_REMOVED";
      
      public static const const_212:String = "WE_CHILD_RELOCATED";
      
      public static const const_160:String = "WE_CHILD_RESIZED";
      
      public static const const_346:String = "WE_CHILD_ACTIVATED";
      
      public static const const_646:String = "WE_PARENT_ADDED";
      
      public static const const_1810:String = "WE_PARENT_REMOVED";
      
      public static const const_1854:String = "WE_PARENT_RELOCATED";
      
      public static const const_566:String = "WE_PARENT_RESIZED";
      
      public static const const_1205:String = "WE_PARENT_ACTIVATED";
      
      public static const const_148:String = "WE_OK";
      
      public static const const_596:String = "WE_CANCEL";
      
      public static const const_114:String = "WE_CHANGE";
      
      public static const const_654:String = "WE_SCROLL";
      
      public static const const_112:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_748:IWindow;
      
      protected var var_1142:Boolean;
      
      protected var var_508:Boolean;
      
      protected var var_168:Boolean;
      
      protected var var_749:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_748 = param3;
         _loc5_.var_508 = param4;
         _loc5_.var_168 = false;
         _loc5_.var_749 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_748;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_508;
      }
      
      public function recycle() : void
      {
         if(this.var_168)
         {
            throw new Error("Event already recycled!");
         }
         this.var_748 = null;
         this._window = null;
         this.var_168 = true;
         this.var_1142 = false;
         this.var_749.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1142;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1142 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1142;
      }
      
      public function stopPropagation() : void
      {
         this.var_1142 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1142 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_508 + " window: " + this._window + " }";
      }
   }
}
