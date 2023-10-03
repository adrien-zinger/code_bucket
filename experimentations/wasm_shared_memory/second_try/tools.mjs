const tools = {
	/**
	 * Convert a UTF16 string to UTF8.
	 * @param {String} input
	 * @returns {String}
	 */
	utf16To8: function (input) {
		var _unescape = function(s) {
			function d(_x, n) {
				return String.fromCharCode(parseInt(n, 16));
			}
			return s.replace(/%([0-9A-F]{2})/ig, d);
		};
		try{
			return _unescape(encodeURIComponent(input));
		}catch (URIError) {
			//include invalid character, cannot convert
			return input;
		}
	},
	/**
	 * Convert a UTF8 string to UTF16.
	 * @param {String} input
	 * @returns {String}
	 */
	utf8To16: function (input) {
		var _escape = function(s) {
			function q(c) {
				c = c.charCodeAt();
				return '%' + (c<16 ? '0' : '') + c.toString(16).toUpperCase();
			}
			return s.replace('[\x00-),:-?[-^`{-\xFF]', q);
		};
		try{
			return decodeURIComponent(_escape(input));
		}catch (URIError) {
			//include invalid character, cannot convert
			return input;
		}
	},


	/**
	 * Actually is utf16 string in js to utf8 byte array
	 *
	 * @param str
	 * @returns {Array}
	 */
	__stringToArray : function (str) {
		var utf8 = [];
		for (var i=0; i < str.length; i++) {
			var charcode = str.charCodeAt(i);
			if (charcode < 0x80) utf8.push(charcode);
			else if (charcode < 0x800) {
				utf8.push(0xc0 | (charcode >> 6),
					0x80 | (charcode & 0x3f));
			}
			else if (charcode < 0xd800 || charcode >= 0xe000) {
				utf8.push(0xe0 | (charcode >> 12),
					0x80 | ((charcode>>6) & 0x3f),
					0x80 | (charcode & 0x3f));
			}
			// surrogate pair
			else {
				i++;
				// UTF-16 encodes 0x10000-0x10FFFF by
				// subtracting 0x10000 and splitting the
				// 20 bits of 0x0-0xFFFFF into two halves
				charcode = 0x10000 + (((charcode & 0x3ff)<<10)
					| (str.charCodeAt(i) & 0x3ff))
				utf8.push(0xf0 | (charcode >>18),
					0x80 | ((charcode>>12) & 0x3f),
					0x80 | ((charcode>>6) & 0x3f),
					0x80 | (charcode & 0x3f));
			}
		}
		return utf8;
	},
	/**
	 * Actually from utf8 byte array to utf16 string in js
	 * @param input
	 * @returns {string}
	 */
	__arrayToString: function (input) {
		var i, str = '';

		for (i = 0; i < input.length; i++) {
			str += '%' + ('0' + input[i].toString(16)).slice(-2);
		}
		str = decodeURIComponent(str);
		return str;
	},
};

export default tools;
