class Book < ApplicationRecord
    enum status: [:estante, :prestado]

    ransacker :status, formatter: proc {|v| statuses[v]} do |parent|
        parent.table[:status]
    end
end
