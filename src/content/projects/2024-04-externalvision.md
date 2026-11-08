---
year: 2024
title: "ExternalVision"
personal: true
app: "ExternalVision"
stack:
  - "SwiftUI"
  - "SwiftData"
  - "StoreKit"
  - "Multipeer Connectivity"
  - "VisionKit"
  - "Xcode Cloud"
---

Apple Vision Pro ならではのアプリケーションとして、パススルーを使用して実世界を見ながら紙に書かれたテキストや QR コードを読み取れるアプリケーションを開発しました。

Apple Vision Pro のアプリは、通常の用途ではメインカメラにアクセスできないため、iPhone または iPad のカメラからの映像を Apple Vision Pro に送信し、テキストや QR コードを検出しています。

<details>
<summary>開発思想</summary>

Apple Vision Pro の制限を解消する手段としてこのアプリケーションを開発しました。

Apple Vision Pro のハードウェア、ソフトウェアはメインカメラからの映像をリアルタイムに処理しているため、当然ながら目の前にあるテキストや QR コードを読み取ることはできるはずです。
しかし、プライバシーの観点からメインカメラへのアクセスはエンタープライズを除き、厳しく制限されています。

肉眼では目の前にあるテキストをコピーしたり QR コードを読み取るといったことはできませんが、Apple Vision Pro を装着することでこれが実現できれば、電脳コイルや攻殻機動隊のような SF 作品に登場するような未来感を味わえるのではないかと考えました。

ですが前述のようにメインカメラへのアクセスは制限されているため、ワークアラウンドとして iPhone のカメラを使う方法で問題の解決を図りました。

</details>
