require "yaml/store"

class TodoList
    attr_reader :tasks, :user
    def initialize(user)
        @todo_store = YAML::Store.new("./public/tasks.yml")
        @tasks = []
        @user = user
    end

    def add_task!(task)
        @tasks << task
    end

    def delete_task!(deletion_id)
        @tasks.delete_if {|task| task.id == deletion_id}
    end

    def find_by_task_id(desired_id)
        return_task = nil
        @tasks.each do |task|
            if task.id == desired_id
                return_task = task
            end
        end
        return_task
    end

    def sort_by_created
        @tasks.sort do |task1, task2|
            task1.created_at <=> task2.created_at
        end
    end

    def save
        @todo_store.transaction do
            @todo_store[@user] = @tasks
        end
    end

    def load
        @todo_store.transaction do
            if @todo_store[@user] != nil
                @tasks = @todo_store[@user]
            end
        end
    end
end