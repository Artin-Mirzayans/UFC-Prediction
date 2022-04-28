class Prediction < ApplicationRecord

    belongs_to :event

    validate :prediction_no_longer_allowed, on: :create
    validate :prediction_no_longer_allowed, on: :update



    def prediction_no_longer_allowed
        if self.event.concluded? || self.event.in_progress?
            errors.add(:status, "Event Status must be Upcoming")
        end
    end
end
