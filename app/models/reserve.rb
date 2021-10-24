class Reserve < ApplicationRecord
  belongs_to :user

  acts_as_paranoid

  validates :name, :email, :address, :cellphone, :appointment, presence: true

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  # # 原本是input.to_s.parameterize，但是parameterize只支援
  # # 英文跟數字，所以改用babosa的to_slug
  # def normalize_friendly_id(input)
  #   input.to_s.to_slug.normalize.to_s
  # end
  # def should_generate_new_friendly_id?
  #   slug.blank? || id_changed?
  # # slug 為 nil 或 name column 變更時更新
  # end
  # def slug_candidates
  #   [ :id, [:id, :title]]
  # end

  # 原本是input.to_s.parameterize，但是parameterize只支援英文跟數字，所以改用babosa的to_slug
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end
  
  # 定義slug_candidates，預設會找第一個，如果有重複的name就會找第二個（name-price），最後才會生成亂序
  def slug_candidates
    [
      :name,
      [:name]
    ]
  end
  # private
  # def name_error
  #   errors.add(:name, "請填入聯絡人")
  # end

  # def email_error
  #   errors.add(:email, "請填入信箱")
  # end

  # def address_error
  #   errors.add(:address, "請填入詳細地址")
  # end

  # def cellphone_error
  #   errors.add(:cellphone, "請填入手機號碼")
  # end

  # def appointment_error
  #   errors.add(:appointment, "請填入想預約日期")
  # end
end
