class CreateHmacs < ActiveRecord::Migration
  def change
    create_table :hmacs do |t|
      t.string :key
      t.string :secret
      t.string :hmac
      t.string :hashalgorithme
      t.string :digest

      t.timestamps null: false
    end
  end
end
