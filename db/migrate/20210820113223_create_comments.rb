class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :tweet
      t.text :comments
      t.timestamps
    end
  end
end
