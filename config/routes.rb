Rails.application.routes.draw do
  get 'posts/all'

  get 'posts/funny'

  get 'posts/awww'

  get 'posts/satisfying'

  get 'posts/knowledge'

  get 'posts/nature'

  get 'posts/sports'

  root 'posts#all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
