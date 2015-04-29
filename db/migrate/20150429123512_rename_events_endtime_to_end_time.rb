class RenameEventsEndtimeToEndTime < ActiveRecord::Migration
  def change
    rename_column :events, :endtime, :end_time
  end
end
