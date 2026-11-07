---
name: kingu.dev
description: 金具 浩平のポートフォリオと、個人開発アプリの公式ページ
colors:
  accent: "#2f6b5f"
  accent-dark: "#6fb3a3"
  paper: "#fafafa"
  paper-dark: "#141415"
  card: "#ffffff"
  card-dark: "#19191b"
  raised: "#f4f4f5"
  raised-dark: "#232325"
  ink: "#171717"
  ink-dark: "#ededed"
  ink-secondary: "#525252"
  ink-secondary-dark: "#a1a1a6"
  ink-muted: "#6b6b6b"
  ink-muted-dark: "#8e8e94"
  primary-hover: "#333333"
  primary-hover-dark: "#d4d4d4"
  hairline: "rgba(23, 23, 23, 0.08)"
  hairline-dark: "rgba(237, 237, 237, 0.08)"
typography:
  display:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "44px"
    fontWeight: 500
    lineHeight: 1.12
    letterSpacing: "-0.02em"
  headline:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "22px"
    fontWeight: 500
    lineHeight: 1.4
  display-compact:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "36px"
    fontWeight: 500
    lineHeight: 1.15
  title:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "17px"
    fontWeight: 500
    lineHeight: 1.5
  subtitle:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "16px"
    fontWeight: 500
    lineHeight: 1.5
  lead:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "18px"
    fontWeight: 400
    lineHeight: 1.7
  body:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "15px"
    fontWeight: 400
    lineHeight: 1.7
  small:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "14px"
    fontWeight: 400
    lineHeight: 1.6
  caption:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "13px"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "-apple-system, BlinkMacSystemFont, Hiragino Sans, Hiragino Kaku Gothic ProN, Noto Sans JP, sans-serif"
    fontSize: "12px"
    fontWeight: 400
    lineHeight: 1.33
  mono:
    fontFamily: "ui-monospace, SF Mono, Menlo, monospace"
    fontSize: "15px"
    fontWeight: 400
rounded:
  chip: "6px"
  inner: "8px"
  button: "10px"
  panel: "12px"
  card: "16px"
  shelf: "20px"
  app-icon: "22%"
spacing:
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  2xl: "48px"
  3xl: "64px"
components:
  button-primary:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.card}"
    rounded: "{rounded.button}"
    padding: "8px 20px"
    height: "44px"
  button-primary-hover:
    backgroundColor: "{colors.primary-hover}"
  button-secondary:
    backgroundColor: "{colors.card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.button}"
    padding: "8px 20px"
    height: "44px"
  button-secondary-hover:
    backgroundColor: "{colors.raised}"
  stack-chip:
    backgroundColor: "{colors.raised}"
    textColor: "{colors.ink-secondary}"
    typography: "{typography.label}"
    rounded: "{rounded.chip}"
    padding: "4px 8px"
  project-card:
    backgroundColor: "{colors.card}"
    rounded: "{rounded.card}"
    padding: "24px"
---

# Design System: kingu.dev

## Overview

**Creative North Star: "The Builder's Workbench"（開発者の作業台）**

作ったもの（アプリ、事例、図）が主役で、周りは道具のように控えめにする。作業台の上に並べた成果物を、正確な配置と静かな面で見せる設計で、飾りで目を引くことはしない。中立のグレーの面に、深い緑のアクセントを1色だけ置く。

情報は落ち着いていて正確に見せる。年やコードのように数えたり読み比べたりするものだけを等幅で書き、ほかはシステムフォントで統一する。面の区切りは細い線と背景の濃淡で付け、影は物として置くもの（アプリのアイコンと、それを並べた棚）だけに使う。ライトとダークは同じ構造のまま、トークンの値だけを入れ替える。

**Key Characteristics:**
- 中立のグレーとアクセント1色。グラデーションや光彩は使わない
- システムフォントの日本語と、年・コードだけの等幅
- 細い線と背景の濃淡で面を分ける平らな画面
- 影は物として置くものだけ
- ライトとダークで同じ構造

## Colors

中立のグレーの階調に、深い緑（Workbench Green）を1色だけ足した配色。値は `src/styles/global.css` で `light-dark()` の対として定義する。

### Primary
- **Workbench Green**（{colors.accent}、ダークは {colors.accent-dark}）: リンク、個人開発のタグ、図の見出しと戻り線、フォーカスの輪郭。面を塗るのには使わない。

### Neutral
- **Paper**（{colors.paper} / {colors.paper-dark}）: ページの背景とヘッダー。
- **Card**（{colors.card} / {colors.card-dark}）: 事例のカード、アプリの棚、セカンダリボタン。
- **Raised**（{colors.raised} / {colors.raised-dark}）: カードの中の一段沈んだ面（スタックのチップ、図の箱）とホバー。
- **Ink**（{colors.ink} / {colors.ink-dark}）: 見出しと本文、プライマリボタンの面。
- **Ink Secondary**（{colors.ink-secondary} / {colors.ink-secondary-dark}）: 説明文、リード、チップの文字。
- **Ink Muted**（{colors.ink-muted} / {colors.ink-muted-dark}）: 年、キャプション、補足。
- **Hairline**（{colors.hairline} / {colors.hairline-dark}）: セクションの境界、カードと棚の枠。

### Named Rules
**The One Accent Rule.** アクセントは Workbench Green の1色だけにする。2色目が要りそうなときは、グレーの濃淡で分けられないかを先に試す。

**The Paired Token Rule.** 色は必ずライトとダークの対で足す。片方だけの色を書かない。

## Typography

**Display Font:** システムフォント（-apple-system、Hiragino Sans、Noto Sans JP）
**Body Font:** 同じシステムフォント
**Label/Mono Font:** ui-monospace（SF Mono、Menlo）

