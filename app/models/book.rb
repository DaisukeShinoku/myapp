class Book < ApplicationRecord
  validates :request_id, numericality: { allow_nil: true, only_integer: true }
  validates :title, presence: true, length: {maximum: 30}
  validates :author, presence: true, length: {maximum: 30}
  validates :publisher, presence: true, length: {maximum: 30}
  validates :amazon_url, length: {maximum: 300}
  validates :reason, length: {maximum: 300}
  validates :book_num, presence: true, numericality: { only_integer: true }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つからなければ、新しく作成
      book = find_by(book_num: row["book_num"]) || new
      # CSVからデータを取得し、設定する
      book.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      book.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "request_id", "title", "author", "publisher", "amazon_url", "reason", "on_sale", "book_num"]
  end
end
