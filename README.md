# 狩猟研究誌 / Hunter Magazine

狩猟に関する研究・情報を発信する同人誌プロジェクトの原稿データリポジトリです。

## 概要

このリポジトリは、狩猟に関する知識、技術、文化、法規制などを多角的に研究し、体系的にまとめた同人誌「狩猟研究誌」の制作データを管理しています。

## プロジェクト構成

```
/
├── vol.1/                      # 第1号
│   ├── contents/              # コンテンツファイル
│   └── draft/                 # デザイン原稿
│       └── hunter_magazine_001.afpub  # Affinity Publisher原稿ファイル
├── assets/                    # 共有アセット
├── .devcontainer.json        # VS Code DevContainer設定
├── docker-compose.yml        # Docker環境設定
└── CLAUDE.md                 # Claude Code作業ガイド
```

## 開発環境

このプロジェクトはDockerベースの開発環境を使用しています。

### 環境のセットアップ

```bash
# Dockerコンテナのビルドと起動
docker-compose up -d

# コンテナに入る
docker exec -it hunter-magazine-agent bash
```

### DevContainer対応

VS Codeをお使いの場合、DevContainer機能を使用して自動的に開発環境をセットアップできます。
プロジェクトを開いて「コンテナーで再度開く」を選択してください。

## デザインファイル

- デザインツール: **Affinity Publisher**
- 原稿ファイル: `vol.1/draft/hunter_magazine_001.afpub`

デザインファイルの編集にはAffinity Publisherが必要です。

## GitHub連携

プロジェクトにはGitHub CLI (`gh`) が統合されており、ワークフロー自動化に対応しています。

## ライセンス

このプロジェクトの詳細なライセンス情報については、別途お問い合わせください。

## コントリビューション

貢献方法については、プロジェクト管理者にお問い合わせください。

---

**Japan Hunting Association**
