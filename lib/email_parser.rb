# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(addresses)
        @addresses = addresses
    end
    
    def parse
        comma_sep = @addresses.split(",")
        space_sep = comma_sep.map { |word| word.split }
        clean_result = space_sep.flatten.compact.uniq
        clean_result
    end
end
