class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.date :create_date
      t.time :create_time
      t.date :update_date
      t.time :update_time

      t.timestamps
    end
  end
end
