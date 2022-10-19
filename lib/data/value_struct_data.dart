class LimitValue {
  String name;
  int value;
  String type;
  LimitValue(this.name, this.value, this.type);

  Map toJson() => {'name': name, 'values': valuesToJson()};
  Map valuesToJson() => {'value': value, 'type': type};
}
