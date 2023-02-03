// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'main.dart';

class PersonMapper extends ClassMapperBase<Person> {
  static final PersonMapper instance = PersonMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance)
  ..linkAll({CarMapper.container});

  @override
  String get id => 'Person';

  static String _$name(Person v) => v.name;
  static int _$age(Person v) => v.age;
  static Car? _$car(Person v) => v.car;

  @override
  final Map<Symbol, Field<Person, dynamic>> fields = const {
    #name: Field<Person, String>('name', _$name),
    #age: Field<Person, int>('age', _$age, opt: true, def: 18),
    #car: Field<Person, Car?>('car', _$car, opt: true),
  };

  static Person _instantiate(DecodingData data) {
    return Person(data.get(#name), age: data.get(#age), car: data.get(#car));
  }
  @override
  final Function instantiate = _instantiate;

  static final fromMap = container.fromMap<Person>;
  static final fromJson = container.fromJson<Person>;
}

mixin PersonMappable {
  String toJson() => PersonMapper.container.toJson(this as Person);
  Map<String, dynamic> toMap() => PersonMapper.container.toMap(this as Person);
  PersonCopyWith<Person, Person, Person> get copyWith => _PersonCopyWithImpl(this as Person, $identity, $identity);
  @override String toString() => PersonMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && PersonMapper.container.isEqual(this, other));
  @override int get hashCode => PersonMapper.container.hash(this);
}

extension PersonValueCopy<$R, $Out extends Person> on ObjectCopyWith<$R, Person, $Out> {
  PersonCopyWith<$R, Person, $Out> get asPerson => base.as((v, t, t2) => _PersonCopyWithImpl(v, t, t2));
}

typedef PersonCopyWithBound = Person;
abstract class PersonCopyWith<$R, $In extends Person, $Out extends Person> implements ObjectCopyWith<$R, $In, $Out> {
  PersonCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Person>(Then<Person, $Out2> t, Then<$Out2, $R2> t2);
  CarCopyWith<$R, Car, Car>? get car;
  $R call({String? name, int? age, Car? car});
}

class _PersonCopyWithImpl<$R, $Out extends Person> extends CopyWithBase<$R, Person, $Out> implements PersonCopyWith<$R, Person, $Out> {
  _PersonCopyWithImpl(super.value, super.then, super.then2);
  @override PersonCopyWith<$R2, Person, $Out2> chain<$R2, $Out2 extends Person>(Then<Person, $Out2> t, Then<$Out2, $R2> t2) => _PersonCopyWithImpl($value, t, t2);

  @override CarCopyWith<$R, Car, Car>? get car => $value.car?.copyWith.chain($identity, (v) => call(car: v));
  @override $R call({String? name, int? age, Object? car = $none}) => $then(Person(name ?? $value.name, age: age ?? $value.age, car: or(car, $value.car)));
}

class CarMapper extends ClassMapperBase<Car> {
  static final CarMapper instance = CarMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance)
  ..linkAll({BrandMapper.container});

  @override
  String get id => 'Car';

  static double _$miles(Car v) => v.miles;
  static Brand _$brand(Car v) => v.brand;

  @override
  final Map<Symbol, Field<Car, dynamic>> fields = const {
    #miles: Field<Car, double>('miles', _$miles),
    #brand: Field<Car, Brand>('brand', _$brand),
  };

  static Car _instantiate(DecodingData data) {
    return Car(data.get(#miles), data.get(#brand));
  }
  @override
  final Function instantiate = _instantiate;

  static final fromMap = container.fromMap<Car>;
  static final fromJson = container.fromJson<Car>;
}

mixin CarMappable {
  String toJson() => CarMapper.container.toJson(this as Car);
  Map<String, dynamic> toMap() => CarMapper.container.toMap(this as Car);
  CarCopyWith<Car, Car, Car> get copyWith => _CarCopyWithImpl(this as Car, $identity, $identity);
  @override String toString() => CarMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && CarMapper.container.isEqual(this, other));
  @override int get hashCode => CarMapper.container.hash(this);
}

extension CarValueCopy<$R, $Out extends Car> on ObjectCopyWith<$R, Car, $Out> {
  CarCopyWith<$R, Car, $Out> get asCar => base.as((v, t, t2) => _CarCopyWithImpl(v, t, t2));
}

typedef CarCopyWithBound = Car;
abstract class CarCopyWith<$R, $In extends Car, $Out extends Car> implements ObjectCopyWith<$R, $In, $Out> {
  CarCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Car>(Then<Car, $Out2> t, Then<$Out2, $R2> t2);
  $R call({double? miles, Brand? brand});
}

class _CarCopyWithImpl<$R, $Out extends Car> extends CopyWithBase<$R, Car, $Out> implements CarCopyWith<$R, Car, $Out> {
  _CarCopyWithImpl(super.value, super.then, super.then2);
  @override CarCopyWith<$R2, Car, $Out2> chain<$R2, $Out2 extends Car>(Then<Car, $Out2> t, Then<$Out2, $R2> t2) => _CarCopyWithImpl($value, t, t2);

  @override $R call({double? miles, Brand? brand}) => $then(Car(miles ?? $value.miles, brand ?? $value.brand));
}

