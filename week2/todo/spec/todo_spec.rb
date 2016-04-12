require_relative "../lib/task.rb"
require_relative "../lib/todo.rb"

RSpec.describe "Todo" do
    before :each do
        @todo = TodoList.new("Billy Bob Thornton")
        10.times do |i|
            task = Task.new("This is the #{i}th task.")
            @todo.add_task!(task)
        end
    end
    it "Test whether there is a user." do
        expect(@todo.user.class).to eq(String)
    end
    it "Test whether add_task works." do
        expect(@todo.tasks.length).to eq(10)
        @todo.tasks.each do |task|
            expect(task.class).to eq(Task)
        end
    end
    it "Test whether delete_task! works." do
        an_id = @todo.tasks[5].id
        @todo.delete_task!(an_id)
        @todo.tasks.each do |task|
            expect(task.id).not_to eq(an_id)
        end
    end
    it "Test whether we can find the indicated element." do
        an_id = @todo.tasks[5].id
        another_id = @todo.tasks[6].id
        @todo.delete_task!(an_id)
        expect(@todo.find_by_task_id(an_id)).to eq(nil)
        expect(@todo.find_by_task_id(another_id).id).to eq(another_id)
    end

    it "Test whether sort_by_created works." do
        sorted_todo = @todo.sort_by_created
        (sorted_todo.length - 1).times do |i|
            expect(sorted_todo[i].created_at <= sorted_todo[i + 1].created_at).to eq(true)
        end
    end
    it "Test the storage" do
        @todo.save
    end
end