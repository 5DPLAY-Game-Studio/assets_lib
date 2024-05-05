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

package assets.face {
	import interfaces.BaseAssets;
	
	/**
	 * face 资源
	 */
	public class FaceAssets extends BaseAssets {
		
		//------------------------------------------------------------
		// 私有属性
		//------------------------------------------------------------
		
		
		
		//------------------------------------------------------------
		// 静态方法
		//------------------------------------------------------------
		
		// 静态实例
		private static var _i:FaceAssets;
		
		public static function get I():FaceAssets {
			_i ||= new FaceAssets();
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
		
		[Embed(source = "/../assets/face/ichigo.png")]
		public var ichigo_png:Class;
		
	}
}