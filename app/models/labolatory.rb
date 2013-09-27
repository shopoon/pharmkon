class Labolatory < ActiveRecord::Base

  def department_amount(yaku_or_yakka)
    case yaku_or_yakka
    when "yaku"
      return self.yaku
    when "yakka"
      return self.yakka
    end
  end
end
