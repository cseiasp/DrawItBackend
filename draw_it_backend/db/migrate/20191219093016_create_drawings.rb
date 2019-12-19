class CreateDrawings < ActiveRecord::Migration[6.0]
  def change
    create_table :drawings do |t|
      t.integer :user_id
      t.string :url
      t.integer :number_of_likes
      t.string :category

      t.timestamps
    end
  end
end
