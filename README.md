#README

#MODEL

1. Users
 -Relationship
    has_many : postings
    has_many : comments
 -Elements
    email / password 
    
2. Postings
 -Relationship
    belongs_to : Users
    has_many : comments
 -Elements
    title, body, user_id
 
3. Comments
 -Relationship
     belongs_to : Users
     belongs_to : Postings
 -Elements
     content, user_id, posting_id
     
-----------------------------------

#Controllers /Views

posting controllers
comment controllers
User => devise gemfile ()

-----------------------------------

# CSS / JS : Bootstrap
