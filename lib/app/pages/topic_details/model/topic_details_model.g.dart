// GENERATED CODE - DO NOT MODIFY BY HAND

part of topic_details_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicDetails> _$topicDetailsSerializer =
    new _$TopicDetailsSerializer();
Serializer<Century> _$centurySerializer = new _$CenturySerializer();

class _$TopicDetailsSerializer implements StructuredSerializer<TopicDetails> {
  @override
  final Iterable<Type> types = const [TopicDetails, _$TopicDetails];
  @override
  final String wireName = 'TopicDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, TopicDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'topicName',
      serializers.serialize(object.topicName,
          specifiedType: const FullType(String)),
      'centuries',
      serializers.serialize(object.centuries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Century)])),
    ];

    return result;
  }

  @override
  TopicDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topicName':
          result.topicName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'centuries':
          result.centuries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Century)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CenturySerializer implements StructuredSerializer<Century> {
  @override
  final Iterable<Type> types = const [Century, _$Century];
  @override
  final String wireName = 'Century';

  @override
  Iterable<Object?> serialize(Serializers serializers, Century object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'start',
      serializers.serialize(object.start, specifiedType: const FullType(int)),
      'end',
      serializers.serialize(object.end, specifiedType: const FullType(int)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Century deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CenturyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TopicDetails extends TopicDetails {
  @override
  final String topicName;
  @override
  final BuiltList<Century> centuries;

  factory _$TopicDetails([void Function(TopicDetailsBuilder)? updates]) =>
      (new TopicDetailsBuilder()..update(updates)).build();

  _$TopicDetails._({required this.topicName, required this.centuries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        topicName, 'TopicDetails', 'topicName');
    BuiltValueNullFieldError.checkNotNull(
        centuries, 'TopicDetails', 'centuries');
  }

  @override
  TopicDetails rebuild(void Function(TopicDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicDetailsBuilder toBuilder() => new TopicDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicDetails &&
        topicName == other.topicName &&
        centuries == other.centuries;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, topicName.hashCode), centuries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopicDetails')
          ..add('topicName', topicName)
          ..add('centuries', centuries))
        .toString();
  }
}

class TopicDetailsBuilder
    implements Builder<TopicDetails, TopicDetailsBuilder> {
  _$TopicDetails? _$v;

  String? _topicName;
  String? get topicName => _$this._topicName;
  set topicName(String? topicName) => _$this._topicName = topicName;

  ListBuilder<Century>? _centuries;
  ListBuilder<Century> get centuries =>
      _$this._centuries ??= new ListBuilder<Century>();
  set centuries(ListBuilder<Century>? centuries) =>
      _$this._centuries = centuries;

  TopicDetailsBuilder();

  TopicDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topicName = $v.topicName;
      _centuries = $v.centuries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopicDetails;
  }

  @override
  void update(void Function(TopicDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopicDetails build() {
    _$TopicDetails _$result;
    try {
      _$result = _$v ??
          new _$TopicDetails._(
              topicName: BuiltValueNullFieldError.checkNotNull(
                  topicName, 'TopicDetails', 'topicName'),
              centuries: centuries.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'centuries';
        centuries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopicDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Century extends Century {
  @override
  final int start;
  @override
  final int end;
  @override
  final String overview;

  factory _$Century([void Function(CenturyBuilder)? updates]) =>
      (new CenturyBuilder()..update(updates)).build();

  _$Century._({required this.start, required this.end, required this.overview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(start, 'Century', 'start');
    BuiltValueNullFieldError.checkNotNull(end, 'Century', 'end');
    BuiltValueNullFieldError.checkNotNull(overview, 'Century', 'overview');
  }

  @override
  Century rebuild(void Function(CenturyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CenturyBuilder toBuilder() => new CenturyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Century &&
        start == other.start &&
        end == other.end &&
        overview == other.overview;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, start.hashCode), end.hashCode), overview.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Century')
          ..add('start', start)
          ..add('end', end)
          ..add('overview', overview))
        .toString();
  }
}

class CenturyBuilder implements Builder<Century, CenturyBuilder> {
  _$Century? _$v;

  int? _start;
  int? get start => _$this._start;
  set start(int? start) => _$this._start = start;

  int? _end;
  int? get end => _$this._end;
  set end(int? end) => _$this._end = end;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  CenturyBuilder();

  CenturyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _overview = $v.overview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Century other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Century;
  }

  @override
  void update(void Function(CenturyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Century build() {
    final _$result = _$v ??
        new _$Century._(
            start: BuiltValueNullFieldError.checkNotNull(
                start, 'Century', 'start'),
            end: BuiltValueNullFieldError.checkNotNull(end, 'Century', 'end'),
            overview: BuiltValueNullFieldError.checkNotNull(
                overview, 'Century', 'overview'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
