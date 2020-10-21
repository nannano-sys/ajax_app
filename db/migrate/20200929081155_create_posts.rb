class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t| #postsテーブルを作成している。
      t.text :content #contentというテキスト型のカラムを作成している。
      t.timestamps #自動的に作成される
    end
  end
end
