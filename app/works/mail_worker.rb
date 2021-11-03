class MailWorker
    include Sidekiq::Worker
    sidekiq_options queue: :default, retry: 3
  def perform(name, cellphone, address, appointment, telephone, genre, brand, email, remark)
    @name = name
    @cellphone = cellphone
    @address = address
    @appointment = appointment
    @telephone = telephone
    @genre = genre
    @brand = brand
    @email = email
    @remark = remark
    
    ContactMailer.say_hello_to(@name, 
                               @cellphone,  
                               @email, 
                               @brand, 
                               @telephone,  
                               @appointment, 
                               @address,
                               @telephone,
                               @remark).deliver_now
  end
end