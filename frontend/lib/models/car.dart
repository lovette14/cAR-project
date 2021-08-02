class Car{
  final String carid;
  Car({required this.carid});
}

class CarData {
  final String carid;
  final String name;
  final String model;
  final String type;
  final String manufacturer;
  final String year;
  final String arThing;
  final String doorNum;
  final String engine;
  final String externalLink;

  CarData(
      {
        required this.carid,
        required this.name,
        required this.model,
        required this.type,
        required this.manufacturer,
        required this.year,
        required this.arThing,
        required this.doorNum,
        required this.engine,
        required this.externalLink});
}