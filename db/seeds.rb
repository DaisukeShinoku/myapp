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

