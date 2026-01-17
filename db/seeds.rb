articles_data = [
  { title: 'Rubyのメモ化パターン', body: '||=演算子を使ったメモ化の基本的な使い方について解説します。' },
  { title: 'Rails 8の新機能まとめ', body: 'Rails 8で追加された主要な機能と変更点を紹介します。' },
  { title: 'RSpecのletとlet!の違い', body: '遅延評価と即時評価の違いを理解して適切に使い分けましょう。' },
  { title: 'Dockerで開発環境を構築する', body: 'docker-composeを使ったRails開発環境のセットアップ手順です。' },
  { title: 'GitHubActionsでCI/CDを構築', body: 'RailsプロジェクトのテストとデプロイをGitHubActionsで自動化します。' },
  { title: 'N+1問題の見つけ方と解決法', body: 'bulletgemを使った検出方法とincludesによる解決パターンを紹介。' },
  { title: 'Hotwireの基本を理解する', body: 'TurboとStimulusを使ったモダンなRailsフロントエンド開発。' },
  { title: 'ActiveRecordのスコープ活用術', body: 'scopeを使ってクエリを再利用可能にする方法を解説します。' },
  { title: 'Rubyの配列メソッド早見表', body: 'map, select, reject, find など頻出メソッドの使い方まとめ。' },
  { title: 'PostgreSQLのインデックス設計', body: '適切なインデックスを張ってクエリパフォーマンスを改善しよう。' },
  { title: 'RuboCopのカスタマイズ方法', body: '.rubocop.ymlで自分のプロジェクトに合ったルールを設定する。' },
  { title: 'Sidekiqで非同期処理を実装', body: 'バックグラウンドジョブの基本的な実装パターンを紹介します。' },
  { title: 'RailsのStrong Parametersを理解する', body: 'マスアサインメント脆弱性を防ぐための仕組みと使い方。' },
  { title: 'テスト駆動開発の進め方', body: 'Red-Green-Refactorのサイクルを実践的に解説します。' },
  { title: 'APIモードでRailsを使う', body: 'rails new --apiで始めるバックエンドAPI開発の基本。' },
  { title: 'Pumaのチューニングガイド', body: 'ワーカー数とスレッド数の最適な設定方法について。' },
  { title: 'ActiveStorageで画像アップロード', body: 'Rails標準の機能でファイルアップロードを実装する方法。' },
  { title: 'Rubyのブロックとラムダの違い', body: 'Proc.newとlambdaの挙動の違いを整理して解説します。' },
  { title: 'マイグレーションのベストプラクティス', body: '本番環境で安全にスキーマ変更を行うためのTips。' },
  { title: 'deviseでユーザー認証を実装', body: '定番gemを使った認証機能のセットアップ手順です。' },
  { title: 'RailsのログをJSON形式に変換', body: '構造化ログで監視ツールとの連携を改善する方法。' },
  { title: 'Redisをキャッシュストアとして使う', body: 'Railsのキャッシュ機能とRedisの連携方法を解説。' },
  { title: 'GraphQL入門 with Rails', body: 'graphql-rubyを使ったAPI実装の第一歩。' },
  { title: 'FactoryBotの効率的な使い方', body: 'traitとcallbackを活用してテストデータを柔軟に生成する。' },
  { title: 'Webpackerから脱却してesbuildへ', body: 'Rails 7以降のアセットパイプライン移行ガイド。' },
  { title: 'ActiveJobのリトライ戦略', body: 'ジョブ失敗時のリトライ設定と例外処理のパターン。' },
  { title: 'RailsとTypeScriptの共存', body: '型安全なフロントエンド開発をRailsプロジェクトで実現する。' },
  { title: 'データベース接続プールの管理', body: 'コネクションプールの仕組みと適切なサイズ設定について。' },
  { title: 'Kamalでデプロイを簡単に', body: 'Rails 8標準のデプロイツールの使い方を紹介します。' },
  { title: 'Rubyのパターンマッチング入門', body: 'Ruby 3で導入されたcase/in構文の活用方法。' },
]
Article.delete_all
articles_data.each do |data|
  Article.create!(
    title: data[:title],
    body: data[:body],
    published_at: Time.current
  )
end
