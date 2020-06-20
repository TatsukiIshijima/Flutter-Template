# Flutter Template

Flutter project template.

### 概要
Flutter プロジェクトのテンプレート。主に以下内容を設定済み

- 静的解析
- 開発環境分け（Development, Staging, Production）
- 難読化（Android）
- ローカライズ

### 使い方
リポジトリをダウンロード後、git を削除し、プロジェクト名を変更して使用することを想定

#### Flutter プロジェクト名変更方法

1. pubspec.yaml の name を変更（pub get 実行）
2. プロジェクトをリネーム
3. プロジェクトを閉じ、Finder 等からFlutter のプロジェクトフォルダをリネーム
4. Import している部分のパスを修正（パッケージ名を変更したため）
5. Android の AndroidManifest.xml で package名を変更（パッケージ名を変更したため）
6. Android の app -> build.gradle の ApplicationID を変更（パッケージ名を変更したため）
7. Android src 配下の該当パッケージ名を変更（パッケージ名を変更したため）
8. iOS の info.plist の CBBundleName を変更（パッケージ名を変更したため）

- android 配下の .iml がリネームできずに残るが普通にリネームしてOK
- iOS では xcconfig 内に Product_Bundle_Identifier で Bundle ID、Display_Name でアプリ名を指定しているので、プロジェクト名の変更に伴いこの辺りも変更する

#### Android でアプリ名を変更する場合
* android -> app -> src -> flavor名 -> res -> values -> string.xml にアプリ名の文字列があるので変更

#### iOS でアプリ名を変更する場合
* ios -> Flutter -> flavor名.xcconfig に Display_Name を指定しているので変更

#### Pod の設定
iOS でライブラリの追加で Podfile が作成された際は Configuration に応じて以下のような設定を追加する

```
project 'Runner', {
  'Debug' => :debug,
  'Debug-Development' => :debug,
  'Debug-Stating' => :debug,
  'Debug-Production' => :debug,
  'Profile' => :release,
  'Release' => :release,
  'Release-Development' => :release,
  'Release-Staging' => :release,
  'Release-Production' => :release
}
```

### ビルド方法
#### 例：Android
`--obfuscate` は難読化のためのオプション

```
flutter build [appbundle or apk] --obfuscate --split-debug-info="~/." --[debug or release] --flavor [development or staging or production]
```

#### 例：iOS
`--no-codesign` は署名なしのためのオプション

```
flutter build ios --[debug or release] --flavor [development or staging or production] --no-codesign
```
