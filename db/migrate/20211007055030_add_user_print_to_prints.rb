class AddUserPrintToPrints < ActiveRecord::Migration[6.1]
  def change
    add_column :prints, :user_print, :string
  end
end
