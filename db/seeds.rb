# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


author = User.create(
  username: 'Mark Im gonna make it Twain',
  biography: 'All white eerthang'
)

story_one = author.stories.create(
  title: "Monsters in my Head",
  description: "To be Frank, I am steined."
)

telling_one = story_one.tellings.create(  
  title: "Default",
  description: "Original Story Sequence."
)

snippet_one = telling_one.story_snippets.create(
  title: 'Medusa Enters',
  message: 'Rome e yo way over here Romeo'
)

device_one = author.plot_devices.create(
  title: '',
  type_name: 'text_block',
  message: "Romeo Romeo where four art thou(sand dollars), Romeo"
)

snippet_one.plot_device = device_one

author_two = User.create(
  username: 'Chaucer',
  biography: 'One time I was thrown out of a window, and everyone was confused for a second about what I was, and so the newspapers said that there was an Unidentified Flying Chaucer.'
)
