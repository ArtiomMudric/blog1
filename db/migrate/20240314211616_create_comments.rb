class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :post
      t.string :belongs_to
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
