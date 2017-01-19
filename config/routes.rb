Rails.application.routes.draw do
  get '/query_game_url' => 'game_params#query_game'
  get '/query_number_guess_url' => 'game_params#query_number_guess'

  get '/url_segment_params_url/:this_is_a_variable' => 'game_params#segment_params'
  get '/guess_number_segment_params_url/:number' => 'game_params#guess_number_segment_params'

  get '/form_params_url' => 'game_params#get_form'
  post '/form_result_url' => 'game_params#use_form'

  get '/guess_number_form_params_url' => 'game_params#get_number_form'
  post '/guess_number_form_result_url' => 'game_params#use_number_form'

end
