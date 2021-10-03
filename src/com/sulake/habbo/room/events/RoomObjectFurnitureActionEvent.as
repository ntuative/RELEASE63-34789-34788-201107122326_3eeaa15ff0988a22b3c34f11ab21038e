package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_668:String = "ROFCAE_DICE_OFF";
      
      public static const const_496:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_521:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_588:String = "ROFCAE_STICKIE";
      
      public static const const_650:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_530:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_589:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_556:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_608:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_503:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_641:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_672:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_656:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_513:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_602:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_278:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_351:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
