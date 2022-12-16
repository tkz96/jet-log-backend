class UpdateUserTable < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :email
      t.string :password_digest
    end
  end
end
