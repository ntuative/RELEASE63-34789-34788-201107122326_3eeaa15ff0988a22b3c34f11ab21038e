package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_183;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1312;
         param1["embedded_controller"] = const_1271;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_899;
         param1["mouse_dragging_target"] = const_274;
         param1["mouse_dragging_trigger"] = const_412;
         param1["mouse_scaling_target"] = const_338;
         param1["mouse_scaling_trigger"] = const_522;
         param1["horizontal_mouse_scaling_trigger"] = const_285;
         param1["vertical_mouse_scaling_trigger"] = const_279;
         param1["observe_parent_input_events"] = const_1323;
         param1["optimize_region_to_layout_size"] = const_558;
         param1["parent_window"] = const_1207;
         param1["relative_horizontal_scale_center"] = const_209;
         param1["relative_horizontal_scale_fixed"] = const_165;
         param1["relative_horizontal_scale_move"] = const_408;
         param1["relative_horizontal_scale_strech"] = const_414;
         param1["relative_scale_center"] = const_1370;
         param1["relative_scale_fixed"] = const_1011;
         param1["relative_scale_move"] = const_1174;
         param1["relative_scale_strech"] = const_1275;
         param1["relative_vertical_scale_center"] = const_214;
         param1["relative_vertical_scale_fixed"] = const_181;
         param1["relative_vertical_scale_move"] = const_293;
         param1["relative_vertical_scale_strech"] = const_384;
         param1["on_resize_align_left"] = const_905;
         param1["on_resize_align_right"] = const_542;
         param1["on_resize_align_center"] = const_622;
         param1["on_resize_align_top"] = const_810;
         param1["on_resize_align_bottom"] = const_586;
         param1["on_resize_align_middle"] = const_670;
         param1["on_accommodate_align_left"] = const_1167;
         param1["on_accommodate_align_right"] = const_569;
         param1["on_accommodate_align_center"] = const_812;
         param1["on_accommodate_align_top"] = const_1343;
         param1["on_accommodate_align_bottom"] = const_590;
         param1["on_accommodate_align_middle"] = const_821;
         param1["route_input_events_to_parent"] = const_524;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1356;
         param1["scalable_with_mouse"] = const_1290;
         param1["reflect_horizontal_resize_to_parent"] = const_527;
         param1["reflect_vertical_resize_to_parent"] = const_564;
         param1["reflect_resize_to_parent"] = const_323;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1377;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
