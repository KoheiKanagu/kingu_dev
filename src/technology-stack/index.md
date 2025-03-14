---
og_url: https://kingu.dev
og_image: https://kingu.dev/images/ogp.webp
---

# 過去の開発事例と技術スタック

お仕事のご相談は `kanagu@kingu.dev` までご連絡ください。

各年代はプロジェクト開始時期を示しています。

## 2025 年

### [個人開発] [BLOOMS](../apps/BLOOMS)

妊婦の方が体調や日々の出来事を記録すると生成 AI が感想を述べたり、関連情報が得られるであろう Google での検索キーワードを提案したり、一定の期間にどのような記録があったのかを要約することができる iOS/Web 向けのアプリケーションを開発しました。

[【Zenn 初開催】AI エージェント開発に挑戦！初心者歓迎ハッカソン](https://zenn.dev/hackathons/2024-google-cloud-japan-ai-hackathon) に向けて開発しました。

- Flutter
- Riverpod
- go_router
- freezed
- Firebase Authentication
- Cloud Functions
- Firestore
- Firebase Hosting
- Crashlytics
- GitHub Actions

### 関連記事

- [BLOOMS \- 見つめてみよう。妊婦のあなたの日々の体調](https://zenn.dev/kingu/articles/a36196c5c66171)
- [Flutter と Firebase を使ってアプリを作る上でのテクニックあれこれ](https://zenn.dev/kingu/articles/f122c06a9cc360)

## 2024 年

### 研究データ収集を目的とした、位置情報の記録ととアンケートを実施する iOS/Android 向けアプリケーションの開発に従事

大学様よりの委託を受けて開発しました。

- Flutter
- Riverpod
- go_router
- freezed
- Firebase Authentication
- Crashlytics

### 宅配弁当の比較サイトのバックエンドの開発に従事

企業様より委託を受けて開発しました。

API およびデータベースの設計・開発・保守・運用を行いました。

- Cloud Functions
- TypeScript
- Prisma
- Cloud SQL for PostgreSQL
- GitHub Actions

### [個人開発] [PhotoOdyssey - Compare photos](../apps/PhotoOdyssey)

Apple Vision Pro ならではのアプリケーションとして、イマーシブな空間に大量の写真を並べ、比較することができるアプリケーションを開発しました。

写真ライブラリからの写真の読み込み、ユーザが選択した写真を所定のアルバムに追加する機能があります。

また、 Vision フレームワークの[ImageAestheticsScoresObservation](https://developer.apple.com/documentation/vision/imageaestheticsscoresobservation)を利用して写真の美的スコアを可視化することで、より良い写真の選択をサポートします。

- SwiftUI
- SwiftData
- StoreKit
- Vision
- Xcode Cloud

#### 開発思想

Apple Vision Pro の特徴の一つとして、イマーシブな空間があります。
これにより、従来のディスプレイでは実現できない大きさでコンテンツを閲覧することができますが、映画の視聴などのコンテンツ消費に留まっていると感じました。（2024 年 10 月現在）

ですが、イマーシブな空間を用いた空間コンピューティングはコンテンツ消費に留まらず、生産的な活動にも利用できるはずです。

そこで、"大きくコンテンツを閲覧できる"という点に着目し、写真の閲覧と選定が行えるアプリケーションを開発しました。

### [個人開発] [ExternalVision](../apps/ExternalVision)

Apple Vision Pro ならではのアプリケーションとして、パススルーを使用して実世界を見ながら紙に書かれたテキストや QR コードを読み取ることができるアプリケーションを開発しました。

Apple Vision Pro のアプリは、通常の用途ではメインカメラにアクセスすることができないため、iPhone または iPad のカメラからの映像を Apple Vision Pro に送信し、テキストや QR コードを検出しています。

- SwiftUI
- SwiftData
- StoreKit
- Multipeer Connectivity
- VisionKit
- Xcode Cloud

#### 開発思想

Apple Vision Pro の制限を解消する解決策としてこのアプリケーションを開発しました。

Apple Vision Pro のハードウェア、ソフトウェアはメインカメラからの映像をリアルタイムに処理しているため、当然ながら目の前にあるテキストや QR コードを読み取ることはできるはずです。
しかし、プライバシーの観点からメインカメラへのアクセスはエンタープライズを除き、厳しく制限されています。

肉眼では目の前にあるテキストをコピーしたり QR コードを読み取るといったことはできませんが、Apple Vision Pro を装着することでこれが実現できれば、電脳コイルや攻殻機動隊のような SF 作品に登場するような未来感を感じることができるのではないかと考えました。

ですが前述のようにメインカメラへのアクセスは制限されているため、ワークアラウンドとして iPhone のカメラを使う方法で問題解決にアプローチしました。

### [個人開発] 雨雲ウォッチ mini / Rainfall Watch mini

Apple Vision Pro ならではのアプリケーションとして、地図上に降雨量の表示を試みました。

しかし、効率的・効果的に降雨量を表示することが技術的に難しく、リリースは見送りました。

- SwiftUI
- SwiftData
- Core Data
- CloudKit
- CloudKit JS
- GSMap
- Firebase
  - Cloud Functions
- Xcode Cloud

### [個人開発] MolcarTracking

Apple Vision Pro を用いてキャラクターのフィギュアを検出し、空間上に情報の表示やハンドトラッキング、物理シミュレーションするデモアプリケーションを開発しました。

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">へーこれがDJモルカーとタラコかぁ〜<a href="https://twitter.com/hashtag/%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#モルカー</a> <a href="https://twitter.com/hashtag/PUIPUI%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#PUIPUIモルカー</a> <a href="https://twitter.com/hashtag/AppleVisionPro?src=hash&amp;ref_src=twsrc%5Etfw">#AppleVisionPro</a> <a href="https://t.co/VbCzTeMCOM">pic.twitter.com/VbCzTeMCOM</a></p>&mdash; kingu (@i_am_kingu_pub) <a href="https://twitter.com/i_am_kingu_pub/status/1824003841127539019?ref_src=twsrc%5Etfw">August 15, 2024</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">DJDJDJDJDJDJDJDJDJDJDJDJタラコタラコタラコタラコタラコタラコタラコタラコタラコタラコ<a href="https://twitter.com/hashtag/%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#モルカー</a> <a href="https://twitter.com/hashtag/PUIPUI%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#PUIPUIモルカー</a> <a href="https://twitter.com/hashtag/AppleVisionPro?src=hash&amp;ref_src=twsrc%5Etfw">#AppleVisionPro</a> <a href="https://t.co/rHWGFtLrlm">pic.twitter.com/rHWGFtLrlm</a></p>&mdash; kingu (@i_am_kingu_pub) <a href="https://twitter.com/i_am_kingu_pub/status/1824407670629261365?ref_src=twsrc%5Etfw">August 16, 2024</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

- SwiftUI
- SwiftData
- RealityKit
- ARKit
- Create ML
- Object Tracking

### [個人開発] [アクスタ / AcrylicStand](../apps/AcrylicStand)

Apple Vision Pro ならではのアプリケーションとして、アクリルスタンドのように空間上に写真を配置できるアプリケーションを開発しました。

- SwiftUI
- SwiftData
- CloudKit
- RealityKit
- VisionKit
- Xcode Cloud

#### 開発思想

Apple Vision Pro を用いて配置できるコンテンツは物理的な制限がないため、自由な場所に配置できます。

実物のフォトフレームやフィギュア、アクリルスタンドは配置できる数が限られていますが、Apple Vision Pro を用いることでこの問題を解消し、コンテンツを配置できると面白いのではないかと考えました。

また、パススルーを用いると実世界の適した場所に配置できるため、よりリアルな体験ができると考えました。

### [個人開発] [100 時間の法則 / 100-Hour Rule](../apps/100-Hour%20Rule)

経過時間を記録するアプリケーションを開発しました。

SwiftUI を用いたアプリケーションとして、iOS、iPadOS、watchOS、macOS、visionOS をサポートしました。

- SwiftUI
- SwiftData
- CloudKit
- Xcode Cloud

### [個人開発] [#お弁当記録 / #obento](../apps/obento)

ハッシュタグを管理し、SNS などへ効率的に投稿できるようにするアプリケーションを開発しました。

Melos を用いてモノレポで構成することで、効率良く開発できるように構成しました。
<https://github.com/KoheiKanagu/garage>

- Flutter
  - Riverpod
  - go_router
  - freezed
  - Isar
- Firebase
  - App Check
  - Cloud Firestore
  - Firebase Authentication
  - Cloud Functions
  - Extensions
  - Remote Config
  - Crashlytics
- Melos
- Google Mobile Ads

### チェックインアプリとビル OS の連携におけるゲートウェイアプリケーションの開発に従事

立命館大学様より委託を受けて開発しました。

- TypeScript
- Node.js

### Wi-Fi・BLE ビーコン・位置情報などのセンサデータ収集システムと Android 向けクライアントアプリケーション開発に従事

立命館大学様より委託を受けて開発しました。

- Flutter
  - Riverpod
  - go_router
- Firebase Authentication
- Kotlin
- AltBeacon
- GitHub Actions
- Go
- Python
- Docker
- PostgreSQL

### [個人開発] [場所で音楽 / Locamusic](../apps/locamusic)

ジオフェンスを用いて、特定の場所にいるときに音楽を再生するアプリケーションを開発しました。

Melos を用いてモノレポで構成することで、効率良く開発できるように構成しました。
<https://github.com/KoheiKanagu/garage>

- Flutter
  - Riverpod
  - go_router
  - freezed
- Firebase
  - App Check
  - Cloud Firestore
  - Firebase Authentication
  - Cloud Functions
  - Extensions
  - Remote Config
  - Crashlytics
- Melos
- Google Mobile Ads

### 防災関連の Android 向けアプリケーションを最新の Android SDK に対応させる作業に従事

立命館大学様より委託を受けて開発しました。

Android API Level 21 のアプリケーションを API Level 34 に対応させました。

また、プッシュ通知の仕組みを Firebase Cloud Messaging に変更するにあたり、Cloud Functions を用いて通知の送信行うように改修しました。

- Java
- Firebase
  - Cloud Functions

## 2022 年

### ヘルスケア系スタートアップの起業メンバーとして、iOS/Android 向けのアプリケーションの開発・保守・運用などに従事

スマートフォンのカメラ映像からリアルタイムに野菜を検出し、栄養価を算出するアプリケーションを開発しました。

血液検査の結果などを記録するアプリケーションを開発しました。

食べた物を記録することで栄養価を計算するアプリケーションを開発しました。

- Object Detection
  - YOLOX
  - ncnn
- Python
- Colaboratory
- Flutter
  - Riverpod
  - go_router
  - freezed
- Firebase
  - App Check
  - Cloud Firestore
  - Firebase Authentication
  - Cloud Functions
  - Extensions
  - Remote Config
  - Crashlytics
- Melos
- Algolia
- SendGrid
- BigQuery
- Looker Studio
- RevenueCat
- GitHub Actions

### チェックインアプリの移植・保守・運用に従事

立命館大学様より委託を受けて開発しました。

- Flutter
- Firebase Authentication
- Python
- PostgreSQL

## 2021 年

### キャリア SNS の iOS/Android 向けアプリケーションの開発に従事

企業様より委託を受けて開発しました。

- Flutter

## 2019 年

### IoT デバイス系のベンチャー企業にて、iOS/Android 向けのアプリケーションの開発・保守・運用に従事

- Flutter
  - Provider
- Firebase
  - Cloud Firestore
  - Firebase Authentication
  - Cloud Functions
  - Extensions
  - App Distribution
  - Remote Config
  - Crashlytics
- BigQuery
- GitHub Actions

## 2018 年

### ヤフー株式会社にて、広告入稿 API の開発・保守・運用に従事

- Java
- Spring Boot

### 屋内測位・Wi-Fi ログの収集・ナビゲーションシステムの構築と iOS/Android 向けアプリケーション開発に従事

自身の研究用データ収集ツールとして開発しました。

- Java
  - Spring Boot
  - JavaFX
- Objective-C
- Swift
- Parse
- MongoDB
- Docker
