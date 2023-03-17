import 'package:flutter/material.dart';

class CandidateModel {
  late String id;
  late String partySign;
  late String candidateName;
  late String partyName;
  late String candidateImage;

  CandidateModel(
      {required this.id,
      required this.partySign,
      required this.candidateName,
      required this.candidateImage,
      required this.partyName});

  CandidateModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        partySign = json['party_sign'],
        candidateName = json['candidate_image'],
        partyName = json['party_name'],
        candidateImage = json['candidate_image'];
}
