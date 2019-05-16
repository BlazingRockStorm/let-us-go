require 'singleton'

class EventRecommender
    include Predictor::Base
    include Singleton
  
    # input_matrix :users, weight: 3.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :age, weight: 2.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :tags, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :place, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :provider, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard

    def self.add_event(event)
        # incrementally update age matrix
        instance.age.add_to_set(event.age_filter, event.id)
        # incrementally update place matrix
        instance.place.add_to_set(event.place.id, event.id)
        # incrementally update provider matrix
        instance.provider.add_to_set(event.provider.id, event.id)
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
