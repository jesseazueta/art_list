class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :date, :start_date
  end
end
