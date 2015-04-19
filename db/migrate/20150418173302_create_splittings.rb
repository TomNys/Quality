class CreateSplittings < ActiveRecord::Migration
  def change
    create_table :splittings do |t|

      t.timestamps null: false
    end
  end
end
