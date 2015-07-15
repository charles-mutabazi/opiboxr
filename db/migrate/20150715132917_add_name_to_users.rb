class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :m1_stundent, :boolean, default: true
    add_column :users, :in_innovator, :boolean, default: true
    add_column :users, :birth_date, :datetime
    add_column :users, :is_female, :boolean, default: false
  end
end
