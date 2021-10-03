package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_965:BigInteger;
      
      private var var_2548:BigInteger;
      
      private var var_1872:BigInteger;
      
      private var var_2547:BigInteger;
      
      private var var_1505:BigInteger;
      
      private var var_1871:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1505 = param1;
         this.var_1871 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1505.toString() + ",generator: " + this.var_1871.toString() + ",secret: " + param1);
         this.var_965 = new BigInteger();
         this.var_965.fromRadix(param1,param2);
         this.var_2548 = this.var_1871.modPow(this.var_965,this.var_1505);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1872 = new BigInteger();
         this.var_1872.fromRadix(param1,param2);
         this.var_2547 = this.var_1872.modPow(this.var_965,this.var_1505);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2548.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2547.toRadix(param1);
      }
   }
}
