class ChangeGenderToUser < ActiveRecord::Migration
  def change
    change_column :users, :gender, :string
  end
end
