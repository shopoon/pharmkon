class Apply < ActiveRecord::Base

  attr_reader :student_id
  attr_accessor :first, :second, :third, :forth

  def first_labo
    return Labolatory.find(self.first)
  end

  def second_labo
    return Labolatory.find(self.second)
  end

  def third_labo
    return Labolatory.find(self.third)
  end

  def forth_labo
    return Labolatory.find(self.forth)
  end
end
