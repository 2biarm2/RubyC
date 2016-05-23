class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.string :categoria
      t.string :area
      t.date :data
      t.text :detalhes

      t.timestamps null: false
    end
  end
end
