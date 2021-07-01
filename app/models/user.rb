class User < ApplicationRecord
    validates_uniqueness_of :username

    def self.generate
        adjectives = ['Anciet', 'Broken', 'Creative', 'Dangerous', 'Effective', 'Flying']
        nouns = ['Highway', 'Intern', 'Hacker', 'Lion']
        number = rand.to_s[2..4]
        username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
        create(username: username)
    end
end
