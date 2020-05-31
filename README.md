

---------------------------------------------------------------------------
Highest Level: 
---------------------------------------------------------------------------
90+ for Deletion and News pull down menu

Note: 
for 80+, the remember is implemented but does not truly work
The forget password feature seems to send an email according to the terminal log, but the mailing address does not receive an email. The reset link found in the log can successfully reset password.
The header displays the name of user if it is given, otherwise display email address. It works in local development, but on Heroku, the text does not display but the link is still there and does link to profile.


---------------------------------------------------------------------------
Time
---------------------------------------------------------------------------

Si Long Leong Time:
Project,Duration
RAD,36:59:32

Rochelle Balasuriya Time:
Project,Duration
RAD,35:54:00

---------------------------------------------------------------------------
Heroku Development Log:
---------------------------------------------------------------------------

(base) MacBook-Pro:RAD_assignment ruchellebalasuriya$ heroku container:push web -a rad2020-s3781183-s3785099

=== Building web (/Users/ruchellebalasuriya/Desktop/git_hub/RAD_assignment/Dockerfile)

Sending build context to Docker daemon  86.54MB

Step 1/13 : FROM ruby:2.5

 ---> 5a76bd71024b

Step 2/13 : RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

 ---> Using cache

 ---> c5a9b2ffbcd8

Step 3/13 : RUN mkdir /myapp

 ---> Using cache

 ---> b9260b56e801

Step 4/13 : WORKDIR /myapp

 ---> Using cache

 ---> 16e49c9ce3ba

Step 5/13 : COPY Gemfile /myapp/Gemfile

 ---> Using cache

 ---> 16bf8746f7ad

Step 6/13 : COPY Gemfile.lock /myapp/Gemfile.lock

 ---> Using cache

 ---> ea7923a22d45

Step 7/13 : RUN bundle install

 ---> Using cache

 ---> 2b51bd21808b

Step 8/13 : COPY . /myapp

 ---> c13dafc96468

Step 9/13 : COPY entrypoint.sh /usr/bin/

 ---> 5447de4302cf

Step 10/13 : RUN chmod +x /usr/bin/entrypoint.sh

 ---> Running in e3327689c492

Removing intermediate container e3327689c492

 ---> 1b218231771a

Step 11/13 : ENTRYPOINT ["entrypoint.sh"]

 ---> Running in 5d0110186c66

Removing intermediate container 5d0110186c66

 ---> 1aced0308cc6

Step 12/13 : EXPOSE 3000

 ---> Running in fccbc5676ec5

Removing intermediate container fccbc5676ec5

 ---> eaae5ce24656

Step 13/13 : CMD ["rails", "server", "-b", "0.0.0.0"]

 ---> Running in 1d949673a646

Removing intermediate container 1d949673a646

 ---> 800166290965

Successfully built 800166290965

Successfully tagged registry.heroku.com/rad2020-s3781183-s3785099/web:latest

=== Pushing web (/Users/ruchellebalasuriya/Desktop/git_hub/RAD_assignment/Dockerfile)

The push refers to repository [registry.heroku.com/rad2020-s3781183-s3785099/web]

9e33c3589f5d: Pushed 

6d5d621b39dc: Pushed 

e601033a6d84: Pushed 

5d8d5c370412: Layer already exists 

748a2d68cc4a: Layer already exists 

094514eaa06d: Layer already exists 

b2adf2fc048e: Layer already exists 

42bbd61dde1c: Layer already exists 

a32d2feb3624: Layer already exists 

e86a2da7766e: Layer already exists 

085544f12214: Layer already exists 

271910c4c150: Layer already exists 

6670e930ed33: Layer already exists 

c7f27a4eb870: Layer already exists 

e70dfb4c3a48: Layer already exists 

1c76bd0dc325: Layer already exists 

latest: digest: sha256:448cb3e0e5fa6116f014c4ad0a054d10599943d12c318a1578436ad0fdd83b07 size: 3675

Your image has been successfully pushed. You can now release it with the 'container:release' command.

(base) MacBook-Pro:RAD_assignment ruchellebalasuriya$ heroku container:release web -a rad2020-s3781183-s3785099

Releasing images web to rad2020-s3781183-s3785099... done

---------------------------------------------------------------------------
Heroku and GitHub
---------------------------------------------------------------------------

Heroku URL: https://rad2020-s3781183-s3785099.herokuapp.com/

GitHub Name: RAD2020_s3781183_s3785099

GitHub Link: https://github.com/s3781183/RAD2020_s3781183_s3785099

