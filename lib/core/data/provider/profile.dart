import 'package:flutter/material.dart';
import 'package:mogawe/core/data/response/user_profile_response.dart';
import 'package:mogawe/core/data/sources/network/user_network_service.dart';

class ProfilViewModel extends ChangeNotifier{
  ProfilMViewModel? tipe;

  Future<void> getalldata(token) async {
    final tipe = await UserNetworkService().profileUser(token);
    this.tipe = ProfilMViewModel(tipelist: tipe);
    notifyListeners();
  }
}

class ProfilMViewModel {


  UserProfileResponse? tipelist;

  ProfilMViewModel({ this.tipelist});

  String get message{
    return this.tipelist!.message;
  }
  // String? get full_name {
  //   return this.tipelist?.full_name;
  // }
  //
  // String? get email {
  //   return this.tipelist?.email;
  // }
  //
  // int? get balance {
  //   return this.tipelist?.balance;
  // }
  //
  // int? get points{
  //   return this.tipelist?.points;
  // }
  //
  // int? get downline_count{
  //   return this.tipelist?.downline_count;
  // }
  //
  // int? get gawean_selesai {
  //   return this.tipelist?.gawean_selesai;
  // }
  //
  // String? get mogawers_code {
  //   return this.tipelist?.mogawers_code;
  // }

}