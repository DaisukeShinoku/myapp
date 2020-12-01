# department


# 1
Department.create!(
  anagram: 'AD',
  name: '管理',
  is_valid: true
)


# 2
Department.create!(
  anagram: 'MS',
  name: 'メディアサービス',
  is_valid: true
)

# 3
Department.create!(
  anagram: 'CI',
  name: 'クラウドインテグレーション',
  is_valid: true
)

# 4
Department.create!(
  anagram: 'DI',
  name: 'データイノベーション',
  is_valid: true
)

# 5
Department.create!(
  anagram: 'DB',
  name: 'デジタルビジネス',
  is_valid: true
)

# 6
Department.create!(
  anagram: 'ES',
  name: 'エンパワーメントサービス',
  is_valid: true
)

# user

# 1
User.create!(
  department_id: 1,
  name: '管理部アカウント',
  employee_id: 1,
  email: 'user1@app.com',
  password: '111111',
  password_confirmation: '111111',
  is_valid: true,
  admin: true
)


# 2
User.create!(
  department_id: 2,
  name: '石田康介',
  employee_id: 2,
  email: 'user2@app.com',
  password: '222222',
  password_confirmation: '222222',
  is_valid: true
)

# 3
User.create!(
  department_id: 3,
  name: '元井琢磨',
  employee_id: 3,
  email: 'user3@app.com',
  password: '333333',
  password_confirmation: '333333',
  is_valid: true
)

# 4
User.create!(
  department_id: 4,
  name: '角井宏',
  employee_id: 4,
  email: 'user4@app.com',
  password: '444444',
  password_confirmation: '444444',
  is_valid: true
)

# 5
User.create!(
  department_id: 5,
  name: '伴勇気',
  employee_id: 5,
  email: 'user5@app.com',
  password: '555555',
  password_confirmation: '555555',
  is_valid: true
)

# 6
User.create!(
  department_id: 6,
  name: '石川佑太',
  employee_id: 6,
  email: 'user6@app.com',
  password: '666666',
  password_confirmation: '666666',
  is_valid: true
)

# book

# 1
Book.create!(
  title: 'たのしいRuby(第6版)',
  author: '高橋 征義',
  publisher: 'SBクリエイティブ',
  amazon_url: 'https://www.amazon.co.jp/%E3%81%9F%E3%81%AE%E3%81%97%E3%81%84Ruby-%E7%AC%AC6%E7%89%88-Informatics-IDEA-%E9%AB%98%E6%A9%8B/dp/4797399848',
  reason: '既存図書',
  on_sale: '2019-03-19'
)


# 2
Book.create!(
  title: 'スターティングGo言語',
  author: '松尾 愛賀',
  publisher: '翔泳社',
  amazon_url: 'https://www.amazon.co.jp/%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0Go%E8%A8%80%E8%AA%9E-CodeZine-BOOKS-%E6%9D%BE%E5%B0%BE-%E6%84%9B%E8%B3%80/dp/4798142417',
  reason: 'Go言語の需要の高まりから必要性が高い',
  on_sale: '2016-04-15'
)

# 3
Book.create!(
  title: 'リーダブルコード',
  author: 'Dustin Boswell',
  publisher: 'オライリージャパン',
  amazon_url: 'https://www.amazon.co.jp/%E3%83%AA%E3%83%BC%E3%83%80%E3%83%96%E3%83%AB%E3%82%B3%E3%83%BC%E3%83%89-%E2%80%95%E3%82%88%E3%82%8A%E8%89%AF%E3%81%84%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AE%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E3%81%A7%E5%AE%9F%E8%B7%B5%E7%9A%84%E3%81%AA%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF-Theory-practice-Boswell/dp/4873115655',
  reason: '全エンジニア必読',
  on_sale: '2012-06-23'
)

# 4
Book.create!(
  title: 'Webを支える技術',
  author: '山本 陽平',
  publisher: '技術評論社',
  amazon_url: 'https://www.amazon.co.jp/Web%E3%82%92%E6%94%AF%E3%81%88%E3%82%8B%E6%8A%80%E8%A1%93-HTTP%E3%80%81URI%E3%80%81HTML%E3%80%81%E3%81%9D%E3%81%97%E3%81%A6REST-WEB-PRESS-plus/dp/4774142042',
  reason: '新入社員研修で利用',
  on_sale: '2010-04-08'
)

# 5
Book.create!(
  title: 'JavaScript 第6版',
  author: 'David Flanagan',
  publisher: 'オライリージャパン',
  amazon_url: 'https://www.amazon.co.jp/JavaScript-%E7%AC%AC6%E7%89%88-David-Flanagan/dp/4873115736',
  reason: '業務で必要',
  on_sale: '2012-08-10'
)

# 6
Book.create!(
  title: 'Node.js超入門 第3版',
  author: '掌田 津耶乃',
  publisher: '秀和システム',
  amazon_url: 'https://www.amazon.co.jp/Node-js%E8%B6%85%E5%85%A5%E9%96%80-%E7%AC%AC3%E7%89%88-%E6%8E%8C%E7%94%B0%E6%B4%A5%E8%80%B6%E4%B9%83/dp/479806243X',
  reason: 'Node.jsの案件が増えてきたため',
  on_sale: '2020-07-18'
)
