class ChangeVehicleTypeName < ActiveRecord::Migration[5.1]
  def change
      change_table :vehicles do |t|
          t.rename :type, :vehicle_type
      end
  end
end
