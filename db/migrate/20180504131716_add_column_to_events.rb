class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :creator
  end
end
