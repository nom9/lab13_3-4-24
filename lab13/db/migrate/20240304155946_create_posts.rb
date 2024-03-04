class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :m_thread
      t.text :text
      t.integer :user

      t.timestamps
    end
  end
end
