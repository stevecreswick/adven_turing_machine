class CreatePlotDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :plot_devices do |t|
      t.string :title
      t.string :message
      t.string :type_name
      t.integer :parent_device_id
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
