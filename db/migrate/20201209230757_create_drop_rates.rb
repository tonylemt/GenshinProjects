class CreateDropRates < ActiveRecord::Migration[6.1]
  def change
    create_table :drop_rates do |t|
      t.integer :run
      t.integer :artifacts
      t.integer :des_artifacts
      t.float :percent_des

      t.timestamps
    end
  end
end
