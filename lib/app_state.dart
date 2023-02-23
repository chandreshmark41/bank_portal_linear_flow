import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _existingCustomer = 'existingCustomer';
  String get existingCustomer => _existingCustomer;
  set existingCustomer(String _value) {
    _existingCustomer = _value;
  }

  String _notExistingCustomer = 'notExistingCustomer';
  String get notExistingCustomer => _notExistingCustomer;
  set notExistingCustomer(String _value) {
    _notExistingCustomer = _value;
  }

  String _phoneLogIn = 'phoneLogIn';
  String get phoneLogIn => _phoneLogIn;
  set phoneLogIn(String _value) {
    _phoneLogIn = _value;
  }

  String _customerIdLogIn = 'customerIdLogIn';
  String get customerIdLogIn => _customerIdLogIn;
  set customerIdLogIn(String _value) {
    _customerIdLogIn = _value;
  }

  String _currentState = 'currentState';
  String get currentState => _currentState;
  set currentState(String _value) {
    _currentState = _value;
  }

  bool _resendOTPFlag = false;
  bool get resendOTPFlag => _resendOTPFlag;
  set resendOTPFlag(bool _value) {
    _resendOTPFlag = _value;
  }

  String _otpVerification = 'otpVerification';
  String get otpVerification => _otpVerification;
  set otpVerification(String _value) {
    _otpVerification = _value;
  }

  String _phoneNumberError = 'phoneNumberError';
  String get phoneNumberError => _phoneNumberError;
  set phoneNumberError(String _value) {
    _phoneNumberError = _value;
  }

  String _panOrDobError = 'panOrDobError';
  String get panOrDobError => _panOrDobError;
  set panOrDobError(String _value) {
    _panOrDobError = _value;
  }

  String _emiTransaction = 'emiTransaction';
  String get emiTransaction => _emiTransaction;
  set emiTransaction(String _value) {
    _emiTransaction = _value;
  }

  String _OTP = '123456';
  String get OTP => _OTP;
  set OTP(String _value) {
    _OTP = _value;
  }

  String _personalInfo = 'personalInfo';
  String get personalInfo => _personalInfo;
  set personalInfo(String _value) {
    _personalInfo = _value;
  }

  String _address = 'address';
  String get address => _address;
  set address(String _value) {
    _address = _value;
  }

  String _review = 'review';
  String get review => _review;
  set review(String _value) {
    _review = _value;
  }

  dynamic _state = jsonDecode(
      '{\"states\":[\"Andhra Pradesh\",\"Arunachal Pradesh\",\"Assam\",\"Bihar\",\"Chandigarh (UT)\",\"Chhattisgarh\",\"Dadra and Nagar Haveli (UT)\",\"Daman and Diu (UT)\",\"Delhi (NCT)\",\"Goa\",\"Gujarat\",\"Haryana\",\"Himachal Pradesh\",\"Jammu and Kashmir\",\"Jharkhand\",\"Karnataka\",\"Kerala\",\"Lakshadweep (UT)\",\"Madhya Pradesh\",\"Maharashtra\",\"Manipur\",\"Meghalaya\",\"Mizoram\",\"Nagaland\",\"Odisha\",\"Puducherry (UT)\",\"Punjab\",\"Rajasthan\",\"Sikkim\",\"Tamil Nadu\",\"Telangana\",\"Tripura\",\"Uttarakhand\",\"Uttar Pradesh\",\"West Bengal\"]}');
  dynamic get state => _state;
  set state(dynamic _value) {
    _state = _value;
  }

  List<String> _cities = ['Please select state first'];
  List<String> get cities => _cities;
  set cities(List<String> _value) {
    _cities = _value;
  }

  void addToCities(String _value) {
    _cities.add(_value);
  }

  void removeFromCities(String _value) {
    _cities.remove(_value);
  }

  void removeAtIndexFromCities(int _index) {
    _cities.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
