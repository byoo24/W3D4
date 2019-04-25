# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  ans_choice  :string
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
    validates :question_id, presence: true

    belongs_to :question,
        class_name: :Question,
        foreign_key: :question_id,
        primary_key: :id

    has_many :responses,
        class_name: :Response,
        foreign_key: :ans_choice_id,
        primary_key: :id
end
