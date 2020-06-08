module RailsAdmin::Students
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :id
        field :name
        field :responsible_phone
        field :responsible_name
        field :email

        field :birthday do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
      end

      show do
        field :id
        field :name
        field :responsible_phone
        field :responsible_name
        field :responsible_email
        field :email
        field :cpf
        field :birthday do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :updated_at do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :occurrences
        field :photo
      end

      create && edit do
        field :name
        field :responsible_phone
        field :responsible_name
        field :responsible_email
        field :email
        field :cpf
        field :birthday do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :photo
      end

      export do
        field :id
        field :name
        field :responsible_phone
        field :responsible_name
        field :responsible_email
        field :email
        field :cpf
        field :birthday do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :updated_at do
          strftime_format(I18n.t('date.formats.default'))
        end
      end
    end
  end
end
