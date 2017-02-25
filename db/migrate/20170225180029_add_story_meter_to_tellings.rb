class AddStoryMeterToTellings < ActiveRecord::Migration[5.0]
  def change
    add_column :tellings, :story_meter, :integer
  end
end
