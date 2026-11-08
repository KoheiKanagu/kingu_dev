---
name: update-ai-diagram
description: >
  technology-stack の「AI エージェントと進める開発」のカードにある agent-toolkit の図を、
  agent-toolkit の今の構成に合わせて書き直す。
  「AI の図を更新して」「agent-toolkit の図を書き直して」で起動。
  ほかの案件のカードを直す作業や、図のデザインだけを変える作業では使わない。
---

# agent-toolkit の図の書き直し

図は `src/content/projects/2026-01-ai-development.md` の `<div class="toolkit">` で、次の3つの部分からなる。

- **箱**: `tk-repo` の中の共通ルール・開発のスキル・改善のスキル・フック
- **流れの段**: 1つ目の `tk-steps`（着手前からマージまで）
- **振り返りの段**: `tk-back`（振り返りから agent-toolkit に戻すまで）

## 出力の契約

- 箱・流れの段・振り返りの段が、agent-toolkit の `origin/main` と合っている
- `tk-snapshot` の日付が、書き直した年と月になっている（構成に変化が無くても日付は更新する）
- `npm run build` が終了コード 0 で終わる
- 幅 375px とデスクトップ幅、ライトとダークで、図が崩れず横スクロールも出ない
- 依頼者への報告に、足した・消した・書き換えた項目と、その根拠にした agent-toolkit のファイルを書く。変化が無ければ「日付だけ更新した」と書く
- コミットと PR はこのスキルに含めない。依頼者が求めたときだけ行う

## 手順

1. agent-toolkit を `git fetch` し、`origin/main` の次のファイルを `git show origin/main:<パス>` で読む。手元のクローンは `~/Develop/agent-toolkit`。無ければ `gh api repos/KoheiKanagu/agent-toolkit/contents/<パス>` で読む（private なので `gh` の認証が要る。`skills/` は先にディレクトリの一覧を取ってから各 `SKILL.md` を読む）
   - `skills/` の一覧と、各 `SKILL.md` の description
   - `claude/hooks.json` と、そこから呼ぶ `claude/hooks/*.py` の docstring
   - `global-agents.md`（流れの段の着手前と実装の決まり）
   - `skills/kingu-create-pr/` の `SKILL.md`・`personal.md`・`scripts/review-*.sh`（セルフレビューと CI の扱い）
   - `spec/principal.md`（実装とレビューを担うエージェント、依頼者の役割）
2. 箱・流れの段・振り返りの段を、読んだ内容と突き合わせて書き直す
3. `tk-snapshot` を `YYYY 年 M 月時点` の形で、書き直した年と月にする
4. `npm run build` を実行する。Node は `.node-version` の版を使う（手元の Node が違えば `mise exec node@<版> -- npm run build`）
5. `npm run preview` で `dist/` を配信し、`/technology-stack/#2026-01-ai-development` を出力の契約の幅と配色で開いて見る

## 判断基準

- **図に書くとき**: agent-toolkit のファイルに書いてあることだけを書く。理由: このカードは実績として読まれるので、ありそうな機能を足すと事実と違う紹介になる。
- **README と `skills/` の一覧が食い違うとき**: `skills/` にあるディレクトリを正とする。
- **スキルを載せるか決めるとき**: description が次のどちらかに当たるものだけを載せ、どちらにも当たらないもの（会話の補助、セッションの管理、ローカル LLM の調整や情報収集のような開発以外の作業）は載せない。迷ったら載せない。
  1. 着手前からマージまでの1つの作業の中で起動する → 開発のスキル
  2. ルールとスキルを書く・直す・配る・そろえる、または行き詰まったときに別のモデルに相談する → 改善のスキル
- **列の中の並びを決めるとき**: 開発のスキルは作業で使う順に、改善のスキルは振り返りに近いものから並べる。迷ったら列の末尾に置く。
- **エージェントやモデルに触れるとき**: 図には製品名を書かず、「AI エージェント」「複数のモデル」のように書く。製品名はカードの `stack` にだけ書く。理由: 使う製品は変わるので、図に書くと書き直す理由が増える。
- **スキル名を書くとき**: 個人用の接頭辞 `kingu-` を外した名前にし、`<code>` で囲む。
- **流れの段と振り返りの段を直すとき**: 段の中身は、手順1で読んだファイルに書いてある作業の順に合わせる。スキルを足したり消したりしただけで、段を足したり消したりはしない。段が変わるのは、作業の順そのものが変わったときだけとする。
- **数を書きたくなったとき**: スキルの本数のような、増減で古くなる数は書かない。
- **agent-toolkit へのリンクを張りたくなったとき**: 張らない。理由: private リポジトリなので、読者には開けない。
- **箱を足すか消すとき**: `technology-stack.astro` の `.tk-cols` の `grid-template-areas` と `:nth-child` の割り当てを、同じ変更で直す。理由: 箱の位置は子の順番で決めているので、数が変わると配置が崩れる。
- **新しいクラスが要るとき**: 同じ変更で `technology-stack.astro` にスタイルを足し、幅 375px でも確かめる。
- **カードの本文の1文目、front matter、ファイル名を見たとき**: 契約先の数、年、スタックのマシンは agent-toolkit から分からないので変えない。カードは `current: true` で「現在」の欄に載るので、書き直す年が `year` と違っても図だけを直す。
