module Dimelo::CCP
  class Question < Dimelo::CCP::API::Model
    include ::Dimelo::CCP::API::Common::Openable
    include ::Dimelo::CCP::API::Common::Publishable
    include ::Dimelo::CCP::API::Common::Starrable

    attributes :id, :title, :body, :body_format, :flow_state, :score, :user_id,
               :ipaddr, :category_id, :category_ids, :category_names, :starred_at,
               :answers_count, :attachments_count, :usefulnesses_yes_count, :usefulnesses_no_count,
               :star, :closed, :permalink, :created_at, :updated_at

    submit_attributes :title, :body, :body_format, :category_ids, :user_id

    belongs_to :user
    belongs_to :category
    has_many :answers
    has_many :question_attachments

  end
end
