class ContactMailer < ApplicationMailer
    default :from => "Sugoii 客服 <sugoii@sugoii.live>"

    def say_hello_to(name,cellphone,address,appointment,telephone,genre,brand,email)
        @name = name
        @cellphone = cellphone 
        @address = address
        @appointment = appointment
        @telephone = telephone
        @genre = genre
        @brand = brand
        @email = email
        mail to: 'fl526128@gmail.com', subject: "客戶預約通知"
    end
end
