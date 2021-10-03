package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_598:String = "RWUAM_WHISPER_USER";
      
      public static const const_514:String = "RWUAM_IGNORE_USER";
      
      public static const const_587:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_450:String = "RWUAM_KICK_USER";
      
      public static const const_562:String = "RWUAM_BAN_USER";
      
      public static const const_675:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_547:String = "RWUAM_RESPECT_USER";
      
      public static const const_658:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_643:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_609:String = "RWUAM_START_TRADING";
      
      public static const const_796:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_593:String = "RWUAM_KICK_BOT";
      
      public static const const_664:String = "RWUAM_REPORT";
      
      public static const const_665:String = "RWUAM_PICKUP_PET";
      
      public static const const_2036:String = "RWUAM_TRAIN_PET";
      
      public static const const_645:String = " RWUAM_RESPECT_PET";
      
      public static const const_287:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_625:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
