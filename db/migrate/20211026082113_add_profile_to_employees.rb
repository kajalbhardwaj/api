class AddProfileToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :profile, :string
  end
end
