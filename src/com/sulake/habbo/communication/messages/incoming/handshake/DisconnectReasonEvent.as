package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2132:int = 0;
      
      public static const const_1752:int = 1;
      
      public static const const_1964:int = 2;
      
      public static const const_2176:int = 3;
      
      public static const const_2226:int = 4;
      
      public static const const_2259:int = 5;
      
      public static const const_1989:int = 10;
      
      public static const const_2294:int = 11;
      
      public static const const_2161:int = 12;
      
      public static const const_2310:int = 13;
      
      public static const const_2135:int = 16;
      
      public static const const_2154:int = 17;
      
      public static const const_2286:int = 18;
      
      public static const const_2114:int = 19;
      
      public static const const_2255:int = 20;
      
      public static const const_2179:int = 22;
      
      public static const const_2289:int = 23;
      
      public static const const_2164:int = 24;
      
      public static const const_2271:int = 25;
      
      public static const const_2291:int = 26;
      
      public static const const_2275:int = 27;
      
      public static const const_2267:int = 28;
      
      public static const const_2110:int = 29;
      
      public static const const_2167:int = 100;
      
      public static const const_2288:int = 101;
      
      public static const const_2163:int = 102;
      
      public static const const_2254:int = 103;
      
      public static const const_2198:int = 104;
      
      public static const const_2234:int = 105;
      
      public static const const_2262:int = 106;
      
      public static const const_2158:int = 107;
      
      public static const const_2316:int = 108;
      
      public static const const_2156:int = 109;
      
      public static const const_2194:int = 110;
      
      public static const const_2217:int = 111;
      
      public static const const_2205:int = 112;
      
      public static const const_2218:int = 113;
      
      public static const const_2220:int = 114;
      
      public static const const_2315:int = 115;
      
      public static const const_2261:int = 116;
      
      public static const const_2327:int = 117;
      
      public static const const_2152:int = 118;
      
      public static const const_2278:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1752:
            case const_1989:
               return "banned";
            case const_1964:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
