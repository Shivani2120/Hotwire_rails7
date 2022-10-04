10.times do 
    Post.create(title: "post")
end

puts "\n== Seeding the database with fixtures =="
system("bin/rails db:fixtures:load")