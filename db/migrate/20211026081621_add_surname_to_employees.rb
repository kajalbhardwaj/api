class AddSurnameToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :suranme, :string
  end
end
