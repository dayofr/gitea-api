part of openapi.api;

class GPGKey {
  
  bool canCertify = null;
  
  bool canEncryptComms = null;
  
  bool canEncryptStorage = null;
  
  bool canSign = null;
  
  DateTime createdAt = null;
  
  List<GPGKeyEmail> emails = [];
  
  DateTime expiresAt = null;
  
  int id = null;
  
  String keyId = null;
  
  String primaryKeyId = null;
  
  String publicKey = null;
  
  List<GPGKey> subkeys = [];
  GPGKey();

  @override
  String toString() {
    return 'GPGKey[canCertify=$canCertify, canEncryptComms=$canEncryptComms, canEncryptStorage=$canEncryptStorage, canSign=$canSign, createdAt=$createdAt, emails=$emails, expiresAt=$expiresAt, id=$id, keyId=$keyId, primaryKeyId=$primaryKeyId, publicKey=$publicKey, subkeys=$subkeys, ]';
  }

  GPGKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canCertify = json['can_certify'];
    canEncryptComms = json['can_encrypt_comms'];
    canEncryptStorage = json['can_encrypt_storage'];
    canSign = json['can_sign'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    emails = (json['emails'] == null) ?
      null :
      GPGKeyEmail.listFromJson(json['emails']);
    expiresAt = (json['expires_at'] == null) ?
      null :
      DateTime.parse(json['expires_at']);
    id = json['id'];
    keyId = json['key_id'];
    primaryKeyId = json['primary_key_id'];
    publicKey = json['public_key'];
    subkeys = (json['subkeys'] == null) ?
      null :
      GPGKey.listFromJson(json['subkeys']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canCertify != null)
      json['can_certify'] = canCertify;
    if (canEncryptComms != null)
      json['can_encrypt_comms'] = canEncryptComms;
    if (canEncryptStorage != null)
      json['can_encrypt_storage'] = canEncryptStorage;
    if (canSign != null)
      json['can_sign'] = canSign;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emails != null)
      json['emails'] = emails;
    if (expiresAt != null)
      json['expires_at'] = expiresAt == null ? null : expiresAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (keyId != null)
      json['key_id'] = keyId;
    if (primaryKeyId != null)
      json['primary_key_id'] = primaryKeyId;
    if (publicKey != null)
      json['public_key'] = publicKey;
    if (subkeys != null)
      json['subkeys'] = subkeys;
    return json;
  }

  static List<GPGKey> listFromJson(List<dynamic> json) {
    return json == null ? List<GPGKey>() : json.map((value) => GPGKey.fromJson(value)).toList();
  }

  static Map<String, GPGKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GPGKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GPGKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GPGKey-objects as value to a dart map
  static Map<String, List<GPGKey>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GPGKey>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GPGKey.listFromJson(value);
       });
     }
     return map;
  }
}

