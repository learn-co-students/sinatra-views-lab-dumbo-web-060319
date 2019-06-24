class Date
    
    def self.today
        Date.today.strftime("%A, %B %d, %Y")
    end

    def self.month
        self.today.split(", ")[0]
    end

end