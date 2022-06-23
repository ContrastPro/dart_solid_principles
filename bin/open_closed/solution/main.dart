void main() {
  //const _Tesla auto = _Tesla();
  const _Audi auto = _Audi();

  final String price = _getPrice(auto);
  final String color = _getColor(auto);

  print(auto.getCarModel());
  print(price);
  print(color);
}

String _getPrice(_CarPrice carPrice) {
  final String price = carPrice.getPrice();
  return 'Price: $price';
}

String _getColor(_CarColor carColor) {
  final String color = carColor.getColor();
  return 'Color: $color';
}

enum _AutoModel { tesla, audi }

abstract class _CarPrice {
  String getPrice();
}

abstract class _CarColor {
  String getColor();
}

class _Tesla implements _CarPrice, _CarColor {
  const _Tesla();

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

class _Audi implements _CarPrice, _CarColor {
  const _Audi();

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
