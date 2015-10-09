Rails.application.routes.draw do
  root 'hotels#show'

  get 'hotels/show'

  mount Split::Dashboard, at: 'split'
end
