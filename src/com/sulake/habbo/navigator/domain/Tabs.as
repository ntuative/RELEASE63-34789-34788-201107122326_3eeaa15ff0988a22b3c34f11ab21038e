package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_373:int = 1;
      
      public static const const_226:int = 2;
      
      public static const const_312:int = 3;
      
      public static const const_364:int = 4;
      
      public static const const_267:int = 5;
      
      public static const const_406:int = 1;
      
      public static const const_742:int = 2;
      
      public static const const_910:int = 3;
      
      public static const const_859:int = 4;
      
      public static const const_253:int = 5;
      
      public static const const_1018:int = 6;
      
      public static const const_788:int = 7;
      
      public static const const_442:int = 8;
      
      public static const const_509:int = 9;
      
      public static const const_2241:int = 10;
      
      public static const const_785:int = 11;
      
      public static const const_631:int = 12;
       
      
      private var var_494:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_494 = new Array();
         this.var_494.push(new Tab(this._navigator,const_373,const_631,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_494.push(new Tab(this._navigator,const_226,const_406,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_494.push(new Tab(this._navigator,const_364,const_785,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1408));
         this.var_494.push(new Tab(this._navigator,const_312,const_253,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_647));
         this.var_494.push(new Tab(this._navigator,const_267,const_442,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1372));
         this.setSelectedTab(const_373);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_364;
      }
      
      public function get tabs() : Array
      {
         return this.var_494;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_494)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_494)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_494)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
