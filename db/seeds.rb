3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer justo urna, convallis eu tempus at, pulvinar sit amet lectus. Mauris dictum enim id rutrum blandit. Curabitur mollis eleifend nunc ut suscipit. Nam fermentum a leo ac interdum. Quisque eget enim lorem. Cras gravida leo turpis, vel venenatis lorem tincidunt quis. Ut feugiat condimentum commodo. Nam fringilla turpis ex, in pulvinar justo lacinia sit amet. Morbi in ex in sem egestas sagittis at a ligula. Vivamus eget neque dolor. Sed cursus nunc id orci aliquam, nec dictum libero pretium. Fusce dapibus felis eu vehicula euismod. Nullam a rhoncus nisi. Suspendisse ullamcorper vehicula arcu, eget tristique nisl venenatis id. Donec neque urna, volutpat sed ligula eu, rutrum cursus massa. Maecenas dignissim cursus lacus, id maximus nibh pretium vitae.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15 + skill
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Fusce eget auctor mauris. Maecenas pellentesque, magna at dapibus gravida, ex ligula malesuada odio, a laoreet turpis metus non dui. Morbi ultricies tempor iaculis. Pellentesque porta quis elit nec sodales. Praesent mollis purus nisi, a ornare lorem efficitur in. Quisque non ante lacus. Proin venenatis felis odio. Ut non metus quis massa malesuada fringilla. Quisque vehicula arcu et eros ullamcorper, a elementum nisl dictum. Mauris nec nibh ut massa aliquet vehicula. Nulla maximus mattis ipsum at blandit. Mauris ultrices luctus diam, quis pellentesque ligula finibus quis. Vestibulum libero ex, accumsan quis maximus eu, cursus eget nisl.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "Fusce eget auctor mauris. Maecenas pellentesque, magna at dapibus gravida, ex ligula malesuada odio, a laoreet turpis metus non dui. Morbi ultricies tempor iaculis. Pellentesque porta quis elit nec sodales. Praesent mollis purus nisi, a ornare lorem efficitur in. Quisque non ante lacus. Proin venenatis felis odio. Ut non metus quis massa malesuada fringilla. Quisque vehicula arcu et eros ullamcorper, a elementum nisl dictum. Mauris nec nibh ut massa aliquet vehicula. Nulla maximus mattis ipsum at blandit. Mauris ultrices luctus diam, quis pellentesque ligula finibus quis. Vestibulum libero ex, accumsan quis maximus eu, cursus eget nisl.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"
