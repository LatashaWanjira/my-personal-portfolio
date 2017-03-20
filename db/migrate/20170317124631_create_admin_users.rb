class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_users do |t|
      t.column :first_name , :string
      t.column :last_name , :string
      t.column :username , :string
      t.column :email , :string
      t.column :password , :string

      t.timestamps
    end
  end
end
