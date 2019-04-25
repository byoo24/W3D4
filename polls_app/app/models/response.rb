# == Schema Information
#
# Table name: responses
#
#  id            :bigint(8)        not null, primary key
#  ans_choice_id :integer
#  respondent_id :integer
#

class Response < ApplicationRecord
    validates :ans_choice_id, :respondent_id, presence: true

    belongs_to :answer_choice
        class_name: :AnswerChoice,
        foreign_key: :ans_choice_id,
        primary_key: :id

    has_one :respondent
        class_name: :User,
        foreign_key: :respondent_id,
        primary_key: :id

end
