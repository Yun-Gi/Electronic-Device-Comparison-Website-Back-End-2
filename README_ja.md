[🇰🇷 한국어(Korean)](README.md) | [🇯🇵 日本語(Japanese)](README_ja.md)
# 🚀 電子機器比較ウェブサイト

> GPU、CPU、スマートフォンのスペックを比較し、掲示板を通じて意見を共有できるウェブサイトです。

<br>

## 📖 目次

1. [プロジェクト紹介](#-プロジェクト紹介)
2. [主な機能](#-主な機能)
3. [プレビュー](#%EF%B8%8F-プレビュー)
4. [使用技術](#%EF%B8%8F-使用技術)
5. [インストール及び実行方法](#%EF%B8%8F-インストール及び実行方法)
6. [チームメンバー紹介](#%E2%80%8D%E2%80%8D%E2%80%8D-チームメンバー紹介)
   
<br>

## 📌 プロジェクト紹介

本プロジェクトは、大学2年次前期のバックエンド講義におけるチームプロジェクトの課題として制作されました。
新しい電子機器を購入する際、複数の機器を並べて比較することに苦労した経験を活かし、一つのサイトで簡単に比較できるウェブサイトを目標に構築しました。

<br>

## ✨ 主な機能

- **機能 1:** 電子機器（スマートフォン、GPU、CPU）のスペック比較機能。
- **機能 2:** 投稿の作成、照会、修正、削除（CRUD）が可能な掲示板機能。

<br>

## 🖼️ プレビュー

<img width="2862" height="1350" alt="cpu비교" src="https://github.com/user-attachments/assets/dba4fb9f-87bc-4548-b058-7363469b49e6" />

<br>

## 🛠️ 使用技術

- **Backend:** `Java`, `JSP`, `JDBC`
- **Frontend:** `HTML`, `CSS`, `JavaScript`
- **Database:** `MySQL`
- **Web Server:** `Apache Tomcat`
<br>

## ⚙️ インストール及び実行方法

```bash
本プロジェクトは、Java (JSP/Servlet) および Maven ベースで構築されています。
ローカルで実行するためには、Java(JDK)、Maven、Apache Tomcat、MySQLがインストールされている必要があります。
※開発はEclipseを使用して行われました。他のIDEでの実行も可能と推測されますが、動作確認は行っておりません。

# 1. リポジトリのクローン (Clone)
git clone [https://github.com/Yun-Gi/Electronic-Device-Comparison-Website-Back-End-2.git](https://github.com/Yun-Gi/Electronic-Device-Comparison-Website-Back-End-2.git)

# 2. データベース設定 (Database Setup)
ローカルPCでMySQLサーバーを実行し、新しいデータベーススキーマを作成します。最後にSQLファイルを使用してスキーマにテーブルを追加します。
src/main/java/util/DatabaseUtil.java 内の dbURL, dbID, dbPassword を実行環境に合わせて修正してください。
※テスト目的で簡易的に構築したDBであるため、必要に応じて独自にDBを構築するか、外部クローリングデータ等に置き換えて使用して差し支えありません。

# 3. プロジェクトのインポートと設定 (Import & Setup)
Eclipseで Import > Existing Maven Projects を選択し、このプロジェクトを読み込みます。
読み込み後、Eclipseが pom.xml に基づいてMavenライブラリ(dependencies)をすべてダウンロードするまでしばらく待ちます。

# 4. ウェブサーバーの連携および実行 (Web Server & Run)
Eclipse下部の「Servers」タブに移動し、New Server Wizardを開きます。
Apache > (インストールしたTomcatのバージョン、例: Tomcat 9.0)を選択し、ローカルにインストールしたTomcatのパスを指定してサーバーを登録します。
プロジェクトフォルダ(ElectroCompare)を右クリックし、Run As > Run on Server を選択して、登録したTomcatサーバーでプロジェクトを実行します。
サーバーが正常に起動したら、ウェブブラウザで http://localhost:8080/ElectroCompare/ （またはIDEが開いたデフォルトアドレス）にアクセスして確認します。

```

<br>

## 👨‍👩‍👧‍👦 チームメンバー紹介

| 名前 | 役割 |  
| イ・ユンギ  | GPU製品の照会API設計および実装、CPU・GPU関連情報のDB構築 |  
| イ・ジェハン | フロントエンドのデザイン設計および開発、SmartPhone製品の照会API設計および実装、掲示板デザインおよび掲示板APIとの連携 |  
| イ・ギュヒョク | 会員管理を目的としたUser API設計および実装、CPU製品の照会API開発および実装 |  
| イム・ジェソン | ユーザー間の情報共有を目的とした掲示板API設計および実装、User APIとの連携、掲示板デザインおよび掲示板APIとの連携 |  

