---
og_url: https://kingu.dev
og_image: https://kingu.dev/images/ogp.webp
---

# 技術スタック

お仕事のご相談は `kanagu@kingu.dev` までご連絡ください。

## 個人開発等

### 雨雲ウォッチ mini / Rainfall Watch mini

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

### MolcarTracking

Apple Vision Pro を用いてキャラクターのフィギュアを検出し、空間上に情報の表示やハンドトラッキング、物理シミュレーションするデモアプリケーションを開発しました。

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">へーこれがDJモルカーとタラコかぁ〜<a href="https://twitter.com/hashtag/%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#モルカー</a> <a href="https://twitter.com/hashtag/PUIPUI%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#PUIPUIモルカー</a> <a href="https://twitter.com/hashtag/AppleVisionPro?src=hash&amp;ref_src=twsrc%5Etfw">#AppleVisionPro</a> <a href="https://t.co/VbCzTeMCOM">pic.twitter.com/VbCzTeMCOM</a></p>&mdash; kingu (@i_am_kingu_pub) <a href="https://twitter.com/i_am_kingu_pub/status/1824003841127539019?ref_src=twsrc%5Etfw">August 15, 2024</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">DJDJDJDJDJDJDJDJDJDJDJDJタラコタラコタラコタラコタラコタラコタラコタラコタラコタラコ<a href="https://twitter.com/hashtag/%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#モルカー</a> <a href="https://twitter.com/hashtag/PUIPUI%E3%83%A2%E3%83%AB%E3%82%AB%E3%83%BC?src=hash&amp;ref_src=twsrc%5Etfw">#PUIPUIモルカー</a> <a href="https://twitter.com/hashtag/AppleVisionPro?src=hash&amp;ref_src=twsrc%5Etfw">#AppleVisionPro</a> <a href="https://t.co/rHWGFtLrlm">pic.twitter.com/rHWGFtLrlm</a></p>&mdash; kingu (@i_am_kingu_pub) <a href="https://twitter.com/i_am_kingu_pub/status/1824407670629261365?ref_src=twsrc%5Etfw">August 16, 2024</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

- SwiftUI
- SwiftData
- RealityKit
- ARKit
- Create ML
- Object Tracking

### [アクスタ / AcrylicStand](./apps/AcrylicStand)

Apple Vision Pro ならではのアプリケーションとして、アクリルスタンドのように空間上に写真を配置できるアプリケーションを開発しました。

- SwiftUI
- SwiftData
- CloudKit
- RealityKit
- VisionKit
- Xcode Cloud

### [100 時間の法則 / 100-Hour Rule](./apps/100-Hour%20Rule)

経過時間を記録するアプリケーションを開発しました。

SwiftUI を用いたアプリケーションとして、iOS、iPadOS、watchOS、macOS、visionOS をサポートしました。

- SwiftUI
- SwiftData
- CloudKit
- Xcode Cloud

### [#お弁当記録 / #obento](./apps/obento)

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

### [場所で音楽 / Locamusic](./apps/locamusic)

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

## 立命館大学にて、Wi-Fi・BLE ビーコン・位置情報などのセンサデータ収集システムと Android 向けクライアントアプリケーション開発に従事

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

## 立命館大学にて、防災関連の Android 向けアプリケーションを最新の Android SDK に対応させる作業に従事

Android API Level 21 のアプリケーションを API Level 34 に対応させました。

また、プッシュ通知の仕組みを Firebase Cloud Messaging に変更するにあたり、Cloud Functions を用いて通知の送信行うように改修しました。

- Java
- Firebase
  - Cloud Functions

## ヘルスケア系スタートアップの起業メンバーとして、iOS/Android 向けのアプリケーションの開発・保守・運用などに従事

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

## 立命館大学にて、チェックインアプリの移植・保守・運用に従事

- Flutter
- Firebase Authentication
- Python
- PostgreSQL

## IoT デバイス系のベンチャー企業にて、iOS/Android 向けのアプリケーションの開発・保守・運用に従事

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

## ヤフー株式会社にて、広告入稿 API の開発・保守・運用に従事

- Java
- Spring Boot

## 立命館大学にて、屋内測位・Wi-Fi ログの収集・ナビゲーションシステムの構築と iOS/Android 向けアプリケーション開発に従事

- Java
  - Spring Boot
  - JavaFX
- Objective-C
- Swift
- Parse
- MongoDB
- Docker
