class CreateTestOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :test_owners do |t|
      t.string :name

      t.timestamps
    end
  end
end
