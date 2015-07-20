class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
    	t.string :send_to, null:false, default: ""
    	t.string :header, null: false, default: ""
    	t.text :content, null: false, default: ""
    	t.references :correspondent, index: true

		t.timestamps null: false
    end
  end
end
