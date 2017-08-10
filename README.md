# Ruby on Rails myapp2 project

The Ruby on Rails codes are from https://www.railstutorial.org/<br />
The CSS template is from: http://www.free-css.com/free-css-templates/page207/saturn<br />
My blog is http://rorquest.blogspot.com/<br />
The Heroku production version is: https://vast-mesa-46380.herokuapp.com/<br />
The mail server SendGrid is disable. There are no account activation and password reset functions.<br />

## Getting started
If you have Ubuntu Linux with Ruby on Rails Framework installed, to get started with the app:<br />
1. Clone the repo:
```
$ git clone https://github.com/jimmy2046/myapp2.git
```

2. Install the needed gems:

```
$ bundle install
```

3. Migrate the database:

```
$ rails db:migrate
```

4. Seed the database:
```
$ rails db:seed
```

5. Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

6. If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails s -b 0.0.0.0 -p 3000
```

## Revision history
Aug 8, 2017: Add user following (completed all 14 chapters of Michael Hartl's tutorial - NO mail server)<br/>
Aug 9, 2017: Organized CSS style<br/>
