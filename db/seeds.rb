@pages = [
  {
    type: 'Project',
    head: 'META',
    lead: 'Сервис для распределения виртуального имущества при жизни',
    tag: 'Design',
    author: 'Прокофьева Татьяна, Мартынова Софья, Зяббарова Лолита',
    cover: 'meta.jpg',
    description: 'Все началось с коллективного брейнсторма на одной из первых пар по креативному проектированию на втором курсе. Вариантов было очень много, но как только мы погружались в них глубже, каждый раз оказывалось, что в целом у них уже были неплохие решения. <br> Очередной велосипед придумывать не хотелось, и тогда мы решили представить, о чем обычно не думают, в диджитал контексте. И тогда в голову стали приходить мысли об экзистенциальом, в часности пришло Завещание.',
    squarecover: 'meta.jpg'
  },
  {
    type: 'Article',
    head: 'META',
    lead: 'Сервис для распределения виртуального имущества при жизни',
    tag: 'Design',
    author: 'Прокофьева Татьяна, Мартынова Софья, Зяббарова Лолита',
    cover: 'meta.jpg',
    description: 'Все началось с коллективного брейнсторма на одной из первых пар по креативному проектированию на втором курсе. Вариантов было очень много, но как только мы погружались в них глубже, каждый раз оказывалось, что в целом у них уже были неплохие решения. <br> Очередной велосипед придумывать не хотелось, и тогда мы решили представить, о чем обычно не думают, в диджитал контексте. И тогда в голову стали приходить мысли об экзистенциальом, в часности пришло Завещание.',
    squarecover: 'images/meta.jpg'
  }

]
# projects: [
#   {
#     head: 'META',
#     lead: 'Сервис для распределения виртуального имущества при жизни',
#     tag: 'Design',
#     author: 'Прокофьева Татьяна, Мартынова Софья, Зяббарова Лолита',
#     cover: 'meta.jpg',
#     description: 'Все началось с коллективного брейнсторма на одной из первых пар по креативному проектированию на втором курсе. Вариантов было очень много, но как только мы погружались в них глубже, каждый раз оказывалось, что в целом у них уже были неплохие решения. <br> Очередной велосипед придумывать не хотелось, и тогда мы решили представить, о чем обычно не думают, в диджитал контексте. И тогда в голову стали приходить мысли об экзистенциальом, в часности пришло Завещание.',
#     squarecover: 'meta.jpg'
#   }
# ],
# articles: [
#   {
#     head: 'META2',
#     lead: 'Сервис для распределения виртуального имущества при жизни',
#     tag: 'Design',
#     author: 'Прокофьева Татьяна, Мартынова Софья, Зяббарова Лолита',
#     cover: 'meta.jpg',
#     description: 'Все началось с коллективного брейнсторма на одной из первых пар по креативному проектированию на втором курсе. Вариантов было очень много, но как только мы погружались в них глубже, каждый раз оказывалось, что в целом у них уже были неплохие решения. <br> Очередной велосипед придумывать не хотелось, и тогда мы решили представить, о чем обычно не думают, в диджитал контексте. И тогда в голову стали приходить мысли об экзистенциальом, в часности пришло Завещание.',
#     squarecover: 'meta.jpg'
#   }
# ]

def seed_data
  drop_db
  #drop_uploads
  # create_articles
  create_pages
  create_admin
end
# Reset Database
def drop_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def drop_uploads
  folders = Dir.glob(File.join(Rails.root, 'public/uploads/*'))
  folders.each { |f| FileUtils.rm_rf(f) }
end

# def create_projects
#   p = Project.create([{
#     head: 'META',
#     lead: 'Сервис для распределения виртуального имущества при жизни',
#     tag: 'Design',
#     author: 'Прокофьева Татьяна, Мартынова Софья, Зяббарова Лолита',
#     cover: 'meta.jpg',
#     description: 'Все началось с коллективного брейнсторма на одной из первых пар по креативному проектированию на втором курсе. Вариантов было очень много, но как только мы погружались в них глубже, каждый раз оказывалось, что в целом у них уже были неплохие решения. <br> Очередной велосипед придумывать не хотелось, и тогда мы решили представить, о чем обычно не думают, в диджитал контексте. И тогда в голову стали приходить мысли об экзистенциальом, в часности пришло Завещание.',
#     squarecover: 'meta.jpg'
#   }])
#   puts "Article just created with"
# end

def create_pages
  @pages.each_with_index do |page, index|
    p = Page.create!(page)
    puts "#{p.id}"
  end
  # pages.shuffle.each_with_index do |page, index|
  #     r = page.article.create!(article)
  #     r = page.project.create!(project)
  #   end
  #   puts 'YOOOOOOOOO'
  # end
end

# def create_pages
#   @pages.each_with_index do |page, index|
#     p = Page.create!(page)
#     puts "Page just created"
#     @pages[index][:id] = p.id
#
#     create_articles(p, page[:articles])
#     create_projects(p, page[:projects])
#   end
# end

# def create_articles
#   articles.each_with_index do |article, i|
#     a = Article.create!(article)
#     puts "Article created"
#   end
# end
#
# def create_projects
#   projects.each_with_index do |project, i|
#     pr = Project.create!(project)
#     puts "Project created"
#   end
# end

def create_admin
  password = '123456'

  admin = User.create(
  email: 'admin@admin.admin',
  admin: true,
  password: password,
  password_confirmation: password
)

puts "Admin with email #{ admin.email } was created"
end

seed_data
