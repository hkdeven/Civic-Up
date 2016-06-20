User.create!([
  {email: "deven@codefll.org", encrypted_password: "$2a$10$E/qftTgBtvMR/xej0suz9eMv1sKLh7JO61GzAkQ9oRuiW/MXnFdtC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-06-20 21:02:50", last_sign_in_at: "2016-06-20 21:00:59", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "makecodenotwar"}
])
Comment.create!([
  {body: "What a great idea!", upvotes: nil, link_id: 1, user_id: 1},
  {body: "PS - I love this AngularJS front end.  Fancy!", upvotes: nil, link_id: 1, user_id: 1},
  {body: "Great idea!", upvotes: nil, link_id: 2, user_id: 1}
])
Link.create!([
  {title: "Community sign-up board", body: "Create an online platform for community to post and upvote civic coding needs.", url: "codefll.org", upvotes: 2, user_id: 1},
  {title: "Internet access for all", body: "Make a series of wifi enhancements to local towers.  Work with local utilities to extend reach into these neighborhoods.  Create a mobile-friendly application displaying free internet access across town.", url: "Some neighborhoods in Fort Lauderdale lack adequate internet infrastructure.", upvotes: 4, user_id: 1}
])
