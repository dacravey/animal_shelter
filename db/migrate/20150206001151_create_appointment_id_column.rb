class CreateAppointmentIdColumn < ActiveRecord::Migration
  def change
    add_column(:appointments, :appointment_id, :integer)
  end
end
