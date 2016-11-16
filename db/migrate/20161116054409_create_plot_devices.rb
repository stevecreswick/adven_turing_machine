class CreatePlotDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :plot_devices do |t|
      t.string :title
      t.string :type_name
      t.string :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
