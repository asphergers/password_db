class CreatePasswordInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :password_infos do |t|
      t.string :website
      t.string :username
      t.string :password
      t.string :date_added

      t.timestamps
    end
  end
end
