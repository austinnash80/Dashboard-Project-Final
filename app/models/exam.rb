class Exam < ApplicationRecord
   belongs_to :datasheet, foreign_key: 'seq_number'


  def self.import(file) # inport to cvs function
    CSV.foreach(file.path, headers: true) do |row|
    Exam.create! row.to_hash
  end
end

end
