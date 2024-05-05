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
		 * @return 声音
		 * 
		 */
		public static function loadSndByBytes(snd:Sound, bytes:ByteArray):Sound {
			var bytesAvailable:uint = bytes.bytesAvailable;
			snd.loadCompressedDataFromByteArray(bytes, bytesAvailable);
			
			return snd;
		}
		
		/**
		 * 加载字符串通过字节流
		 * 
		 * @param bytes 字符串字节
		 * 
		 * @return 字符串
		 * 
		 */
		public static function loadStrByBytes(bytes:ByteArray):String {
			var bytesAvailable:uint = bytes.bytesAvailable;
			var str:String = bytes.readUTFBytes(bytesAvailable);
			
			return str;
		}
		
	}
}