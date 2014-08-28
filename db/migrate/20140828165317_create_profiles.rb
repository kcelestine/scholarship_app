class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :mailing_address
      t.string :mailing_apt_no
      t.string :mailing_city
      t.string :mailing_state
      t.integer :mailing_zip
      t.string :living_address
      t.string :living_apt_no
      t.string :living_city
      t.string :living_state
      t.integer :living_zip
      t.datetime :birthday
      t.integer :integer
      t.hstore :majors
      t.integer :gender
      t.integer :citizenship
      t.integer :race

      t.timestamps
    end
  end
end
