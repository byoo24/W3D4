# == Schema Information
#
# Table name: questions
#
#  id            :bigint(8)        not null, primary key
#  question_text :text
#  poll_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ApplicationRecord
    validates :poll_id, presence: true

    belongs_to :poll,
        class_name: :Question,
        foreign_key: :poll_id,
        primary_key: :id

    has_many :answer_choices,
        class_name: :AnswerChoice,
        foreign_key: :question_id,
        primary_key: :id
end
