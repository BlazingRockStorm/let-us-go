require 'singleton'

class EventRecommender
    include Predictor::Base
    include Singleton
  
    # input_matrix :users, weight: 3.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :age, weight: 2.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :tags, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :place, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :indoor, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :sex, weight: 2.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :adult_price, weight: 0.5, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :child_price, weight: 0.5, measure: :sorensen_coefficient # Use Sorenson over Jaccard

    def self.add_event(event)
        # incrementally update age matrix
        instance.age.add_to_set(event.age_filter, event.id)
        # incrementally update place matrix
        instance.place.add_to_set(event.place.id, event.id)
        # incrementally update sex matrix
        instance.sex.add_to_set(event.sex_status, event.id)
        # incrementally update indoor matrix
        instance.indoor.add_to_set(event.indoor_status, event.id)
        # incrementally update adult price matrix
        instance.adult_price.add_to_set(event.adult_price, event.id)
        # incrementally update child price matrix
        instance.child_price.add_to_set(event.child_price, event.id)
        # incrementally update tags matrix
        event.tags.each do |tag|
          instance.tags.add_to_set(tag.id, event.id)
        end
        instance.process_items!(event.id)
    end

    def self.delete_event(event)
        # delete product from all matrices
        instance.delete_item!(event.id)
    end    
end
