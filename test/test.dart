import 'package:test/test.dart';

import 'models/model.dart';
import 'test.mapper.g.dart';

void main() {
  group('basic decoding / encoding', () {
    late Person person;

    setUp(() {
      person = Person('Max', car: const Car(1000, Brand.Audi));
    });

    test('Decode from json', () {
      String personJson =
          '{"name": "Max", "car": {"driven_km": 1000, "brand": "audi"}}';
      Person person1 = Mapper.fromJson(personJson);
      expect(person1, equals(person));
    });

    test('Decode from map', () {
      var map = {
        'name': 'Max',
        'age': 18,
        'car': {'driven_km': 1000, 'brand': 'audi'}
      };

      Person person1 = Person.fromMap(map);
      expect(person1, equals(person));
    });

    test('Encode to map', () {
      Map<String, dynamic> map = person.toMap();
      expect(
          map,
          equals({
            'name': 'Max',
            'age': 18,
            'car': {'driven_km': 1000, 'brand': 'audi'}
          }));
    });

    test('Encode to json', () {
      expect(
          person.toJson(),
          equals(
              '{"name":"Max","age":18,"car":{"driven_km":1000,"brand":"audi"}}'));
    });
  });

  group('Mapper functions', () {
    test('Test copyWith', () {
      var person1 = Person('Max', age: 19, car: const Car(100, Brand.Audi));
      var person2 = person1.copyWith(name: 'Anna', age: 20);
      expect(person2.name, equals('Anna'));
      expect(person2.age, equals(20));
      expect(person2.car, equals(person1.car));
    });

    test('Mapper functions', () {
      var person1 = Person('Max', car: const Car(1000, Brand.Audi));
      var person2 = Person('Max', car: const Car(1000, Brand.Audi));

      // optionally use Mapper functions
      expect(Mapper.isEqual(person1, person2), equals(true));
      expect(
          Mapper.asString(person1),
          equals(
              'Person(name: Max, age: 18, car: Car(miles: 620.0, brand: Brand.Audi))'));
    });
  });

  group('Generics', () {
    test('Generic objects', () {
      Box<Confetti> box = Box(10, content: Confetti('Rainbow'));
      String boxJson = box.toJson();
      expect(
          boxJson,
          equals(
              '{"size":10,"content":{"color":"Rainbow"},"__type":"Box<Confetti>"}'));

      dynamic whatAmI = Mapper.fromJson(boxJson);
      expect(whatAmI.runtimeType.toString(), equals('Box<Confetti>'));
    });
  });

  group('Iterables', () {
    test('Decode list', () {
      List<int> numbers = Mapper.fromJson('[2, 4, 105]');
      expect(numbers, equals([2, 4, 105]));
    });
  });
}
