package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2678:String;
      
      private var var_2680:int;
      
      private var var_2301:int;
      
      private var var_2681:String;
      
      private var var_2679:int;
      
      private var var_1771:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2678 = param1.readString();
         this.var_2680 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         this.var_2681 = param1.readString();
         this.var_2679 = param1.readInteger();
         this.var_1771 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2678;
      }
      
      public function get unitPort() : int
      {
         return this.var_2680;
      }
      
      public function get worldId() : int
      {
         return this.var_2301;
      }
      
      public function get castLibs() : String
      {
         return this.var_2681;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2679;
      }
      
      public function get nodeId() : int
      {
         return this.var_1771;
      }
   }
}
