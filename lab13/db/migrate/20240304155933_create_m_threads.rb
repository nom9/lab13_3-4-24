class CreateMThreads < ActiveRecord::Migration[7.1]
  def change
    create_table :m_threads do |t|
      t.string :title
      t.integer :created_by

      t.timestamps
    end
  end
end
