Rails.application.routes.draw do
  root 'hotels#show'

  get 'hotels/show'

  get 'experiments/track'

  mount Split::Dashboard, at: 'split'
end
