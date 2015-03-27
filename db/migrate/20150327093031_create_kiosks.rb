class CreateKiosks < ActiveRecord::Migration
  def change
    create_table :kiosks do |t|

      t.timestamps null: false
    end
  end
end
