class CreateQuotes < ActiveRecord::Migration
  def change
    create_table(:quotes) do |table|
      table.string :source
      table.string :body
      table.timestamps
    
    end
  end
end
