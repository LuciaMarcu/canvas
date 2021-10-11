class AddPrintIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :print_id, :integer
  end
end
