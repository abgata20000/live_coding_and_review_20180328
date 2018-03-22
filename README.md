# 2018/3/28 ライブコーディング&レビュー

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

ブランチ名には他の人とかぶらないように、自分のgithubアカウントを含めるようにしてください。

例: abgata20000_sample

PRを作成すると自動でherokuにreview appが立ち上がりますので動作確認にご利用ください。

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
