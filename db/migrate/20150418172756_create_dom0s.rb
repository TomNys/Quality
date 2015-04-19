class CreateDom0s < ActiveRecord::Migration
  def change
    create_table :dom0s do |t|

      t.timestamps null: false
    end
  end
end
