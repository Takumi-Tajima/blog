articles_data = [
  { title: 'Rubyのメモ化パターン', body: '||=演算子を使ったメモ化の基本的な使い方について解説します。' },
  { title: 'Rails 8の新機能まとめ', body: 'Rails 8で追加された主要な機能と変更点を紹介します。' },
]
Article.delete_all
articles_data.each do |data|
  Article.create!(
    title: data[:title],
    body: data[:body],
    published_at: Time.current
  )
end
