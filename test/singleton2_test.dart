void main() {
  final f1 = FirebaseFiresotre.instance();
  final f2 = FirebaseFiresotre.instance();
  final f3 = FirebaseFiresotre.instance();
}

class FirebaseFiresotre {
  static FirebaseFiresotre? _intance;

  FirebaseFiresotre._();
  factory FirebaseFiresotre.instance() {
    if (_intance == null) {
      _intance = FirebaseFiresotre._();
    }
    return _intance!;
  }
}
