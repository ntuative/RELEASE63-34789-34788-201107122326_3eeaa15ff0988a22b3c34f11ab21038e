package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3082:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_675:IWindowContext;
      
      private var var_1257:IMouseDraggingService;
      
      private var var_1258:IMouseScalingService;
      
      private var var_1256:IMouseListenerService;
      
      private var var_1255:IFocusManagerService;
      
      private var var_1259:IToolTipAgentService;
      
      private var var_1260:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3082 = 0;
         this._root = param2;
         this.var_675 = param1;
         this.var_1257 = new WindowMouseDragger(param2);
         this.var_1258 = new WindowMouseScaler(param2);
         this.var_1256 = new WindowMouseListener(param2);
         this.var_1255 = new FocusManager(param2);
         this.var_1259 = new WindowToolTipAgent(param2);
         this.var_1260 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1257 != null)
         {
            this.var_1257.dispose();
            this.var_1257 = null;
         }
         if(this.var_1258 != null)
         {
            this.var_1258.dispose();
            this.var_1258 = null;
         }
         if(this.var_1256 != null)
         {
            this.var_1256.dispose();
            this.var_1256 = null;
         }
         if(this.var_1255 != null)
         {
            this.var_1255.dispose();
            this.var_1255 = null;
         }
         if(this.var_1259 != null)
         {
            this.var_1259.dispose();
            this.var_1259 = null;
         }
         if(this.var_1260 != null)
         {
            this.var_1260.dispose();
            this.var_1260 = null;
         }
         this._root = null;
         this.var_675 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1257;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1258;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1256;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1255;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1259;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1260;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
