class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
