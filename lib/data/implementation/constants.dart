import 'package:dio/dio.dart';

final kDioOptions = BaseOptions(
  baseUrl: 'http://224635.fornex.cloud/api',
  //contentType: Headers.jsonContentType,
  responseType: ResponseType.json,
  connectTimeout: 3500,
  receiveTimeout: 3500,
  headers: {'content-Type': 'application/json'},
);
