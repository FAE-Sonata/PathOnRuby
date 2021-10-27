class Path < ApplicationRecord
    def format_of_intermediate_array
        unless intermediate.is_a?(Array) && intermediate.all? { |elem| elem.is_a?(String) }
          errors.add(:intermediate, "is not an array of strings") 
          return
        end
    end

    def max_num_intermediates
        if intermediate.length > 4
            errors.add(:intermediate, "Exceeded maximum number of intermediate articles")
        end
    end

    def redirects_checked
        if links_to_same_article && intermediate.length > 0
            errors.add(:intermediate, "Cannot have intermediate articles if 'links_to_same_article' is True")
        end
    end

    validates :origin, presence: true
    validates :destination, presence: true
    validate :format_of_intermediate_array, :max_num_intermediates, :redirects_checked
end