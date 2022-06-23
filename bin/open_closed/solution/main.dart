void main() {
  //const Tesla auto = Tesla();
  const Audi auto = Audi();

  final String price = _getPrice(auto);
  final String color = _getColor(auto);

  print(auto.getCarModel());
  print(price);
  print(color);
}

String _getPrice(CarPrice carPrice) {
  final String price = carPrice.getPrice();
  return 'Price: $price';
}

String _getColor(_CarColor carColor) {
  final String color = carColor.getColor();
  return 'Color: $color';
}

enum _AutoModel { tesla, audi }

abstract class CarPrice {
  String getPrice();
}

abstract class _CarColor {
  String getColor();
}

class Tesla implements CarPrice, _CarColor {
  const Tesla();

  @override
  String getPrice() {
    return '80 000\$';
  }

  @override
  String getColor() {
    return 'White';
  }

  String getCarModel() {
    return 'Car model: ${_AutoModel.tesla.name}';
  }
}

class Audi implements CarPrice, _CarColor {
  const Audi();

  @override
  String getPrice() {
    return '50 000\$';
  }

  @override
  String getColor() {
    return 'Red';
  }

  String getCarModel() {
    return 'Car model: ${_AutoModel.audi.name}';
  }
}
