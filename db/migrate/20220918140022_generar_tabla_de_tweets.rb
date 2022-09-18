class GenerarTablaDeTweets < ActiveRecord::Migration[7.0]

  def change
    add_column(:tweets, :monster_name, :string, {limit: 60})
    add_column(:tweets, :twt, :string, {limit: 100})
  end


end
