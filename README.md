
# Twitter Clone

## User stories

* User can create an account
* User can log in and log out of the account
    - User must log in to read any pages in the site
    - User can set the name when registering
    - User's name cannot be repeated. (must be unique in the database)
* User can edit their own profile (incl. name, introduction and avatar)
* User can post a tweet (limited to 140 words)
    - User can read all the tweets on the home page
* User can visit another user's profile and all their tweets
    - User can reply to others tweet
    - User can follow/unfollow other users (cannot follow themselves)
    - User can like/unlike tweets
* Any logged in user can see following information for a specific user
    - Tweets - Sort by date
    - Following - show the following list of the user, sorted by the time which the record was created
    - Follower - show the follower of the user, sorted by the time which the record was created
    - Like - show the tweet list liked by the user, sorted by the time which the record was created


## Setup

1. Clone the application
```
git clone https://github.com/BernardLeong/friendz.git
```

2. Run bundle
```
cd friendz(if you are using code editor, Ctrl K + O into the git clone folder)
bundle install
```

3. Setup the database
```
rake db:create db:migrate db:seed
```

4. Run rails server
```
rails s
```


