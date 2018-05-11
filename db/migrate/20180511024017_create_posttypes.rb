class CreatePosttypes < ActiveRecord::Migration[5.2]
  def change
    create_table :posttypes do |t|
      t.references :post, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
