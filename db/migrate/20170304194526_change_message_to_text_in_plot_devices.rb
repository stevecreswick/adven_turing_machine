class ChangeMessageToTextInPlotDevices < ActiveRecord::Migration[5.0]
  def change
    change_column :plot_devices, :message, :text, :limit => nil
  end
end
