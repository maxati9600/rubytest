class AddStudentidToUsers < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :studentid, :string
  end
end
