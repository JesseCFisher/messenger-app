class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.string :name
      t.string :body
      t.integer :post_id

      t.timestamps
    end
  end
end
