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

package {
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.media.Sound;
	import flash.utils.ByteArray;
	
	import assets.EffectAssets;
	import assets.bgm.BgmAssets;
	import assets.face.FaceAssets;
	import assets.font.FontAssets;
	import assets.sound.SoundAssets;
	
	import interfaces.BaseAssets;
	
	/**
	 * 素材库
	 */
	public class assets_lib extends Sprite {
		
		// face 资源
		public var faceAssets:FaceAssets = FaceAssets.I;
		// font 资源
		public var fontAssets:FontAssets = FontAssets.I;
		// sound 资源
		public var soundAssets:SoundAssets = SoundAssets.I;
		// bgm 资源
		public var bgmAssets:BgmAssets = BgmAssets.I;
		// effect 资源
		public var effectAssets:EffectAssets = EffectAssets.I;
		
		public function assets_lib() {
			return;
			
			// 测试代码
			
			var xml:XML = getResByPath("assets/font/font1.xml");
			trace(xml);
			
			var b:Bitmap = getResByPath("assets/face/ichigo.png");
			addChild(b);
			
			var snd:Sound = getResByPath("assets/sound/step1.mp3");
			snd.play();
			
			var bgm:Sound = getResByPath("assets/bgm/back.mp3");
			bgm.play();
			
			var bytes:ByteArray = getResByPath("assets/effect.swf");
			trace(bytes.length);
			
		}
		
		// 路径 -> 资源 对照
		private const _assetsObj:Object = {
			"bgm/" 			: bgmAssets, 
			"sound/" 		: soundAssets, 
			"font/" 		: fontAssets,
			"face/" 		: faceAssets,
			"effect.swf"	: effectAssets
		};
		
		/**
		 * 通过路径获取资源
		 * 
		 * @param path 资源路径
		 * 
		 * @return 通过路径获取的资源
		 */
		public function getResByPath(path:String):* {
			var lastIndex:int = path.lastIndexOf("/") + 1;
			var file:String = path.substring(lastIndex, path.length);
			
//			trace(file);
			
			for (var key:String in _assetsObj) {
//				trace(key)
				
				if (path.indexOf(key) == -1) {
					continue;
				}
				
				var _assets:BaseAssets = _assetsObj[key] as BaseAssets;
				if (!_assets) {
					break;
				}
				
				return _assets.getRes(file);
			}
			
			return null;
		}
		
	}
}