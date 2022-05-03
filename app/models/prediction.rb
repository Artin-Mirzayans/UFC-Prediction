class Prediction < ApplicationRecord

    belongs_to :event
    belongs_to :user

    validate :prediction_no_longer_allowed



    def prediction_no_longer_allowed
        if self.event.concluded? || self.event.in_progress?
            errors.add(:status, ": Event is Locked")
        end
    end
end