class BoxMapper extends ClassMapperBase<Box> {
  static final BoxMapper instance = BoxMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance);

  @override
  String get id => 'Box';
  @override
  Function get typeFactory => <T>(f) => f<Box<T>>();

  static int _$size(Box v) => v.size;
  static dynamic _$content(Box v) => v.content;
  static dynamic _arg$content<T>(f) => f<T>();

  @override
  final Map<Symbol, Field<Box, dynamic>> fields = const {
    #size: Field<Box, int>('size', _$size),
    #content: Field<Box, dynamic>('content', _$content, arg: _arg$content),
  };

  static Box<T> _instantiate<T>(DecodingData data) {
    return Box(data.get(#size), content: data.get(#content));
  }
  @override
  final Function instantiate = _instantiate;

  static Box<T> fromMap<T>(Map<String, dynamic> map) => container.fromMap<Box<T>>(map);
  static Box<T> fromJson<T>(String json) => container.fromJson<Box<T>>(json);
}

mixin BoxMappable<T> {
  String toJson() => BoxMapper.container.toJson(this as Box<T>);
  Map<String, dynamic> toMap() => BoxMapper.container.toMap(this as Box<T>);
  BoxCopyWith<Box<T>, Box<T>, Box<T>, T> get copyWith => _BoxCopyWithImpl(this as Box<T>, $identity, $identity);
  @override String toString() => BoxMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && BoxMapper.container.isEqual(this, other));
  @override int get hashCode => BoxMapper.container.hash(this);
}

extension BoxValueCopy<$R, $Out extends Box, T> on ObjectCopyWith<$R, Box<T>, $Out> {
  BoxCopyWith<$R, Box<T>, $Out, T> get asBox => base.as((v, t, t2) => _BoxCopyWithImpl(v, t, t2));
}

typedef BoxCopyWithBound = Box;
abstract class BoxCopyWith<$R, $In extends Box<T>, $Out extends Box, T> implements ObjectCopyWith<$R, $In, $Out> {
  BoxCopyWith<$R2, $In, $Out2, T> chain<$R2, $Out2 extends Box>(Then<Box<T>, $Out2> t, Then<$Out2, $R2> t2);
  $R call({int? size, T? content});
}

class _BoxCopyWithImpl<$R, $Out extends Box, T> extends CopyWithBase<$R, Box<T>, $Out> implements BoxCopyWith<$R, Box<T>, $Out, T> {
  _BoxCopyWithImpl(super.value, super.then, super.then2);
  @override BoxCopyWith<$R2, Box<T>, $Out2, T> chain<$R2, $Out2 extends Box>(Then<Box<T>, $Out2> t, Then<$Out2, $R2> t2) => _BoxCopyWithImpl($value, t, t2);

  @override $R call({int? size, T? content}) => $then(Box(size ?? $value.size, content: content ?? $value.content));
}

class ConfettiMapper extends ClassMapperBase<Confetti> {
  static final ConfettiMapper instance = ConfettiMapper();
  static final MapperContainer container = MapperContainer()
  ..use(instance);

  @override
  String get id => 'Confetti';

  static String _$color(Confetti v) => v.color;

  @override
  final Map<Symbol, Field<Confetti, dynamic>> fields = const {
    #color: Field<Confetti, String>('color', _$color),
  };

  static Confetti _instantiate(DecodingData data) {
    return Confetti(data.get(#color));
  }
  @override
  final Function instantiate = _instantiate;

  static final fromMap = container.fromMap<Confetti>;
  static final fromJson = container.fromJson<Confetti>;
}

mixin ConfettiMappable {
  String toJson() => ConfettiMapper.container.toJson(this as Confetti);
  Map<String, dynamic> toMap() => ConfettiMapper.container.toMap(this as Confetti);
  ConfettiCopyWith<Confetti, Confetti, Confetti> get copyWith => _ConfettiCopyWithImpl(this as Confetti, $identity, $identity);
  @override String toString() => ConfettiMapper.container.asString(this);
  @override bool operator ==(Object other) => identical(this, other) || (runtimeType == other.runtimeType && ConfettiMapper.container.isEqual(this, other));
  @override int get hashCode => ConfettiMapper.container.hash(this);
}

extension ConfettiValueCopy<$R, $Out extends Confetti> on ObjectCopyWith<$R, Confetti, $Out> {
  ConfettiCopyWith<$R, Confetti, $Out> get asConfetti => base.as((v, t, t2) => _ConfettiCopyWithImpl(v, t, t2));
}

typedef ConfettiCopyWithBound = Confetti;
abstract class ConfettiCopyWith<$R, $In extends Confetti, $Out extends Confetti> implements ObjectCopyWith<$R, $In, $Out> {
  ConfettiCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Confetti>(Then<Confetti, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? color});
}

class _ConfettiCopyWithImpl<$R, $Out extends Confetti> extends CopyWithBase<$R, Confetti, $Out> implements ConfettiCopyWith<$R, Confetti, $Out> {
  _ConfettiCopyWithImpl(super.value, super.then, super.then2);
  @override ConfettiCopyWith<$R2, Confetti, $Out2> chain<$R2, $Out2 extends Confetti>(Then<Confetti, $Out2> t, Then<$Out2, $R2> t2) => _ConfettiCopyWithImpl($value, t, t2);

  @override $R call({String? color}) => $then(Confetti(color ?? $value.color));
}

class BrandMapper extends EnumMapper<Brand> {
  static MapperContainer container = MapperContainer(
    mappers: {BrandMapper()},
  );

  static final fromValue = container.fromValue<Brand>;

  @override
  Brand decode(dynamic value) {
    switch (value) {
      case 'Toyota': return Brand.Toyota;
      case 'Audi': return Brand.Audi;
      case 'BMW': return Brand.BMW;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Brand self) {
    switch (self) {
      case Brand.Toyota: return 'Toyota';
      case Brand.Audi: return 'Audi';
      case Brand.BMW: return 'BMW';
    }
  }
}

extension BrandMapperExtension on Brand {
  String toValue() => BrandMapper.container.toValue(this) as String;
}
