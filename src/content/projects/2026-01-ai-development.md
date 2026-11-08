---
year: 2026
current: true
title: "AI エージェントと進める開発"
stack:
  - "Claude Code"
  - "Grok"
  - name: "Mac Studio"
    items: ["M5 Ultra"]
  - name: "Mac mini"
    items: ["M2 Pro"]
  - "iPhone"
  - "iPhone Duo"
  - "iPad"
  - "Apple Watch"
---

2026 年は業務委託で法人 2 社と大学 2 校と契約し、業務でも個人開発でも AI エージェントを使って開発しています。エージェントのルールとスキルは agent-toolkit というリポジトリにまとめ、作業の振り返りをもとに直し続けています。

<div class="toolkit">
  <p class="tk-snapshot">2026 年 11 月時点</p>
  <div class="tk-repo">
    <p class="tk-title">agent-toolkit</p>
    <div class="tk-cols">
      <div>
        <span>共通ルール</span>
        <ul>
          <li>毎ターン読ませるルール</li>
          <li>「いつ → 何をする → 理由」の形で書く</li>
        </ul>
      </div>
      <div>
        <span>開発のスキル</span>
        <ul>
          <li><code>grill-me</code> 着手前に質問して仕様をそろえる</li>
          <li><code>mode</code> 実装の原則を場面ごとに当てる</li>
          <li><code>git-workflow</code> コミットと push の規約</li>
          <li><code>create-pr</code> draft PR とセルフレビュー</li>
          <li><code>code-review</code> レビューの観点</li>
          <li><code>create-issue</code> 受け入れ条件つきの issue</li>
        </ul>
      </div>
      <div>
        <span>改善のスキル</span>
        <ul>
          <li><code>session-retrospect</code> 作業の振り返り</li>
          <li><code>retrospect-batch</code> 振り返りを PR にまとめる</li>
          <li><code>write-agent-knowledge</code> スキルの書き方</li>
          <li><code>consult-advisor</code> 行き詰まったら別のモデルに相談</li>
          <li><code>sync-common-skills</code> 各リポジトリとスキルをそろえる</li>
          <li><code>bootstrap-agent-harness</code> リポジトリにエージェント向けの骨格を置く</li>
        </ul>
      </div>
      <div>
        <span>フック</span>
        <ul>
          <li>スキルの起動時に個人用の手順を差し込む</li>
          <li>issue の番号を見たら、着手前の質問を促す</li>
        </ul>
      </div>
    </div>
  </div>
  <p class="tk-link">↓ 各エージェントの設定にリンクして配る</p>
  <ol class="tk-steps">
    <li><span>着手前</span>質問して仕様をそろえ、完了条件をコマンドで決める</li>
    <li><span>実装</span>worktree を切り、AI エージェントが実装する</li>
    <li><span>セルフレビュー</span>実装の経緯を知っているエージェントと、知らないエージェントが、複数のモデルで読む</li>
    <li><span>draft PR</span>CI が失敗したら自動で直す</li>
    <li><span>金具</span>確認してマージを判断する</li>
  </ol>
  <p class="tk-link">↓ 作業を終えたら</p>
  <ol class="tk-steps tk-back">
    <li><span>振り返り</span>失敗や繰り返しを、ルールとスキルの改善案にする</li>
    <li><span>issue</span>採用した案を retrospect ラベルで立てる</li>
    <li><span>PR</span>リポジトリごとに 1 本にまとめる</li>
    <li><span>↺ agent-toolkit</span>マージして次の作業に反映する</li>
  </ol>
</div>
