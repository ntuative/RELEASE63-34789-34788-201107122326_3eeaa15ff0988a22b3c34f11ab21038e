package com.sulake.habbo.sound.trax
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TraxSequencer implements IHabboSound, IDisposable
   {
      
      private static const const_120:Number = 44100;
      
      private static const const_121:uint = 8192;
      
      private static const const_1119:uint = 88000;
      
      private static const const_707:uint = 88000;
      
      private static const const_204:Vector.<int> = new Vector.<int>(const_121,true);
      
      private static const INTERPOLATION_BUFFER:Vector.<int> = new Vector.<int>(const_121,true);
       
      
      private var _disposed:Boolean = false;
      
      private var _events:IEventDispatcher;
      
      private var var_996:Number;
      
      private var var_1063:Sound;
      
      private var var_490:SoundChannel;
      
      private var var_488:TraxData;
      
      private var var_1595:Map;
      
      private var var_1148:Boolean;
      
      private var var_1600:int;
      
      private var var_1597:int = 0;
      
      private var var_186:uint;
      
      private var var_344:Array;
      
      private var var_1599:Boolean;
      
      private var var_704:Boolean = true;
      
      private var var_296:uint;
      
      private var var_1596:uint;
      
      private var var_1062:Boolean;
      
      private var var_853:Boolean;
      
      private var var_854:int;
      
      private var var_491:int;
      
      private var var_1061:int;
      
      private var var_565:int;
      
      private var var_703:Timer;
      
      private var var_489:Timer;
      
      private var var_1598:Boolean;
      
      private var var_1324:int = 0;
      
      private var var_2037:int = 0;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1596 = uint(30);
         super();
         this._events = param4;
         this.var_1600 = param1;
         this.var_996 = 1;
         this.var_1063 = new Sound();
         this.var_490 = null;
         this.var_1595 = param3;
         this.var_488 = param2;
         this.var_1148 = true;
         this.var_186 = 0;
         this.var_344 = [];
         this.var_1599 = false;
         this.var_296 = 0;
         this.var_704 = false;
         this.var_1062 = false;
         this.var_853 = false;
         this.var_854 = 0;
         this.var_491 = 0;
         this.var_1061 = 0;
         this.var_565 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_186 = uint(param1 * const_120);
      }
      
      public function get volume() : Number
      {
         return this.var_996;
      }
      
      public function get position() : Number
      {
         return this.var_186 / const_120;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1148;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1148 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_704;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_491 / const_120;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_491 = int(param1 * const_120);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_854 / const_120;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_854 = int(param1 * const_120);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_488;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_996 = param1;
         if(this.var_490 != null)
         {
            this.var_490.soundTransform = new SoundTransform(this.var_996);
         }
      }
      
      public function get length() : Number
      {
         return this.var_296 / const_120;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.stopImmediately();
            this.var_488 = null;
            this.var_1595 = null;
            this.var_344 = null;
            this._events = null;
            this.var_1063 = null;
            this._disposed = true;
         }
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1148)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1599)
         {
            if(this.var_488 != null)
            {
               this.var_1598 = false;
               if(this.var_488.hasMetaData)
               {
                  this.var_1598 = this.var_488.metaCutMode;
               }
               if(this.var_1598)
               {
                  if(!this.prepareSequence())
                  {
                     Logger.log("Cannot start playback, prepare sequence failed!");
                     return false;
                  }
               }
               else if(!this.prepareLegacySequence())
               {
                  Logger.log("Cannot start playback, prepare legacy sequence failed!");
                  return false;
               }
            }
         }
         return true;
      }
      
      private function prepareLegacySequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(this.var_344 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_488.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_488.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.itemCount)
            {
               _loc8_ = _loc4_.getItem(_loc7_).id;
               _loc9_ = this.var_1595.getValue(_loc8_) as TraxSample;
               _loc9_.setUsageFromSong(this.var_1600,_loc1_);
               if(_loc9_ == null)
               {
                  Logger.log("Error in prepareLegacySequence(), sample was null!");
               }
               continue;
               _loc10_ = this.getSampleBars(_loc9_.length);
               _loc11_ = _loc4_.getItem(_loc7_).length / _loc10_;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  if(_loc8_ != 0)
                  {
                     _loc3_.add(_loc5_,_loc9_);
                  }
                  _loc6_ += _loc10_;
                  _loc5_ = uint(_loc6_ * const_707);
                  _loc12_++;
               }
               if(this.var_296 < _loc5_)
               {
                  this.var_296 = _loc5_;
               }
               _loc7_++;
               return false;
            }
            this.var_344.push(_loc3_);
            _loc2_++;
         }
         this.var_1599 = true;
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_344 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_488.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_488.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = false;
            _loc8_ = 0;
            while(_loc8_ < _loc4_.itemCount)
            {
               _loc9_ = _loc4_.getItem(_loc8_).id;
               _loc10_ = this.var_1595.getValue(_loc9_) as TraxSample;
               _loc10_.setUsageFromSong(this.var_1600,_loc1_);
               if(_loc10_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc11_ = _loc6_;
               _loc12_ = _loc5_;
               _loc13_ = this.getSampleBars(_loc10_.length);
               _loc14_ = _loc4_.getItem(_loc8_).length;
               while(_loc11_ < _loc6_ + _loc14_)
               {
                  if(_loc9_ != 0 || _loc7_)
                  {
                     _loc3_.add(_loc12_,_loc10_);
                     _loc7_ = false;
                  }
                  _loc11_ += _loc13_;
                  _loc12_ = _loc11_ * const_707;
                  if(_loc11_ > _loc6_ + _loc14_)
                  {
                     _loc7_ = true;
                  }
               }
               _loc6_ += _loc4_.getItem(_loc8_).length;
               _loc5_ = uint(_loc6_ * const_707);
               if(this.var_296 < _loc5_)
               {
                  this.var_296 = _loc5_;
               }
               _loc8_++;
               return false;
            }
            this.var_344.push(_loc3_);
            _loc2_++;
         }
         this.var_1599 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_490 != null)
         {
            this.stopImmediately();
         }
         if(this.var_854 > 0)
         {
            this.var_1062 = true;
            this.var_1061 = 0;
         }
         this.var_853 = false;
         this.var_565 = 0;
         this.var_704 = false;
         this.var_1063.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1597 = param1 * const_120;
         this.var_1324 = 0;
         this.var_2037 = 0;
         this.var_490 = this.var_1063.play();
         this.volume = this.var_996;
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_704)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_491 > 0 && !this.var_704)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         this.removeStopTimer();
         if(this.var_490 != null)
         {
            this.var_490.stop();
            this.var_490 = null;
         }
         if(this.var_1063 != null)
         {
            this.var_1063.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         }
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_703 == null)
         {
            this.var_853 = true;
            this.var_565 = 0;
            this.var_703 = new Timer(this.var_1596 + this.var_491 / (const_120 / 1000),1);
            this.var_703.start();
            this.var_703.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         if(this.var_1598)
         {
            return Math.round(param1 / const_1119);
         }
         return Math.ceil(param1 / const_1119);
      }
      
      private function getChannelSequenceOffsets() : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = [];
         if(this.var_344 != null)
         {
            _loc2_ = this.var_344.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.var_344[_loc3_];
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length && _loc4_.getKey(_loc5_) < this.var_186)
               {
                  _loc5_++;
               }
               _loc1_.push(_loc5_ - 1);
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      private function mixChannelsIntoBuffer() : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_344 == null)
         {
            return;
         }
         var _loc1_:Array = this.getChannelSequenceOffsets();
         var _loc2_:int = this.var_344.length;
         var _loc3_:* = null;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.var_344[_loc4_];
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc5_.getWithIndex(_loc6_);
            if(_loc7_ == null)
            {
               _loc3_ = null;
            }
            else
            {
               _loc10_ = _loc5_.getKey(_loc6_);
               _loc11_ = this.var_186 - _loc10_;
               if(_loc7_.id == 0 || _loc11_ < 0)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = new TraxChannelSample(_loc7_,_loc11_);
               }
            }
            _loc8_ = const_121;
            if(this.var_296 - this.var_186 < _loc8_)
            {
               _loc8_ = this.var_296 - this.var_186;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc12_ = _loc8_;
               if(_loc6_ < _loc5_.length - 1)
               {
                  _loc13_ = _loc5_.getKey(_loc6_ + 1);
                  if(_loc8_ + this.var_186 >= _loc13_)
                  {
                     _loc12_ = _loc13_ - this.var_186;
                  }
               }
               if(_loc12_ > _loc8_ - _loc9_)
               {
                  _loc12_ = _loc8_ - _loc9_;
               }
               if(_loc4_ == _loc2_ - 1)
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.setSample(const_204,_loc9_,_loc12_);
                     _loc9_ += _loc12_;
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < _loc12_)
                     {
                        var _loc15_:*;
                        const_204[_loc15_ = _loc9_++] = 0;
                        _loc14_++;
                     }
                  }
               }
               else
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.addSample(const_204,_loc9_,_loc12_);
                  }
                  _loc9_ += _loc12_;
               }
               if(_loc9_ < _loc8_)
               {
                  _loc7_ = _loc5_.getWithIndex(++_loc6_);
                  if(_loc7_ == null || _loc7_.id == 0)
                  {
                     _loc3_ = null;
                  }
                  else
                  {
                     _loc3_ = new TraxChannelSample(_loc7_,0);
                  }
               }
            }
            _loc4_--;
         }
      }
      
      private function checkSongFinishing() : void
      {
         var _loc1_:int = this.var_296 < this.var_1597 ? int(this.var_296) : (this.var_1597 > 0 ? int(this.var_1597) : int(this.var_296));
         if(this.var_186 > _loc1_ + this.var_1596 * (const_120 / 1000) && !this.var_704)
         {
            this.var_704 = true;
            if(this.var_489 != null)
            {
               this.var_489.reset();
               this.var_489.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            }
            this.var_489 = new Timer(2,1);
            this.var_489.start();
            this.var_489.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_186 > _loc1_ - this.var_491 && !this.var_853)
         {
            this.var_1062 = false;
            this.var_853 = true;
            this.var_565 = 0;
         }
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         if(param1.position > this.var_1324)
         {
            ++this.var_2037;
            Logger.log("Audio buffer under run...");
            this.var_1324 = param1.position;
         }
         if(this.volume > 0)
         {
            this.mixChannelsIntoBuffer();
         }
         var _loc2_:int = const_121;
         if(this.var_296 - this.var_186 < _loc2_)
         {
            _loc2_ = this.var_296 - this.var_186;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
         if(this.volume <= 0)
         {
            _loc2_ = 0;
         }
         this.writeAudioToOutputStream(param1.data,_loc2_);
         this.var_186 += const_121;
         this.var_1324 += const_121;
         if(this.var_490 != null)
         {
            this.var_1596 = param1.position / const_120 * 1000 - this.var_490.position;
         }
         this.checkSongFinishing();
      }
      
      private function interpolate(param1:int, param2:Number) : int
      {
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:* = 0;
         while(_loc10_ < param1)
         {
            _loc6_ = Math.floor(_loc3_);
            _loc7_ = Math.ceil(_loc3_);
            _loc4_ = 0;
            _loc5_ = 0;
            _loc8_ = _loc3_ - _loc6_;
            _loc9_ = _loc5_ - _loc4_;
            INTERPOLATION_BUFFER[_loc10_] = _loc4_ + _loc9_ * _loc8_;
            _loc3_ += param2;
            if(_loc3_ > const_121 - 2)
            {
               this.var_186 += const_121;
               this.mixChannelsIntoBuffer();
               _loc3_ = 0;
            }
            _loc10_++;
         }
         return int(Math.round(_loc3_));
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2 > 0)
         {
            if(!this.var_1062 && !this.var_853)
            {
               this.writeMixingBufferToOutputStream(param1,param2);
            }
            else
            {
               if(this.var_1062)
               {
                  _loc5_ = 1 / this.var_854;
                  _loc6_ = this.var_1061 / Number(this.var_854);
                  this.var_1061 += const_121;
                  if(this.var_1061 > this.var_854)
                  {
                     this.var_1062 = false;
                  }
               }
               else if(this.var_853)
               {
                  _loc5_ = -1 / this.var_491;
                  _loc6_ = 1 - this.var_565 / Number(this.var_491);
                  this.var_565 += const_121;
                  if(this.var_565 > this.var_491)
                  {
                     this.var_565 = this.var_491;
                  }
               }
               this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc6_,_loc5_);
            }
         }
         var _loc4_:int = param2;
         while(_loc4_ < const_121)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(Number(const_204[_loc4_]) * 0);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(Number(const_204[_loc6_]) * 0 * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(Number(const_204[_loc6_]) * 0);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_704)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_1600));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_703 != null)
         {
            this.var_703.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_703.reset();
            this.var_703 = null;
         }
      }
      
      private function removeStopTimer() : void
      {
         if(this.var_489 != null)
         {
            this.var_489.reset();
            this.var_489.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            this.var_489 = null;
         }
      }
   }
}
