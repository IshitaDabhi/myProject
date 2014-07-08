namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Project.create!(name: "Project 1",
                    code: "1",
                    description: "Business Project",
                    billing_type: "fixed",
                    start_date: "2014-03-30",
                    deadline_date: "2014-06-30",
                    end_date: "2014-05-30",
                    git_url: "gitishita@github.com",
                    status: "kick off",
                    client_id: 1
                    )
                 
    99.times do |n|
      name  = Faker::Name.name
      code = "#{n+1}"
      description = "Business Project #{n+1}"
      billing_type = "fixed"
      start_date = "2014-04-30"
      deadline_date = "2014-07-30"
      end_date = "2014-06-30"
      git_url = "git#{n+1}@github.com"
      status = "poc"
      client_id = 1
      
      
      Project.create!(name: name,
                      description: description,
                      code: code,
                      billing_type: billing_type,
                      start_date: start_date,
                      deadline_date: deadline_date,
                      end_date: end_date,
                      git_url: git_url,
                      status: status,
                      client_id: client_id
                      )

    end

    
  end
end