part of openapi.api;

class CreateGPGKeyOption {
  /* An armored GPG key to add */
  String armoredPublicKey = null;
  CreateGPGKeyOption();

  @override
  String toString() {
    return 'CreateGPGKeyOption[armoredPublicKey=$armoredPublicKey, ]';
  }

  CreateGPGKeyOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    armoredPublicKey = json['armored_public_key'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (armoredPublicKey != null)
      json['armored_public_key'] = armoredPublicKey;
    return json;
  }

  static List<CreateGPGKeyOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateGPGKeyOption>() : json.map((value) => CreateGPGKeyOption.fromJson(value)).toList();
  }

  static Map<String, CreateGPGKeyOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateGPGKeyOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateGPGKeyOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateGPGKeyOption-objects as value to a dart map
  static Map<String, List<CreateGPGKeyOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateGPGKeyOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateGPGKeyOption.listFromJson(value);
       });
     }
     return map;
  }
}

