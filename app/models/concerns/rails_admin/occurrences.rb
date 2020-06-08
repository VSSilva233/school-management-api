module RailsAdmin::Occurrences
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :id
        field :description
        field :student

        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
      end

      show do
        field :id
        field :description
        field :student

        field :created_at do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :updated_at do
          strftime_format(I18n.t('date.formats.default'))
        end
        field :photo
      end

      create && edit do
        field :description
        field :student
        field :photo
      end

      export do
        field :id
        field :description
        field :student
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
