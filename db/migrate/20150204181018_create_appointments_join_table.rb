class CreateAppointmentsJoinTable < ActiveRecord::Migration
  def change

    create_table(:appointments) do |t|
      t.column(:animal_id, :integer)
      t.column(:customer_id, :integer)

      t.timestamps
    end
  end
end
