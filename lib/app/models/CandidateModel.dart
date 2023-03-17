class CandidateModel {
  late String id;
  late String data;

  CandidateModel({required this.id, required this.data});

  CandidateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['data'] = this.data;
    return data;
  }
}