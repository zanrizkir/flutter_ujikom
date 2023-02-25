// ignore_for_file: unnecessary_overrides, unused_field

import 'dart:convert';

import 'package:get/get.dart';
import 'package:ujikom/app/data/entertainment_response.dart';

import '../../../data/headline_response.dart';
import '../../../data/sport_response.dart';
import '../../../data/technology_response.dart';
import '../../../utils/api.dart';

class DashboardController extends GetxController {
  // ignore: todo
  //TODO: Implement DashboardController

  final _getConnect = GetConnect();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<HeadlineResponse> getHeadline() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }

  Future<SportResponse> getsports() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.sports);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return SportResponse.fromJson(jsonDecode(response.body));
  }

  Future<EntertainmentResponse> getentertaiment() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.entertainment);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return EntertainmentResponse.fromJson(jsonDecode(response.body));
  }

  Future<Technology_Response> gettechnology() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.technology);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return Technology_Response.fromJson(jsonDecode(response.body));
  }
}
