class Mailer < ActionMailer::Base
  def kpi_email(meeting)
    @meeting = meeting
    mail(from: "ocburgermonster@gmail.com", to: "kinney.matthewl@gmail.com ", subject: "Employee KPI's")
  end
end
