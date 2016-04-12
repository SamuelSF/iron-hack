class PasswordChecker

    def initialize(user,pass)
        @user=user
        @pass=pass
    end

    def check_password
        lengthcheck? && variety? && emailfilter
    end


    def lengthcheck?
        @pass.length >= 7
    end

    def variety?
        lower_letter=false
        upper_letter=false
        number=false
        symbol=false
        #symbollist=["!","@","#","$","%","^","&","*","(",")","~","+","-"]
        (0..@pass.length-1).each do |i|
            if @pass[i].ord >=48 && @pass[i].ord<=57
                number=true
            elsif (@pass[i].ord >=65 && @pass[i].ord<=90)
                upper_letter=true
            elsif (@pass[i].ord >=97 && @pass[i].ord<=122)
                lower_letter=true
            elsif @pass[i].ord >=33 && @pass[i].ord <=47
                symbol=true
            elsif @pass[i].ord >=58 && @pass[i].ord <=64
                symbol=true
            elsif @pass[i].ord >=91 && @pass[i].ord <=96
                symbol=true
            elsif @pass[i].ord >= 123 && @pass[i].ord <= 126
            end
            #puts "#{i} #{@pass[i]} #{lower_letter} #{upper_letter} #{symbol} #{number}"
        end
        lower_letter && upper_letter && number && symbol
    end


    def emailfilter
        name=@user.split('@')[0]
        domain=@user.split('@')[1]

        !(@pass.include?(name) || @pass.include?(domain))

    end
end