
 class Student
    # give both getters and setters
      attr_accessor :first_name, :last_name, :username, :email, :password
    
    # Intializer method
      def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
      end
    
    
    
    # Assumed method
      def to_s
      "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
      end
    # Put all methods to interact with the Class in the class ***********
    end
    
    # create an object of the class
    brettford = Student.new("Brettford", "Seifried", "RubyDev", "seifriedbrett@gmail.com", "password1")
    john = Student.new("John", "Doe", "ReactDev", "johndoe@gmail.com", "password2")
    puts brettford
    puts john
    # Alters the object's last name
    brettford.last_name = john.last_name
    puts "Brettford is altered"
    puts brettford