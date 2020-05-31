User.create!(name:"RAD", mobile: "0450840293",email:"rad2020rmit@gmail.com", password:"Rails2020",password_confirmation:"Rails2020")
User.create!( mobile: "0455839203",email:"jack@email.com", password:"Rails2020",password_confirmation:"Rails2020")
User.create!(mobile: "04593020596",email:"lara@gmail.com", password:"Rails2020",password_confirmation:"Rails2020")
User.create!(mobile: "04395703820",email:"maddy@email.com", password:"Rails2020",password_confirmation:"Rails2020")
User.create!(mobile: "04939204959",email:"jenna@gmail.com", password:"Rails2020",password_confirmation:"Rails2020")
User.create!(mobile: "03059792024",email:"mary@gmail.com", password:"Rails2020",password_confirmation:"Rails2020")


 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:1,title:"MIDI 2.0 Specifications Available for Downloads",topic:"Rmit")
 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:2,title:"Revoult raises $500M at a $5.5B valuation",topic:"A.I")
 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:3,title:"Google is moving EU citizens' data to US?",topic:"V.R.")
 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:4,title:"Amazon Go Grocery-Full Store open now",topic:"Game")
 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:3,title:"Mathematics for the Adventurous Self-Learner",topic:"Rmit")
 Micropost.create!(content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.", user_id:2,title:"ZFS on Linux repo renamed to openzfs/ZFS",topic:"A.I")

Comment.create!(body:"Interesting...", micropost_id:1,user_id:2)
Comment.create!(body:"What is this??", micropost_id:2,user_id:3)
Comment.create!(body:"Cool", micropost_id:1,user_id:3)
Comment.create!(body:"Nice work", micropost_id:4,user_id:1)
Comment.create!(body:"Good read", micropost_id:6,user_id:4)
 