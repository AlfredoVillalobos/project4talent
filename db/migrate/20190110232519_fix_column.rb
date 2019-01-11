class FixColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :companies, :type, :com_type
  end
end
