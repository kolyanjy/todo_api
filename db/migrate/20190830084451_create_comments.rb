class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :image
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
