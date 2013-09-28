class Apply < ActiveRecord::Base

  def first_labo
    return Labolatory.find(self.first)
  end

  def second_labo
    return Labolatory.find(self.second)
  end

  def third_labo
    return Labolatory.find(self.third)
  end
end
