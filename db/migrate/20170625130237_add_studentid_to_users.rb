class AddStudentidToUsers < ActiveRecord::Migration[5.1]
  def change
      # student_id 通常會這樣子寫
      add_column :users, :studentid, :string
  end
end
