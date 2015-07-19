package creffect {
	import flash.system.Capabilities;
	public class Multilang {
		private var _data:Object;
		public var language:String;
		function Multilang(data:Object, lang:String = ""):Void {
			_data = data;
			if (!lang) {
				language = Capabilities.languages[0];
			}
			else {
				language = lang;
			}
		}
		public function getString(stringID:String):String {
			if (_data.hasOwnProperty(language)) {
				if (_data[language].hasOwnProperty(stringID)) {
					return _data[language][stringID];
				}
				else {
					return "";
				}
			}
			else {
				return "";
			}
		}
	}
}
