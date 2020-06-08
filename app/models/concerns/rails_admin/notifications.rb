module RailsAdmin::Notifications
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :id
        field :text
        field :students
        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
      end

      show do
        field :id
        field :text

        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end

        field :updated_at do
          strftime_format(I18n.t('date.formats.default'))
        end

        field :students
      end

      create do
        field :text
        field :students do
          label "Alunos - notificaremos o telefone e email dos responsáveis"
        end
      end
    end
  end
end
