#3 
Create an app where a user can write messages kind of like Facebook's wall (but much simpler). should have two models - Post and Reply.

Database should look something like this

post
body:string

message
name:string
body:string
thread_id (message_id)

Deploy this to a different Github repo and post link in this channel


The goal here is for you to learn how to display information in the .erb pages which belongs to two tables with CRUD. You can base this on scaffolding and work from there.

Guide:
create post and reply tables using scaffolding. Create a belongs_to has_many relationship between the models

https://learn.co/lessons/displaying-has-many-through-rails

migrate database

Open rails console with rails c after you have some test data. Try running Post.last.messages and Message.last.posts. If it returns the messages for the post or the post for the message, then the relationship is working

You will need to basically just make it so that you have a form for creating a post, and a form for creating a message in reply to a post. You should embed the post_id in the form as a hidden input. This is similar to selecting an author_id in the previous assignment, but the field is hidden. You will need to update strong parameters in the same way.

https://stackoverflow.com/questions/3131982/how-do-i-use-hidden-field-in-a-form-for-in-ruby-on-rails

Then, your code should look something like this in the .erb:

<% Post.messages.each do |message| %>
<%= message.author %>
<%= message.body %>
<% end %>

This is a for loop which will display in HTML all of the messages for the post.


