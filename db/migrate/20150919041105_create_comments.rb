class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :t_complaint, index: true
      t.string :cmpfirst
      t.string :cmpmiddle
      t.string :cmplast
      t.text :cmpdetails

      t.timestamps
    end
  end
end
