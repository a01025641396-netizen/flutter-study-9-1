# Freezed 사용법

1. 패키지 추가

```sh

flutter pub add dev:build_runner freezed_annotation dev:freezed
# if using freezed to generate fromJson/toJson, also add:
flutter pub add json_annotation dev:json_serializable
```

2. 클래스 작성 (freezed 문법대로)

3. 코드생성

```sh

```

4. 'gitignore'에서 생성된 파일 안올라가게 추가!
*.freezed.dart
*.g.dart