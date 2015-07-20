class AddCorrespondentRefToLetters < ActiveRecord::Migration
  def change
    add_reference :letters, :correspondent, index: true, foreign_key: true
  end
end
