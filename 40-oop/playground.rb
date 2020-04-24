require 'bcrypt'

correct = "F?nZ?>c#v_]aHUPtK^^Zqk,^"
wrong = "test"

pass = BCrypt::Password.create("F?nZ?>c#v_]aHUPtK^^Zqk,^")
p pass.checksum
passNew = BCrypt::Password.new "$2a$12$gfQNPleNsaPNDWhNEe5XDuoAG36if6AjQMlnXJL9zTrU2uig65.NO"

p passNew == pass

p pass == wrong
p pass == correct
