# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

- 主な読み手: 業務委託での開発を依頼するか検討している企業や大学の担当者。金具 浩平に何ができるか、何を作ってきたかを確かめ、メールで相談するかを決める
- ほかの読み手: 個人開発アプリの利用者。`/apps/<名前>/` でアプリの紹介と問い合わせ先を見て、アプリから張られたプライバシーポリシーと利用規約を読む

## Product Purpose

個人事業主として活動する金具 浩平のポートフォリオと、個人開発アプリの公式ページを兼ねる。受託の相談を受けることと、自作アプリを知ってもらい使ってもらうことの両方を伸ばす。トップでの成功は、発注を検討する人がメールで相談すること。

## Positioning

業務委託での開発（2026 年は法人 2 社と大学 2 校と契約）と、App Store などで公開中の個人開発アプリの両方の実績を持つ開発者。業務でも個人開発でも AI エージェントを使い、ルールとスキルを agent-toolkit にまとめて改善しながら開発している。

## Operating Context

- トップ: 自己紹介、頼める仕事、開発の進め方（AI エージェントでの手順）、最近の開発事例、開発したもの、受賞歴、執筆、SNS、ゲーム
- `/technology-stack/`: 年ごとの開発事例と技術スタック。案件ごとの md（`src/content/projects/`）から作る
- `/apps/<名前>/`: 各アプリの紹介、ストアへのリンク、問い合わせ先
- `/privacy_policy/` と `/terms_of_service/`: アプリから参照される規約
- 問い合わせは、受託は `kanagu@kingu.dev`、アプリは `support@kingu.dev` と GitHub Issues

## Capabilities and Constraints

- Astro の静的ビルドを Firebase Hosting に置く。main へのマージで本番に、PR では alpha チャンネルにデプロイする
- 公開中の URL（各ページ、画像、`app-ads.txt`）は変えない。アプリが規約の URL を参照しているため
- 日本語を主にする。アプリのページは日本語と英語を併記する
- ライトとダークの配色を持ち、ヘッダーのボタンで切り替える
- technology-stack の AI のカードの図は、`.agents/skills/update-ai-diagram` で agent-toolkit の構成に合わせて書き直す

## Evidence on Hand

- 公開中の個人開発アプリ 7 本（`src/data/apps.ts`）と、Apps For Apple Vision・Product Hunt のバッジ
- 受賞歴（2013〜2025 年）、論文、technology-stack の開発事例（2018〜2026 年）
- 手元に無い実績や評価（導入社数、利用者の声、満足度、取引先のロゴなど）は載せない。足りないときは空けて依頼者に聞く

## Product Principles

1. 発注を検討する人が、事例と実績を見てすぐ相談できる道を最短にする
2. 受託の実績と自作アプリの両方を、どちらかに埋もれさせずに見せる
3. 書くのは手元にある事実だけにし、誇張しない
4. アプリの利用者が来たときも、問い合わせ先と規約にすぐ届くようにする
