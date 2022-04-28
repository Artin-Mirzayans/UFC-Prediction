class Event < ApplicationRecord
    validates :event_name, presence: true
    validates :f1, presence: true
    validates :f2, presence: true
    validates :f3, presence: true
    validates :f4, presence: true
    validates :date, presence: true
    validates :status, presence: true

    def concluded?
        self.status == "Concluded"
    end

    def in_progress?
        self.status == "In Progress"
    end 
end
