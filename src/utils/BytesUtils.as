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

package utils {
	import flash.media.Sound;
	import flash.utils.ByteArray;
	
	/**
	 * 声音工具
	 */
	public class BytesUtils {
		
		/**
		 * 加载声音通过字节流
		 * 
		 * @param snd 声音对象
		 * @param bytes 声音字节
		 * 
		 */
		public static function loadSndByBytes(snd:Sound, bytes:ByteArray):void {
			var bytesAvailable:uint = bytes.bytesAvailable;
			snd.loadCompressedDataFromByteArray(bytes, bytesAvailable);
		}
	}
}