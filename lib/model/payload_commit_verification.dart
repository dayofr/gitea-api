part of openapi.api;

class PayloadCommitVerification {
  
  String payload = null;
  
  String reason = null;
  
  String signature = null;
  
  PayloadUser signer = null;
  
  bool verified = null;
  PayloadCommitVerification();

  @override
  String toString() {
    return 'PayloadCommitVerification[payload=$payload, reason=$reason, signature=$signature, signer=$signer, verified=$verified, ]';
  }

  PayloadCommitVerification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    payload = json['payload'];
    reason = json['reason'];
    signature = json['signature'];
    signer = (json['signer'] == null) ?
      null :
      PayloadUser.fromJson(json['signer']);
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (payload != null)
      json['payload'] = payload;
    if (reason != null)
      json['reason'] = reason;
    if (signature != null)
      json['signature'] = signature;
    if (signer != null)
      json['signer'] = signer;
    if (verified != null)
      json['verified'] = verified;
    return json;
  }

  static List<PayloadCommitVerification> listFromJson(List<dynamic> json) {
    return json == null ? List<PayloadCommitVerification>() : json.map((value) => PayloadCommitVerification.fromJson(value)).toList();
  }

  static Map<String, PayloadCommitVerification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PayloadCommitVerification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PayloadCommitVerification.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PayloadCommitVerification-objects as value to a dart map
  static Map<String, List<PayloadCommitVerification>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PayloadCommitVerification>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PayloadCommitVerification.listFromJson(value);
       });
     }
     return map;
  }
}

