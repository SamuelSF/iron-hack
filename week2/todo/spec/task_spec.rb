require_relative "../lib/task.rb"

RSpec.describe "Task" do
    task1 = Task.new("Buy the milk.")
    task2 = Task.new("Wash the car.")

    it "Test id method." do
        expect(task1.id).to eq(1)
        expect(task2.id).to eq(2)
    end

    it "Test content method" do
        expect(task1.content).to eq("Buy the milk.")
        expect(task2.content).to eq("Wash the car.")
    end

    it "Test complete? method before competion of tasks" do
        expect(task1.complete?).to eq(false)
        expect(task2.complete?).to eq(false)
    end

    it "Test complete! and complete? methods after task completion." do
        task1.complete!
        expect(task1.complete?).to eq(true)
        task2.complete!
        expect(task2.complete?).to eq(true)
    end

    it "Test created_at method for time of creation." do
        expect(task1.created_at.class).to eq(Time)
        expect(task2.created_at.class).to eq(Time)
    end

    it "Test update content method for tasks." do
        task1.update_content!("Milk the buy.")
        task2.update_content!("Car the wash.")
        expect(task1.content).to eq("Milk the buy.")
        expect(task2.content).to eq("Car the wash.")
    end

    it "Test updated_at attribute and whether it updates." do
        t1 = task1.updated_at
        t2 = task2.updated_at
        task1.update_content!("Buy the milk.")
        task2.update_content!("Wash the car.")
        expect(task1.updated_at).to be > t1
        expect(task2.updated_at).to be > t2
    end
end