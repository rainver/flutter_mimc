class MimcServerAck {
  String packetId;
  int timestamp;
  String desc;
  int sequence;
  int code;

  MimcServerAck(
      {this.packetId, this.timestamp, this.desc, this.sequence, this.code});

  MimcServerAck.fromJson(Map<dynamic, dynamic> json) {
    this.packetId = json['packetId'];
    this.timestamp = json['timestamp'];
    this.desc = json['desc'];
    this.sequence = json['sequence'];
    this.code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['packetId'] = this.packetId;
    data['timestamp'] = this.timestamp;
    data['desc'] = this.desc;
    data['sequence'] = this.sequence;
    data['code'] = this.code;
    return data;
  }
}
