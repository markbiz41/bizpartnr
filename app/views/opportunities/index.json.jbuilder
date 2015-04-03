json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :expertise_desired, :partnership_opportunity, :industry_id, :compensation, :user_id
  json.url opportunity_url(opportunity, format: :json)
end
