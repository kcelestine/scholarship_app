class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.hstore :awards
      t.datetime :start_date
      t.datetime :end_date
      t.string :sponsoring_company
      t.text :description
      t.text :instructions, array: true, default: []
      t.hstore :eligibility
      t.references :sponsor
      t.text :all_applicants, array: true, default: []
      t.text :round1_applicants, array: true, default: []
      t.text :round2_applicants, array: true, default: []
      t.hstore :winners
      t.datetime :round1_notification
      t.datetime :round2_notification
      
      t.timestamps
    end
  end
end
