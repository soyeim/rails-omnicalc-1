Rails.application.routes.draw do
  get("/",{:controller => "game", :action => "home"})
  get("/square/new", {:controller => "game", :action => "square_new"})
  get("/square/results", {:controller => "game", :action => "square"})
  get("/square_root/new", {:controller => "game", :action => "sqrt_new"})
  get("/square_root/results", {:controller => "game", :action => "sqrt"})
  get("/payment/new", {:controller => "game", :action => "payment_new"})
  get("/payment/results", {:controller => "game", :action => "payment"})
  get("/random/new", {:controller => "game", :action => "random_new"})
  get("/random/results", {:controller => "game", :action => "random"})
end
