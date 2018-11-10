RSpec.describe Member, type: :model do
    reuqire 'rails_helper'

    it {should  validate_numericality_of(:quantity).is_greater_than_or_equal_to)};
end