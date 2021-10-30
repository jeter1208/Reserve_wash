class ContactMailer < ApplicationMailer
    default :from => "Sugoii 客服 <sugoii@sugoii.live>"

    def say_hello_to(reserve)
        @reserve = reserve
        mail to: @reserve.email, subject: "客戶預約通知"
    end
end
