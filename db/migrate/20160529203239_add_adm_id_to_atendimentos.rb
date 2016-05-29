class AddAdmIdToAtendimentos < ActiveRecord::Migration
  def change
    add_column :atendimentos, :adm_id, :integer
  end
end
