// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'main.dart';

class AMapper extends ClassMapperBase<A> {
  static final AMapper instance = AMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance)
  ..linkAll({BMapper.container});

  @override
  String get id => 'A';

  static IList<B> _$list(A v) => v.list;

  @override
  final Map<Symbol, Field<A, dynamic>> fields = const {
    #list: Field<A, IList<B>>('list', _$list),
  };

  static A _instantiate(DecodingData data) {
    return A(data.get(#list));
  }
  @override
  final Function instantiate = _instantiate;

  static final fromMap = container.fromMap<A>;
  static final fromJson = container.fromJson<A>;
}

mixin AMappable {
  String toJson() => AMapper.container.toJson(this as A);
  Map<String, dynamic> toMap() => AMapper.container.toMap(this as A);
  ACopyWith<A, A, A> get copyWith => _ACopyWithImpl(this as A, $identity, $identity);
  @override String toString() => AMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && AMapper.container.isEqual(this, other));
  @override int get hashCode => AMapper.container.hash(this);
}

extension AValueCopy<$R, $Out extends A> on ObjectCopyWith<$R, A, $Out> {
  ACopyWith<$R, A, $Out> get asA => base.as((v, t, t2) => _ACopyWithImpl(v, t, t2));
}

typedef ACopyWithBound = A;
abstract class ACopyWith<$R, $In extends A, $Out extends A> implements ObjectCopyWith<$R, $In, $Out> {
  ACopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends A>(Then<A, $Out2> t, Then<$Out2, $R2> t2);
  $R call({IList<B>? list});
}

class _ACopyWithImpl<$R, $Out extends A> extends CopyWithBase<$R, A, $Out> implements ACopyWith<$R, A, $Out> {
  _ACopyWithImpl(super.value, super.then, super.then2);
  @override ACopyWith<$R2, A, $Out2> chain<$R2, $Out2 extends A>(Then<A, $Out2> t, Then<$Out2, $R2> t2) => _ACopyWithImpl($value, t, t2);

  @override $R call({IList<B>? list}) => $then(A(list ?? $value.list));
}

class BMapper extends ClassMapperBase<B> {
  static final BMapper instance = BMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance);

  @override
  String get id => 'B';

  static String _$str(B v) => v.str;

  @override
  final Map<Symbol, Field<B, dynamic>> fields = const {
    #str: Field<B, String>('str', _$str),
  };

  static B _instantiate(DecodingData data) {
    return B(data.get(#str));
  }
  @override
  final Function instantiate = _instantiate;

  static final fromMap = container.fromMap<B>;
  static final fromJson = container.fromJson<B>;
}

mixin BMappable {
  String toJson() => BMapper.container.toJson(this as B);
  Map<String, dynamic> toMap() => BMapper.container.toMap(this as B);
  BCopyWith<B, B, B> get copyWith => _BCopyWithImpl(this as B, $identity, $identity);
  @override String toString() => BMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && BMapper.container.isEqual(this, other));
  @override int get hashCode => BMapper.container.hash(this);
}

extension BValueCopy<$R, $Out extends B> on ObjectCopyWith<$R, B, $Out> {
  BCopyWith<$R, B, $Out> get asB => base.as((v, t, t2) => _BCopyWithImpl(v, t, t2));
}

typedef BCopyWithBound = B;
abstract class BCopyWith<$R, $In extends B, $Out extends B> implements ObjectCopyWith<$R, $In, $Out> {
  BCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends B>(Then<B, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? str});
}

class _BCopyWithImpl<$R, $Out extends B> extends CopyWithBase<$R, B, $Out> implements BCopyWith<$R, B, $Out> {
  _BCopyWithImpl(super.value, super.then, super.then2);
  @override BCopyWith<$R2, B, $Out2> chain<$R2, $Out2 extends B>(Then<B, $Out2> t, Then<$Out2, $R2> t2) => _BCopyWithImpl($value, t, t2);

  @override $R call({String? str}) => $then(B(str ?? $value.str));
}
