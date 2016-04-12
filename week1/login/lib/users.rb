class Users
    def initialize
        @users = {}
    end

    def add_user(user, password)
        @users[user.downcase] = password
    end

    def check_login?(user, password)
        @users[user.downcase] == password
    end
end