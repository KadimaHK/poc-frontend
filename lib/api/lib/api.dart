//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/benefit_api.dart';
part 'api/booking_api.dart';
part 'api/establishment_api.dart';
part 'api/establishment_category_api.dart';
part 'api/establishment_image_api.dart';
part 'api/establishment_menu_api.dart';
part 'api/establishment_menu_image_api.dart';
part 'api/establishment_rank_api.dart';
part 'api/featured_api.dart';
part 'api/featured_offer_api.dart';
part 'api/follow_api.dart';
part 'api/image_api.dart';
part 'api/introspection_api.dart';
part 'api/menu_category_api.dart';
part 'api/message_api.dart';
part 'api/notification_api.dart';
part 'api/notification_type_api.dart';
part 'api/order_api.dart';
part 'api/pick_api.dart';
part 'api/pick_establishment_api.dart';
part 'api/review_api.dart';
part 'api/review_image_api.dart';
part 'api/rpc_login_api.dart';
part 'api/rpc_logout_api.dart';
part 'api/rpc_sign_up_api.dart';
part 'api/user_api.dart';
part 'api/user_benefit_api.dart';
part 'api/user_featured_offer_api.dart';

part 'model/benefit.dart';
part 'model/booking.dart';
part 'model/establishment.dart';
part 'model/establishment_category.dart';
part 'model/establishment_image.dart';
part 'model/establishment_menu.dart';
part 'model/establishment_menu_image.dart';
part 'model/establishment_rank.dart';
part 'model/featured.dart';
part 'model/featured_offer.dart';
part 'model/follow.dart';
part 'model/image.dart';
part 'model/menu_category.dart';
part 'model/message.dart';
part 'model/notification.dart';
part 'model/notification_type.dart';
part 'model/order.dart';
part 'model/pick.dart';
part 'model/pick_establishment.dart';
part 'model/review.dart';
part 'model/review_image.dart';
part 'model/rpc_sign_up_post_request.dart';
part 'model/user.dart';
part 'model/user_benefit.dart';
part 'model/user_featured_offer.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
