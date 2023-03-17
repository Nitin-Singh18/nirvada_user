import 'package:flutter/material.dart';

class CandidateModel {
  late String id;
  late String partySign;
  late String candidateName;
  late String partyName;
  late String candidateImage;
  late String location;

  CandidateModel(
      {required this.id,
      required this.partySign,
      required this.candidateName,
      required this.candidateImage,
      required this.partyName,
      required this.location});

  CandidateModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        partySign = json['party_sign'],
        candidateName = json['candidate_name'],
        partyName = json['party_name'],
        candidateImage = json['candidate_image'],
        location = json['booth'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'party_sign': partySign,
      'candidate_image': candidateImage,
      'party_name': partyName,
      'candidate_name': candidateName,
      'booth': location,
    };
  }
}
