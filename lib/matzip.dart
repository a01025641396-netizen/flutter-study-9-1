class Matzip {
  // 상호명
  final String name;
  // 주소
  final String address;
  // 평점
  final String rate;

  // 1. 생성자 (Constructor)
  Matzip({required this.name, required this.address, required this.rate});

  // 2. fromJson (JSON 데이터를 객체로 변환)
  Matzip.fromJson(Map<String, dynamic> json)
    : name = json['상호명'],
      address = json['주소'],
      rate = json['평점'];

  // 3. toJson (객체를 JSON 데이터로 변환)
  Map<String, dynamic> toJson() => {'상호명': name, '주소': address, '평점': rate};
}
