class Book < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      book = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      book.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      book.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "request_id", "title", "author", "publisher", "amazon_url", "reason", "on_sale"]
  end
end
