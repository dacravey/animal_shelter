class CreateCustomersTable < ActiveRecord::Migration
  def change

    create_table(:customers) do |t|
      t.column(:customer_name, :string)
      t.column(:type_preference, :string)
      t.column(:breed_preference, :string)

      t.timestamps
    end
  end
end
