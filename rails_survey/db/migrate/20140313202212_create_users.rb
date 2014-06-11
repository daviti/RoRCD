class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :location
      t.string :language

      t.timestamps
    end
  end
end
