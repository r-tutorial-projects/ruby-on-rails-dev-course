require_relative 'crud'

users = [
    {username: 'rubeen', password: '333'},
    {username: 'tester', password: '123'},
    {username: 'hans', password: 'password'},
    {username: 'peter', password: 'peter'},
    {username: 'laura', password: 'laura'}
]

hashed_users = Crud.create_secure_users users
p Crud.authenticate "rubeen", "333", hashed_users
