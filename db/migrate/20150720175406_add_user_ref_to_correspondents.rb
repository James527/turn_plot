class AddUserRefToCorrespondents < ActiveRecord::Migration
  def change
    add_reference :correspondents, :user, index: true, foreign_key: true
  end
end
