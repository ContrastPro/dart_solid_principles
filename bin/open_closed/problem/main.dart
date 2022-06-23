void main() {
  const _Auto auto = _Auto(
    model: _AutoModel.audi,
  );

  final String price = _getPrice(auto);
  final String color = _getColor(auto);

  print(auto.getCarModel());
  print(price);
  print(color);
}

String _getPrice(_Auto auto) {
  String price = 'No Auto Price';

  switch (auto.model) {
    case _AutoModel.tesla:
      price = '80 000\$';
      break;
    case _AutoModel.audi:
      price = '50 000\$';
      break;
  }

  return price;
}

String _getColor(_Auto auto) {
  String color = 'Black';

  switch (auto.model) {
    case _AutoModel.tesla:
      color = 'White';
      break;
    case _AutoModel.audi:
      color = 'Red';
      break;
  }

  return color;
}

enum _AutoModel { tesla, audi }

class _Auto {
  const _Auto({
    required this.model,
  });

  final _AutoModel model;

  String getCarModel() {
    return model.name;
  }
}
