import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ride_record.g.dart';

abstract class RideRecord implements Built<RideRecord, RideRecordBuilder> {
  static Serializer<RideRecord> get serializer => _$rideRecordSerializer;

  @BuiltValueField(wireName: 'user_location')
  LatLng? get userLocation;

  @BuiltValueField(wireName: 'user_uid')
  String? get userUid;

  @BuiltValueField(wireName: 'driver_location')
  LatLng? get driverLocation;

  @BuiltValueField(wireName: 'driver_uid')
  String? get driverUid;

  @BuiltValueField(wireName: 'destination_location')
  LatLng? get destinationLocation;

  @BuiltValueField(wireName: 'destination_address')
  String? get destinationAddress;

  @BuiltValueField(wireName: 'user_address')
  String? get userAddress;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'driver_name')
  String? get driverName;

  @BuiltValueField(wireName: 'is_driver_assigned')
  bool? get isDriverAssigned;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RideRecordBuilder builder) => builder
    ..userUid = ''
    ..driverUid = ''
    ..destinationAddress = ''
    ..userAddress = ''
    ..userName = ''
    ..driverName = ''
    ..isDriverAssigned = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ride');

  static Stream<RideRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RideRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RideRecord._();
  factory RideRecord([void Function(RideRecordBuilder) updates]) = _$RideRecord;

  static RideRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRideRecordData({
  LatLng? userLocation,
  String? userUid,
  LatLng? driverLocation,
  String? driverUid,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userAddress,
  String? userName,
  String? driverName,
  bool? isDriverAssigned,
}) {
  final firestoreData = serializers.toFirestore(
    RideRecord.serializer,
    RideRecord(
      (r) => r
        ..userLocation = userLocation
        ..userUid = userUid
        ..driverLocation = driverLocation
        ..driverUid = driverUid
        ..destinationLocation = destinationLocation
        ..destinationAddress = destinationAddress
        ..userAddress = userAddress
        ..userName = userName
        ..driverName = driverName
        ..isDriverAssigned = isDriverAssigned,
    ),
  );

  return firestoreData;
}
