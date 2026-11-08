---
year: 2024
title: "PhotoOdyssey - Compare photos"
personal: true
app: "PhotoOdyssey"
stack:
  - "SwiftUI"
  - "SwiftData"
  - "StoreKit"
  - "Vision"
  - "Xcode Cloud"
---

Apple Vision Pro ならではのアプリケーションとして、イマーシブな空間に大量の写真を並べ、比較できるアプリケーションを開発しました。

写真ライブラリから写真を読み込む機能と、ユーザが選択した写真を所定のアルバムに追加する機能があります。

また、Vision フレームワークの[ImageAestheticsScoresObservation](https://developer.apple.com/documentation/vision/imageaestheticsscoresobservation)を利用して写真の美的スコアを可視化することで、より良い写真の選択をサポートします。

<details>
<summary>開発思想</summary>

Apple Vision Pro の特徴の一つとして、イマーシブな空間があります。
これにより、従来のディスプレイでは実現できない大きさでコンテンツを閲覧できますが、映画の視聴などのコンテンツ消費に留まっていると感じました。（2024 年 10 月現在）

ですが、イマーシブな空間を用いた空間コンピューティングはコンテンツ消費に留まらず、生産的な活動にも利用できるはずです。

そこで、"大きくコンテンツを閲覧できる"という点に着目し、写真の閲覧と選定が行えるアプリケーションを開発しました。

</details>
