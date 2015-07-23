class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
    	t.string :send_to, null:false, default: ""
    	t.string :subject, null: false, default: ""
    	t.text :content, null: false, default: ""
    	t.references :correspondent, index: true
    	t.boolean :has_read, default: false
      t.boolean :trash, default: false

		t.timestamps null: false
    end
  end
end
