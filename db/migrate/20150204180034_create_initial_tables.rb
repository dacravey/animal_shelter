class CreateInitialTables < ActiveRecord::Migration
  def change

    create_table(:animals) do |t|
      t.column(:animal_name, :string)
      t.column(:gender, :string)
      t.column(:date_of_admit, :date)
      t.column(:animal_type, :string)
      t.column(:breed, :string)

      t.timestamps
    end
  end
end
