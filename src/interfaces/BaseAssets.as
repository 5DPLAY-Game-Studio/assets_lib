/**
 * Copyright (C) 2021, 5DPLAY Game Studio
 * All rights reserved.
 *
 * This software is distributed under the MIT license.
 * Any person or organization may use this library free of charge,
 * but it must follow the following points :
 *
 * 1. No person or organization may claim to
 *    have written the original source code.
 *
 * 2. In any case, the author is not liable for
 *    any consequences caused by the use of part
 *    of the code of this software.
 *
 * 3. This section shall not be deleted or altered
 *    from any source.
 *
 */

package interfaces {
	import flash.media.Sound;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import assets.bgm.BgmAssets;
	import assets.sound.SoundAssets;
	
	import utils.SoundUtils;
	
	/**
	 * 资源模板
	 */
	public class BaseAssets {
		
		//------------------------------------------------------------
		// 私有属性
		//------------------------------------------------------------
		
		// 缓存
		protected var _cache:Dictionary = new Dictionary();
		
		
		
		//------------------------------------------------------------
		// 静态方法
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 私有方法
		//------------------------------------------------------------
		
		
		//------------------------------------------------------------
		// 公开方法
		//------------------------------------------------------------
		
		/**
		 * 获取资源类
		 * 
		 * @param name 资源名称
		 * 
		 * @return 对应资源类
		 */
		public function getResCls(name:String):Class {
			name = name.replace(".", "_");
			
			var cls:Class = this[name]as Class;
			if (!cls) {
				throw new Error();
			}
			
			return cls;
		}
		
		/**
		 * 获取资源
		 * 
		 * @param name 资源名称
		 * 
		 * @return 对应资源
		 */
		public function getRes(name:String):* {
			const sndClses:Array = [
				SoundAssets, 
				BgmAssets
			];
			
			for each (var sndCls:Class in sndClses) {
				if (this is sndCls) {
					return getSnd(name);
				}
			}
			
			var cls:Class = getResCls(name);
			var res:* = new cls();
			if (!res) {
				return null;
			}
			
			return checkCache(cls, res);
		}
		
		/**
		 * 获取声音资源
		 * 
		 * @param name 声音名称
		 * 
		 * @return 对应声音资源
		 */
		public function getSnd(name:String):* {
			var cls:Class = getResCls(name);
			var bytes:ByteArray = new cls() as ByteArray;
			if (!bytes) {
				return null;
			}
			
			
			var snd:Sound = new Sound();
			return checkCache(cls, snd, function():void {
				// 这样做后可以避免声音部分丢失
				SoundUtils.loadSndByBytes(snd, bytes);
			});
		}
		
		/**
		 * 检查缓存，如果缓存存在则直接取缓存
		 * 
		 * @param key   键
		 * @param value 值
		 * @param next  如果缓存不存在要做什么
		 * 
		 * @return 所需的值
		 */
		public function checkCache(key:*, value:*, next:Function = null):* {
			if (_cache[key]) {
				return _cache[key];
			}
			
			if (next != null) {
				next();
			}
			
			_cache[key] = value;
			return value;
		}
		
		
		
		//------------------------------------------------------------
		// 嵌入资源
		//------------------------------------------------------------
	}
}