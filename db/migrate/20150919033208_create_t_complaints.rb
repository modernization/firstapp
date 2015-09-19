class CreateTComplaints < ActiveRecord::Migration
  def change
    create_table :t_complaints do |t|
      t.integer :cmpnumber
      t.string :cmpfirst
      t.string :cmpmiddle
      t.string :cmplast
      t.text :cmpdetails

      t.timestamps
    end
  end
end
