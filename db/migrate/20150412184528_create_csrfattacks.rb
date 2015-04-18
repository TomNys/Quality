class CreateCsrfattacks < ActiveRecord::Migration
  def change
    create_table :csrfattacks do |t|
      t.string :professor
      t.integer :vote

      t.timestamps null: false
    end
  end
end
