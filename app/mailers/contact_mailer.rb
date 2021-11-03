class ContactMailer < ApplicationMailer
    default :from => "衣級棒-新北三重 <sugoii@sugoii.live>"

    def say_hello_to(name, cellphone, address, appointment, telephone, genre, brand, email, remark)
        @name = name
        @cellphone = cellphone 
        @address = address
        @appointment = appointment
        @telephone = telephone
        @genre = genre
        @brand = brand
        @email = email
        @remark = remark
        mail to: 'fl526128@gmail.com', subject: "客戶預約通知"
    end
end
