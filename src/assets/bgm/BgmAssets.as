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

package assets.bgm {
	import interfaces.BaseAssets;
	
	/**
	 * sound 资源
	 */
	public class BgmAssets extends BaseAssets {
		
		//------------------------------------------------------------
		// 私有属性
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 静态方法
		//------------------------------------------------------------
		
		private static var _i:BgmAssets;
		
		public static function get I():BgmAssets {
			_i ||= new BgmAssets();
			return _i;
		}
		
		
		
		//------------------------------------------------------------
		// 私有方法
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 公开方法
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 嵌入资源
		//------------------------------------------------------------
		
		[Embed(source = "/../assets/bgm/back.mp3", mimeType="application/octet-stream")]
		public var back_mp3:Class;
		
		[Embed(source = "/../assets/bgm/bleach.mp3", mimeType="application/octet-stream")]
		public var bleach_mp3:Class;
		
		[Embed(source = "/../assets/bgm/bleachboss.mp3", mimeType="application/octet-stream")]
		public var bleachboss_mp3:Class;
		
		[Embed(source = "/../assets/bgm/city.mp3", mimeType="application/octet-stream")]
		public var city_mp3:Class;
		
		[Embed(source = "/../assets/bgm/congratulation.mp3", mimeType="application/octet-stream")]
		public var congratulation_mp3:Class;
		
	}
}