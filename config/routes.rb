Rails.application.routes.draw do
  root 'hotels#show'

  get 'hotels/show'

  get 'experiments/track'

  get 'checkout/success'

  mount Split::Dashboard, at: 'split'
end
