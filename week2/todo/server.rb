require 'sinatra'

require_relative('lib/task.rb')
require_relative('lib/todo.rb')

todo_list = TodoList.new "Billy Bob Thornton"
todo_list.load

get '/tasks' do
    @the_tasks = todo_list.tasks
    @the_tasks.each do |task|
        puts task.id
    end
    erb :task_index
end

get '/new_task' do
    erb :new_task
end

post '/create_task' do
    created_task = Task.new params[:a_task]
    todo_list.add_task! created_task
    redirect to('/tasks')
end

post '/complete_task' do
    complete_this = params[:complete].to_i
    completed_task = todo_list.find_by_task_id complete_this
    completed_task.complete!
    redirect to('/tasks')
end

post '/delete_task' do
    delete_this = params[:delete].to_i
    todo_list.delete_task!(delete_this)
    todo_list.store
    redirect to('/tasks')
end