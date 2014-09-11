class Mailer < ActionMailer::Base
  def kpi_email(meeting)
    @meeting = meeting
    mail(from: "ocburgermonster@gmail.com", to: "parks.kendrick@gmail.com ", subject: "Employee KPI's")
  end
end
