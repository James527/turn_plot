class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
    	t.text null: false

		t.timestamps null: false
    end
  end
end
