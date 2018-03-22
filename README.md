# 2018/3/28 ライブコーディング&レビュー
## イベント用のslack
slack: https://join.slack.com/t/radicode-activities/shared_invite/enQtMzI4Nzk2Mjg4NTE1LTcxM2YxMjgyNmUyNzY1YTdjODllZmVmY2NkMDZkOTE3NmVmZjlkOThlOTczZTQ5ZDc3ZDFkNTk0YWVjZDIwYmE
お手数ですが、アカウントの登録をお願いします。

## 概要
プログラマの皆さん、こんにちは。

突然ですが、プログラミングをしている中で、実装の方法に悩んだことはありませんか？
同じ動作をするアプリケーションを作成しても、書く人が違えば中身のコードは違うものになっていると思います。
そしてこれが正解と定義することも難しいと思います。

仕様を満たして動作はしているが、もっと賢い書き方はないだろうか？
他の方法でも同じ動作を実現できるのではないか？
等々、日々よりよいコードを書けるようになりたいと思っています。

実際にアプリケーションを作成する中で、他の人と同じ機能を実装するということはあまりないと思います。

そこで、一度みんなで集まってよーいどんで同じ機能を実装し、
それぞれの実装した内容に対して「あーでもない、こーでもない」と議論してみませんか？
そんな場が欲しくて今回のイベントを企画しました。

手探りの中での企画となり、不手際も多々あると思いますが、
一緒にプログラマとして成長していきたいという方々の参加をお待ちしております。

ライブコーディングと謳ってはいますが、前もっていろいろ書いてきても大丈夫です。

## 対象
Ruby on Railsで簡単なアプリを作ったことがある人
業務でRuby on Railsを利用している人
他人にコードを読んでもらいレビューしてもらいたい人
他人のコードを読んでレビューしたい人

## タイムテーブル
18:00 開場(作業初めててOK)
19:00 簡単な自己紹介とイベントの概要を説明
19:10 各自コーディング
20:15 各々の実装方法に対してのフィードバックや質問
21:15 解散


# 題材
ユーザー登録の機能を実装してもらいたいと思います。
usersとgroupsのテーブルを用意しました。
usersとgroupsは1:多の関係です。

- ユーザー名とグループ名を同時に登録できるページを作成してください。
- 登録したユーザー情報(ユーザー名とグループ名)の一覧を確認できるページを作成してください。
- ユーザー名は重複しても構いませんが、グループ名は重複することがないようにしてください。

↑の要件を満たす機能を実装してください。

# 作業手順
本リポジトリをcloneして頂き、masterブランチから新しくブランチを作成して頂き、masterブランチに向けてPRを作成してください。
※メール(abgata20000@radicode.co.jp)、またはslack(Shuhei Iwata)にてgithubアカウントを教えていただければ、コラボレーターに登録します。
- 参考
  - [Github で Fork してから Pull Request をするまでの流れ](http://kik.xii.jp/archives/179)
  - [GitHub初心者はForkしない方のPull Requestから入門しよう](http://blog.qnyp.com/2013/05/28/pull-request-for-github-beginners/)

ブランチ名には他の人とかぶらないように、自分のgithubアカウントを含めるようにしてください。

例: abgata20000/add_sample_app

リポジトリ共有してPRを作成すると自動でherokuにreview appが立ち上がりますので動作確認にご利用ください。
※ForkしたリポジトリからのPRだとreview appは作成されないようです。

[![Screenshot from Gyazo](https://gyazo.com/1463ae44e05eeb36abc9f095c746e32b/raw)](https://gyazo.com/1463ae44e05eeb36abc9f095c746e32b)

※push毎にソースの変更が反映され、`rails db:migrate`が実行されます。

わけわからなくなったら再度PRを作り直していただければ新しくreview appが作成されるのでPR閉じて作り直してください。

# 備考
- DBのマイグレーションはrailsのmigrateコマンドを利用してください。
- `users`と`groups`のテーブル作成用のmigrateファイルは用意してありますが、カラムの追加が必要な場合は各自で追加用のmigrateファイルを作成してください。
- デザインは特に気にしません(こだわりがあるのであればカッコよくしても構いません)
- 必要であれば、Gemを追加しても構いません。
- 今回はログイン機能等は必要ないですが、付けたかったら付けても構いません。
- 今回はテストケースは無くても構いませんが、作成できる人は作成しても構いません。
- 追加するviewファイルは`slim`でも`erb`でもその他フォーマットでも構いません。


# 開発環境の設定

## Rails version
- 5.1.4

## Ruby version
- 2.5.0

## System dependencies
- PostgreSQL 9.5.2

## Rails settings
- bundleの実行
通常通り `bundle install` で `gem` のインストールをお願いします。

## Database settings
- database.ymlを作成します
```
cp config/database.sample.yml config/database.yml
```
中身はご自身の環境に合わせて適宜変更ください
DATABASEの作成もご自身の環境に合わせて作成してください

初回起動前には
```
bundle exec rails db:create
```
でDBを作成してください。

```
bundle exec rails db:migrate db:seed
```
でスキーマが反映されます。

## Rails
```
bundle exec rails s
```
