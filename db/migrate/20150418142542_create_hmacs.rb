class CreateHmacs < ActiveRecord::Migration
  def change
    create_table :hmacs do |t|
      t.string :key
      t.string :secret
      t.string :hmac

      t.timestamps null: false
    end
  end
end