**Character:** 日本語として読みやすいシステムフォントを、太さ 400 と 500 の2段だけで使う。等幅は数えるものと読み比べるものにだけ使う。

### Hierarchy
- **Display**（500、44px、1.12、字間 -0.02em）: トップの名前。
- **Display Compact**（500、36px、1.15）: 下層ページの見出しと、スマホ幅のトップの名前。
- **Headline**（500、22px、1.4）: トップのセクション見出し。
- **Title**（500、17px、1.5）: 事例のカードの見出し。
- **Subtitle**（500、16px、1.5）: トップの受賞歴とアプリの名前、ヘッダーの「kingu.dev」。
- **Lead**（400、18px、1.7、最大 30rem）: トップの自己紹介。
- **Body**（400、15px、1.7）: 本文。`word-break: auto-phrase` で文節の途中で折り返さない。
- **Small**（400、14px、1.6）: ナビ、論文の一覧、小見出し、「すべての開発事例」のようなリンク。
- **Caption**（400、13px、1.6）: 年、出典、補足、フッター。
- **Label**（400、12px）: タグ、チップ、図の小見出し。

### Named Rules
**The Two Weights Rule.** 太さは 400 と 500 だけにする（ヘッダーの「kingu.dev」の文字だけ 600）。強調は太さより位置と大きさで付ける。

**The Counted Things Rule.** 等幅は年、コード、スキル名のように数えるか読み比べるものだけに使う。

## Layout

中央寄せの1カラムで、最大幅は 1040px、左右の余白は 32px（800px 以下で 16px）。トップの冒頭は自己紹介とアプリの棚の2カラム、各セクションは見出しの列（200px）と内容の2カラム。technology-stack は年の列（96px、スクロールで追従）とカードの列。800px 以下ではすべて1カラムに積み、ヘッダーのナビゲーションは隠す。間隔は 4px 刻みで、セクションの上下は 64px。

## Elevation & Depth

基本は平らにする。面は Hairline の線と、Paper・Card・Raised の濃淡で分け、事例のカードにも影を付けない。影はアプリのアイコンと、それを並べた棚にだけ付ける。

### Shadow Vocabulary
- **Shelf**（`box-shadow: 0 8px 24px var(--shadow)`）: トップのアプリの棚。
- **Icon**（`box-shadow: 0 1px 2px rgba(0, 0, 0, 0.08)`）: アプリのアイコン。

### Named Rules
**The Objects Only Rule.** 影は手に取れる物として置くもの（アイコンとその棚）にだけ付ける。カード、ボタン、図の箱には付けない。

## Shapes

角は入れ子の深さで丸みを変える。外側ほど大きく、内側ほど小さい。棚 20px、カード 16px、図の外枠とパネル 12px、ボタン 10px、図の箱 8px、チップ 6px。アプリのアイコンは iOS に合わせて辺の 22%。枠線は 1px の Hairline、図の外枠だけ Workbench Green の線にする。

## Components

### Buttons
- **Shape:** 10px の角、高さ 44px 以上。
- **Primary:** Ink の面に Card の文字（「メールで相談する」など）。1画面に1つ。
- **Hover / Focus:** ホバーで Primary Hover の面に変わる。押すと 0.98 に縮む。フォーカスは Workbench Green の 2px の輪郭。
- **Secondary:** Card の面に Hairline の枠。ホバーで Raised の面。

### Chips
- **Style:** Raised の面に Ink Secondary の 12px の文字、6px の角。technology-stack の技術スタックに使う。入れ子の項目は「 · 」でつなぎ、Ink Muted で続ける。

### Cards / Containers
- **Corner Style:** 16px。
- **Background:** Card。
- **Shadow Strategy:** 影なし（Elevation & Depth）。
- **Border:** 1px の Hairline。
- **Internal Padding:** 24px（スマホ幅は 20px）。

### Navigation
- **Style:** 高さ 56px の追従するヘッダー。背景は Paper、下に Hairline。左に 600 の「kingu.dev」の文字、右に 14px の Ink Secondary のリンクと、32px のテーマ切り替えボタン（月と太陽の線画）。800px 以下ではリンクをヘッダーの2段目に移し、横にスクロールできる1行にする。

### Footer
- **Style:** どのページの最後にも「お仕事のご相談」の見出し（22px）、プライマリボタン「メールで相談する」、受託とアプリの問い合わせ先のアドレスを置く。

### Toolkit Diagram
- **Style:** technology-stack の AI のカードにある agent-toolkit の図。外枠は Workbench Green の 1px の線と 12px の角、中の箱は Raised の面と 8px の角。流れの段は「→」でつなぎ、振り返りの段は Workbench Green の点線の箱にする。右上に Ink Muted で時点を書く。スマホ幅では縦に積み、矢印を「↓」にする。

## Do's and Don'ts

### Do:
- **Do** 新しい色はライトとダークの対で `global.css` のトークンに足す。
- **Do** 面の区切りは Hairline の線か、Paper・Card・Raised の濃淡で付ける。
- **Do** 角は入れ子の深さに合わせて、外側ほど大きくする。
- **Do** 幅 375px とデスクトップ幅、ライトとダークの4通りで表示を確かめる。

### Don't:
- **Don't** グラデーション、光彩、すりガラス（backdrop-filter）を使う。
- **Don't** Workbench Green 以外のアクセント色を足す。
- **Don't** 事例のカード、ボタン、図の箱に影を付ける。
- **Don't** ヘッダーの「kingu.dev」の文字以外で太さ 600 以上を使ったり、字間を広げた大文字のラベルを使ったりする。
