class ResponsibleMailer < ApplicationMailer
  default from: 'gerenciamentoescolar@email.com'
  layout 'mailer'

  def notify(notification:, student:)
    @responsible_name = student.responsible_name
    @notification = notification

    mail(
      to: student.responsible_email,
      from: I18n.t('mail.default_from'),
      subject: "Novo email da escola do seu filho(a)"
    )
  end
end
