class Task
    attr_reader :content, :id, :created_at, :updated_at
    def initialize(content)
        @content = content
        @complete = false
        @created_at = Time.new
        @updated_at = nil
        @id = generate_id

    end

    def complete?
        @complete
    end

    def complete!
        @complete = true
    end

    def update_content!(new_content)
        @content = new_content
        @updated_at = Time.new
    end

    private
    def generate_id
        seed = (@content + @created_at.to_s).split("").reduce(0) do |sum, x|
            sum + x.ord
        end
        seed % 10000
    end
end