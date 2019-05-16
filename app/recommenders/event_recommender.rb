class EventRecommender
    include Predictor::Base
  
    input_matrix :users, weight: 3.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :tags, weight: 2.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
    input_matrix :places, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
end