// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RideRecord> _$rideRecordSerializer = new _$RideRecordSerializer();

class _$RideRecordSerializer implements StructuredSerializer<RideRecord> {
  @override
  final Iterable<Type> types = const [RideRecord, _$RideRecord];
  @override
  final String wireName = 'RideRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RideRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userLocation;
    if (value != null) {
      result
        ..add('user_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userUid;
    if (value != null) {
      result
        ..add('user_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverLocation;
    if (value != null) {
      result
        ..add('driver_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.driverUid;
    if (value != null) {
      result
        ..add('driver_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destinationLocation;
    if (value != null) {
      result
        ..add('destination_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.destinationAddress;
    if (value != null) {
      result
        ..add('destination_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userAddress;
    if (value != null) {
      result
        ..add('user_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverName;
    if (value != null) {
      result
        ..add('driver_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDriverAssigned;
    if (value != null) {
      result
        ..add('is_driver_assigned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RideRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RideRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_location':
          result.userLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'user_uid':
          result.userUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_location':
          result.driverLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'driver_uid':
          result.driverUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'destination_location':
          result.destinationLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'destination_address':
          result.destinationAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_address':
          result.userAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_name':
          result.driverName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_driver_assigned':
          result.isDriverAssigned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RideRecord extends RideRecord {
  @override
  final LatLng? userLocation;
  @override
  final String? userUid;
  @override
  final LatLng? driverLocation;
  @override
  final String? driverUid;
  @override
  final LatLng? destinationLocation;
  @override
  final String? destinationAddress;
  @override
  final String? userAddress;
  @override
  final String? userName;
  @override
  final String? driverName;
  @override
  final bool? isDriverAssigned;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RideRecord([void Function(RideRecordBuilder)? updates]) =>
      (new RideRecordBuilder()..update(updates))._build();

  _$RideRecord._(
      {this.userLocation,
      this.userUid,
      this.driverLocation,
      this.driverUid,
      this.destinationLocation,
      this.destinationAddress,
      this.userAddress,
      this.userName,
      this.driverName,
      this.isDriverAssigned,
      this.ffRef})
      : super._();

  @override
  RideRecord rebuild(void Function(RideRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RideRecordBuilder toBuilder() => new RideRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RideRecord &&
        userLocation == other.userLocation &&
        userUid == other.userUid &&
        driverLocation == other.driverLocation &&
        driverUid == other.driverUid &&
        destinationLocation == other.destinationLocation &&
        destinationAddress == other.destinationAddress &&
        userAddress == other.userAddress &&
        userName == other.userName &&
        driverName == other.driverName &&
        isDriverAssigned == other.isDriverAssigned &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userLocation.hashCode);
    _$hash = $jc(_$hash, userUid.hashCode);
    _$hash = $jc(_$hash, driverLocation.hashCode);
    _$hash = $jc(_$hash, driverUid.hashCode);
    _$hash = $jc(_$hash, destinationLocation.hashCode);
    _$hash = $jc(_$hash, destinationAddress.hashCode);
    _$hash = $jc(_$hash, userAddress.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, driverName.hashCode);
    _$hash = $jc(_$hash, isDriverAssigned.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RideRecord')
          ..add('userLocation', userLocation)
          ..add('userUid', userUid)
          ..add('driverLocation', driverLocation)
          ..add('driverUid', driverUid)
          ..add('destinationLocation', destinationLocation)
          ..add('destinationAddress', destinationAddress)
          ..add('userAddress', userAddress)
          ..add('userName', userName)
          ..add('driverName', driverName)
          ..add('isDriverAssigned', isDriverAssigned)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RideRecordBuilder implements Builder<RideRecord, RideRecordBuilder> {
  _$RideRecord? _$v;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  String? _userUid;
  String? get userUid => _$this._userUid;
  set userUid(String? userUid) => _$this._userUid = userUid;

  LatLng? _driverLocation;
  LatLng? get driverLocation => _$this._driverLocation;
  set driverLocation(LatLng? driverLocation) =>
      _$this._driverLocation = driverLocation;

  String? _driverUid;
  String? get driverUid => _$this._driverUid;
  set driverUid(String? driverUid) => _$this._driverUid = driverUid;

  LatLng? _destinationLocation;
  LatLng? get destinationLocation => _$this._destinationLocation;
  set destinationLocation(LatLng? destinationLocation) =>
      _$this._destinationLocation = destinationLocation;

  String? _destinationAddress;
  String? get destinationAddress => _$this._destinationAddress;
  set destinationAddress(String? destinationAddress) =>
      _$this._destinationAddress = destinationAddress;

  String? _userAddress;
  String? get userAddress => _$this._userAddress;
  set userAddress(String? userAddress) => _$this._userAddress = userAddress;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _driverName;
  String? get driverName => _$this._driverName;
  set driverName(String? driverName) => _$this._driverName = driverName;

  bool? _isDriverAssigned;
  bool? get isDriverAssigned => _$this._isDriverAssigned;
  set isDriverAssigned(bool? isDriverAssigned) =>
      _$this._isDriverAssigned = isDriverAssigned;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RideRecordBuilder() {
    RideRecord._initializeBuilder(this);
  }

  RideRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userLocation = $v.userLocation;
      _userUid = $v.userUid;
      _driverLocation = $v.driverLocation;
      _driverUid = $v.driverUid;
      _destinationLocation = $v.destinationLocation;
      _destinationAddress = $v.destinationAddress;
      _userAddress = $v.userAddress;
      _userName = $v.userName;
      _driverName = $v.driverName;
      _isDriverAssigned = $v.isDriverAssigned;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RideRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RideRecord;
  }

  @override
  void update(void Function(RideRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RideRecord build() => _build();

  _$RideRecord _build() {
    final _$result = _$v ??
        new _$RideRecord._(
            userLocation: userLocation,
            userUid: userUid,
            driverLocation: driverLocation,
            driverUid: driverUid,
            destinationLocation: destinationLocation,
            destinationAddress: destinationAddress,
            userAddress: userAddress,
            userName: userName,
            driverName: driverName,
            isDriverAssigned: isDriverAssigned,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
