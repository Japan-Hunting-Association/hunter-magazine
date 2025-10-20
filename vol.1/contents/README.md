# 執筆ガイド

狩猟研究誌 vol.1 の原稿執筆に関するガイドラインです。

## 新しい記事を書く

### 1. テンプレートをコピー

`template.md` をコピーして、以下の命名規則でファイルを作成してください。

```bash
cp template.md 執筆者ID_記事タイトル.md
```

#### ファイル名の例
```
yamada_hunting-license-guide.md
tanaka_wildlife-photography-tips.md
sato_cooking-wild-game.md
```

#### 命名規則
- **執筆者ID**: 小文字の英数字（姓、ハンドルネームなど）
  - 例: `yamada`, `tanaka`, `hunter123`
- **記事タイトル**: 小文字の英数字とハイフン（kebab-case）
  - 日本語は使用しない
  - 単語間はハイフンで区切る
  - 3-5単語程度で簡潔に

### 2. Front Matterを記入

ファイルの先頭にあるFront Matter（`---`で囲まれた部分）に記事情報を記入してください。

```yaml
---
title: "狩猟免許取得完全ガイド"
author: "山田太郎"
author_id: "yamada"
date: "2025-10-20"
status: "draft"
---
```

#### statusの値
- `draft`: 執筆中
- `review`: レビュー待ち
- `final`: 最終稿

### 3. 本文を執筆

テンプレートに沿って本文を執筆してください。見出し構成は自由に変更できます。

## 画像の配置方法

### 画像用ディレクトリの作成

記事に画像を使用する場合、記事ファイルと同じ名前のディレクトリを作成してください。

```bash
mkdir 執筆者ID_記事タイトル
```

#### 例
```
vol.1/contents/
├── yamada_hunting-license-guide.md           # 記事ファイル
└── yamada_hunting-license-guide/             # 画像ディレクトリ
    ├── license-types.jpg
    ├── application-form.png
    └── exam-location.jpg
```

### 画像ファイルのガイドライン

#### ファイル形式
- **写真**: JPEG (`.jpg`)
- **図表・スクリーンショット**: PNG (`.png`)
- **最大ファイルサイズ**: 2MB以下（推奨）

#### ファイル名
- 小文字の英数字とハイフン（kebab-case）を使用
- 内容が分かりやすい名前にする
- 例: `hunting-license-types.jpg`, `camera-setup.png`

#### 画像サイズ
- **横幅**: 最大1200px（推奨）
- **解像度**: 72-150dpi

### Markdownでの画像参照

記事内で画像を参照する場合、以下の形式で記述してください。

```markdown
![代替テキスト](ディレクトリ名/画像ファイル名)
```

#### 例
```markdown
![狩猟免許の種類](yamada_hunting-license-guide/license-types.jpg)

![申請書の記入例](yamada_hunting-license-guide/application-form.png)
```

### 画像のキャプション

画像には適切な代替テキスト（`![ここ]`の部分）を記述してください。

```markdown
<!-- 良い例 -->
![第一種銃猟免許証のサンプル](yamada_hunting-license-guide/license-sample.jpg)

<!-- 悪い例 -->
![画像1](yamada_hunting-license-guide/image1.jpg)
```

## 記事を目次に追加

記事の執筆が完了したら、`index.md` に記事情報を追加してください。

```markdown
## 掲載記事一覧

1. [狩猟免許取得完全ガイド](yamada_hunting-license-guide.md) - 山田太郎
2. [野生動物撮影テクニック](tanaka_wildlife-photography-tips.md) - 田中花子
```

## ファイル構成の例

```
vol.1/contents/
├── README.md                                 # このファイル
├── index.md                                  # 目次
├── template.md                               # テンプレート
│
├── yamada_hunting-license-guide.md           # 記事1
├── yamada_hunting-license-guide/             # 記事1の画像
│   ├── license-types.jpg
│   ├── application-form.png
│   └── exam-location.jpg
│
├── tanaka_wildlife-photography-tips.md       # 記事2
└── tanaka_wildlife-photography-tips/         # 記事2の画像
    ├── camera-setup.jpg
    └── example-photo.jpg
```

## 注意事項

### 著作権について
- 使用する画像の著作権に注意してください
- 自分で撮影した写真、自作の図表、またはライセンスが明確な素材を使用してください
- 他者の著作物を使用する場合は、適切な引用・クレジット表記を行ってください

### Gitコミットについて
- 記事を追加・更新したら、適切なコミットメッセージでコミットしてください
- 画像ファイルも忘れずにコミットしてください

```bash
git add 執筆者ID_記事タイトル.md 執筆者ID_記事タイトル/
git commit -m "Add: 記事タイトル by 執筆者名"
```

## 困ったときは

質問や問題があれば、プロジェクト管理者に連絡してください。
