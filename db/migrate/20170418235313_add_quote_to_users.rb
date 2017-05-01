class AddQuoteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_quote, :string
  end
end
