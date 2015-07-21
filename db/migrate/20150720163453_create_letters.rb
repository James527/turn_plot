class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
    	t.string :send_to, null:false, default: ""
    	t.string :subject, null: false, default: ""
    	t.text :content, null: false, default: ""
    	t.references :correspondent, index: true
    	t.boolean :read, default: false

		t.timestamps null: false
    end
  end
end
