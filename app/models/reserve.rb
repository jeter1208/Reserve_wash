class Reserve < ApplicationRecord
  belongs_to :user 

  validates :name, :email, :address, :cellphone, :appointment, presence: true

  private
  def name_error
    errors.add(:name, "請填入聯絡人")
  end

  def email_error
    errors.add(:email, "請填入信箱")
  end

  def address_error
    errors.add(:address, "請填入詳細地址")
  end

  def cellphone_error
    errors.add(:cellphone, "請填入手機號碼")
  end

  def appointment_error
    errors.add(:appointment, "請填入想預約日期")
  end
end
