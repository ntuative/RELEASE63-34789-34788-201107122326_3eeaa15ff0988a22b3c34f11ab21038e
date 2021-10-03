package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_952;
         param1["badge"] = const_748;
         param1["bitmap"] = const_411;
         param1["border"] = const_875;
         param1["border_notify"] = const_1765;
         param1["bubble"] = const_1026;
         param1["bubble_pointer_up"] = const_1198;
         param1["bubble_pointer_right"] = const_1366;
         param1["bubble_pointer_down"] = const_1181;
         param1["bubble_pointer_left"] = const_1277;
         param1["button"] = const_574;
         param1["button_thick"] = const_829;
         param1["button_icon"] = const_1824;
         param1["button_group_left"] = const_966;
         param1["button_group_center"] = const_802;
         param1["button_group_right"] = const_832;
         param1["canvas"] = const_903;
         param1["checkbox"] = const_923;
         param1["closebutton"] = const_1185;
         param1["container"] = const_426;
         param1["container_button"] = const_789;
         param1["display_object_wrapper"] = const_818;
         param1["dropmenu"] = const_511;
         param1["dropmenu_item"] = const_529;
         param1["frame"] = const_461;
         param1["frame_notify"] = const_2022;
         param1["header"] = const_863;
         param1["html"] = const_1218;
         param1["icon"] = const_1288;
         param1["itemgrid"] = const_1255;
         param1["itemgrid_horizontal"] = const_651;
         param1["itemgrid_vertical"] = const_935;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_437;
         param1["itemlist_vertical"] = const_413;
         param1["label"] = const_770;
         param1["maximizebox"] = const_1931;
         param1["menu"] = const_2009;
         param1["menu_item"] = const_1933;
         param1["submenu"] = const_1203;
         param1["minimizebox"] = const_1786;
         param1["notify"] = const_1946;
         param1["null"] = const_883;
         param1["password"] = const_787;
         param1["radiobutton"] = const_948;
         param1["region"] = const_365;
         param1["restorebox"] = const_1900;
         param1["scaler"] = const_555;
         param1["scaler_horizontal"] = const_1746;
         param1["scaler_vertical"] = const_1939;
         param1["scrollbar_horizontal"] = const_561;
         param1["scrollbar_vertical"] = const_908;
         param1["scrollbar_slider_button_up"] = const_1246;
         param1["scrollbar_slider_button_down"] = const_1379;
         param1["scrollbar_slider_button_left"] = const_1199;
         param1["scrollbar_slider_button_right"] = const_1230;
         param1["scrollbar_slider_bar_horizontal"] = const_1274;
         param1["scrollbar_slider_bar_vertical"] = const_1317;
         param1["scrollbar_slider_track_horizontal"] = const_1328;
         param1["scrollbar_slider_track_vertical"] = const_1393;
         param1["scrollable_itemlist"] = const_1975;
         param1["scrollable_itemlist_vertical"] = const_642;
         param1["scrollable_itemlist_horizontal"] = const_1313;
         param1["selector"] = const_924;
         param1["selector_list"] = const_836;
         param1["submenu"] = const_1203;
         param1["tab_button"] = const_835;
         param1["tab_container_button"] = const_1262;
         param1["tab_context"] = const_462;
         param1["tab_content"] = const_1405;
         param1["tab_selector"] = const_834;
         param1["text"] = const_878;
         param1["input"] = const_880;
         param1["toolbar"] = const_1870;
         param1["tooltip"] = const_420;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
