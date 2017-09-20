class AddValueToPlotDevice < ActiveRecord::Migration[5.0]
  def change
    add_column :plot_devices, :value, :integer
  end
end
