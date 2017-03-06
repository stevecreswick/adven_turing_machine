class CreateUserInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_inputs do |t|
      t.string :title
      t.string :message
      t.string :stat_check
      t.integer :pass_value
      t.string :success_message
      t.integer :success_id
      t.string :failure_message
      t.integer :failure_id
      t.references :plot_device, foreign_key: true
      t.timestamps
    end
  end
end
