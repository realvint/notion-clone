class CreatePages < ActiveRecord::Migration[7.2]
  def change
    create_table :pages do |t|
      t.references :workspace, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.boolean :frontpage, default: false
      t.string :ancestry, default: '/'

      t.timestamps
    end
  end
end
