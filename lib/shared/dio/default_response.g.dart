// GENERATED CODE - DO NOT MODIFY BY HAND

part of default_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefaultRes> _$defaultResSerializer = new _$DefaultResSerializer();

class _$DefaultResSerializer implements StructuredSerializer<DefaultRes> {
  @override
  final Iterable<Type> types = const [DefaultRes, _$DefaultRes];
  @override
  final String wireName = 'DefaultRes';

  @override
  Iterable<Object?> serialize(Serializers serializers, DefaultRes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    return result;
  }

  @override
  DefaultRes deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefaultResBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DefaultRes extends DefaultRes {
  @override
  final Map<String, dynamic>? data;

  factory _$DefaultRes([void Function(DefaultResBuilder)? updates]) =>
      (new DefaultResBuilder()..update(updates)).build();

  _$DefaultRes._({this.data}) : super._();

  @override
  DefaultRes rebuild(void Function(DefaultResBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultResBuilder toBuilder() => new DefaultResBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultRes && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DefaultRes')..add('data', data))
        .toString();
  }
}

class DefaultResBuilder implements Builder<DefaultRes, DefaultResBuilder> {
  _$DefaultRes? _$v;

  Map<String, dynamic>? _data;
  Map<String, dynamic>? get data => _$this._data;
  set data(Map<String, dynamic>? data) => _$this._data = data;

  DefaultResBuilder();

  DefaultResBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultRes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultRes;
  }

  @override
  void update(void Function(DefaultResBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DefaultRes build() {
    final _$result = _$v ?? new _$DefaultRes._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
