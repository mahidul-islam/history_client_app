// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopicList> _$topicListSerializer = new _$TopicListSerializer();
Serializer<Topic> _$topicSerializer = new _$TopicSerializer();

class _$TopicListSerializer implements StructuredSerializer<TopicList> {
  @override
  final Iterable<Type> types = const [TopicList, _$TopicList];
  @override
  final String wireName = 'TopicList';

  @override
  Iterable<Object?> serialize(Serializers serializers, TopicList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'topics',
      serializers.serialize(object.topics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Topic)])),
    ];

    return result;
  }

  @override
  TopicList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Topic)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopicSerializer implements StructuredSerializer<Topic> {
  @override
  final Iterable<Type> types = const [Topic, _$Topic];
  @override
  final String wireName = 'Topic';

  @override
  Iterable<Object?> serialize(Serializers serializers, Topic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'start',
      serializers.serialize(object.start, specifiedType: const FullType(int)),
      'end',
      serializers.serialize(object.end, specifiedType: const FullType(int)),
      'eventCount',
      serializers.serialize(object.eventCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Topic deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'eventCount':
          result.eventCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TopicList extends TopicList {
  @override
  final int count;
  @override
  final BuiltList<Topic> topics;

  factory _$TopicList([void Function(TopicListBuilder)? updates]) =>
      (new TopicListBuilder()..update(updates)).build();

  _$TopicList._({required this.count, required this.topics}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'TopicList', 'count');
    BuiltValueNullFieldError.checkNotNull(topics, 'TopicList', 'topics');
  }

  @override
  TopicList rebuild(void Function(TopicListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicListBuilder toBuilder() => new TopicListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopicList && count == other.count && topics == other.topics;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), topics.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopicList')
          ..add('count', count)
          ..add('topics', topics))
        .toString();
  }
}

class TopicListBuilder implements Builder<TopicList, TopicListBuilder> {
  _$TopicList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<Topic>? _topics;
  ListBuilder<Topic> get topics => _$this._topics ??= new ListBuilder<Topic>();
  set topics(ListBuilder<Topic>? topics) => _$this._topics = topics;

  TopicListBuilder();

  TopicListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _topics = $v.topics.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopicList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopicList;
  }

  @override
  void update(void Function(TopicListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopicList build() {
    _$TopicList _$result;
    try {
      _$result = _$v ??
          new _$TopicList._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'TopicList', 'count'),
              topics: topics.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topics';
        topics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopicList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Topic extends Topic {
  @override
  final String name;
  @override
  final int start;
  @override
  final int end;
  @override
  final int eventCount;

  factory _$Topic([void Function(TopicBuilder)? updates]) =>
      (new TopicBuilder()..update(updates)).build();

  _$Topic._(
      {required this.name,
      required this.start,
      required this.end,
      required this.eventCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Topic', 'name');
    BuiltValueNullFieldError.checkNotNull(start, 'Topic', 'start');
    BuiltValueNullFieldError.checkNotNull(end, 'Topic', 'end');
    BuiltValueNullFieldError.checkNotNull(eventCount, 'Topic', 'eventCount');
  }

  @override
  Topic rebuild(void Function(TopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicBuilder toBuilder() => new TopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Topic &&
        name == other.name &&
        start == other.start &&
        end == other.end &&
        eventCount == other.eventCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), start.hashCode), end.hashCode),
        eventCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Topic')
          ..add('name', name)
          ..add('start', start)
          ..add('end', end)
          ..add('eventCount', eventCount))
        .toString();
  }
}

class TopicBuilder implements Builder<Topic, TopicBuilder> {
  _$Topic? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _start;
  int? get start => _$this._start;
  set start(int? start) => _$this._start = start;

  int? _end;
  int? get end => _$this._end;
  set end(int? end) => _$this._end = end;

  int? _eventCount;
  int? get eventCount => _$this._eventCount;
  set eventCount(int? eventCount) => _$this._eventCount = eventCount;

  TopicBuilder();

  TopicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _start = $v.start;
      _end = $v.end;
      _eventCount = $v.eventCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Topic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Topic;
  }

  @override
  void update(void Function(TopicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Topic build() {
    final _$result = _$v ??
        new _$Topic._(
            name: BuiltValueNullFieldError.checkNotNull(name, 'Topic', 'name'),
            start:
                BuiltValueNullFieldError.checkNotNull(start, 'Topic', 'start'),
            end: BuiltValueNullFieldError.checkNotNull(end, 'Topic', 'end'),
            eventCount: BuiltValueNullFieldError.checkNotNull(
                eventCount, 'Topic', 'eventCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
