class Player < ApplicationRecord
  belongs_to :round

  def blah
    puts "Hello World"
  end
end
