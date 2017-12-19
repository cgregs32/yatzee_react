#find the user the score belongs too
# user = User.find(@score.user_id)

# json.score do
#   json.email current_user.email
#   json.nickname current_user.nickname
#   json.score @score.value
#   json.created_at @score.created_at
# end

json.(@score, :value, :created_at)
json.email current_user.email
json.nickname current_user.nickname
