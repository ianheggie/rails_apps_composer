module RailsWizard
  module Diagnostics
    
    ### collections of recipes that are known to work together
    @@recipes = []
    @@recipes << %w(example)
    @@recipes << %w(setup)
    @@recipes << %w(railsapps)
    @@recipes << %w(gems setup)
    @@recipes << %w(gems readme setup)
    @@recipes << %w(extras gems readme setup)
    @@recipes << %w(example git)
    @@recipes << %w(git setup)
    @@recipes << %w(git railsapps)
    @@recipes << %w(gems git setup)
    @@recipes << %w(gems git readme setup)
    @@recipes << %w(extras gems git readme setup)
    @@recipes << %w(controllers email extras frontend gems git init models railsapps readme routes setup testing views)
    @@recipes << %w(controllers core email extras frontend gems git init models railsapps readme routes setup testing views)
    @@recipes << %w(controllers core email extras frontend gems git init models prelaunch railsapps readme routes setup testing views)
    @@recipes << %w(controllers email example extras frontend gems git init models railsapps readme routes setup testing views)
    @@recipes << %w(controllers email example extras frontend gems git init models prelaunch railsapps readme routes setup testing views)
    
    ### collections of preferences that are known to work together
    
    # ignore these preferences (because they don't cause conflicts)
    # :git
    # :dev_webserver
    # :prod_webserver
    # :templates
    # :ban_spiders
    # :jsruntime
    # :rvmrc
    
    @@prefs = []
    @@prefs << {:railsapps=>"rails3-bootstrap-devise-cancan", :database=>"sqlite", :unit_test=>"rspec", :integration=>"cucumber", :fixtures=>"factory_girl", :frontend=>"bootstrap", :bootstrap=>"sass", :email=>"gmail", :authentication=>"devise", :devise_modules=>"default", :authorization=>"cancan", :starter_app=>"admin_app", :form_builder=>"none"}
    @@prefs << {:railsapps=>"rails3-devise-rspec-cucumber", :database=>"sqlite", :unit_test=>"rspec", :integration=>"cucumber", :fixtures=>"factory_girl", :frontend=>"none", :email=>"gmail", :authentication=>"devise", :devise_modules=>"default", :authorization=>"none", :starter_app=>"users_app", :form_builder=>"none"}
    @@prefs << {:railsapps=>"rails3-mongoid-devise", :database=>'mongodb', :orm=>'mongoid', :templates=>'erb', :unit_test=>'rspec', :integration=>'cucumber', :fixtures=>'factory_girl', :frontend=>'none', :email=>'gmail', :authentication=>'devise', :devise_modules=>'default', :authorization=>'none', :starter_app=>'users_app', :form_builder=>'none'}
    @@prefs << {:railsapps=>"rails3-mongoid-omniauth", :database=>'mongodb', :orm=>'mongoid', :templates=>'erb', :unit_test=>'rspec', :integration=>'cucumber', :fixtures=>'factory_girl', :frontend=>'none', :email=>'none', :authentication=>'omniauth', :omniauth_provider=>'twitter', :authorization=>'none', :starter_app=>'users_app', :form_builder=>'none'}
    @@prefs << {:railsapps=>"rails3-subdomains", :database=>'mongodb', :orm=>'mongoid', :templates=>'haml', :unit_test=>'rspec', :integration=>'cucumber', :fixtures=>'factory_girl', :frontend=>'none', :email=>'gmail', :authentication=>'devise', :devise_modules=>'default', :authorization=>'none', :starter_app=>'subdomains_app', :form_builder=>'none'}
    @@prefs << {:railsapps=>"none", :database=>"sqlite", :unit_test=>"rspec", :integration=>"capybara", :fixtures=>"factory_girl", :frontend=>"bootstrap", :bootstrap=>"sass", :email=>"none", :authentication=>"omniauth", :omniauth_provider=>"twitter", :authorization=>"cancan", :form_builder=>"none", :starter_app=>"admin_app"}

    def self.recipes
      @@recipes
    end
    
    def self.prefs
      @@prefs
    end
  end
end