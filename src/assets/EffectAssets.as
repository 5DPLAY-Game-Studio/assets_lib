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

package assets {
	import interfaces.BaseAssets;
	
	/**
	 * font 资源
	 */
	public class EffectAssets extends BaseAssets {
		
		//------------------------------------------------------------
		// 私有属性
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 静态方法
		//------------------------------------------------------------
		
		private static var _i:EffectAssets;
		
		public static function get I():EffectAssets {
			_i ||= new EffectAssets();
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
		
		[Embed(source = "/../assets/effect.swf", mimeType="application/octet-stream")]
		public var effect_swf:Class;
		
	}
}

