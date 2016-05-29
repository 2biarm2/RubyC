class CreateAdms < ActiveRecord::Migration
  def change
    create_table :adms do |t|
      t.string :nome
      t.string :senha
      t.string :registro

      t.timestamps null: false
    end
  end
end
