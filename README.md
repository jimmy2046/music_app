# Ruby on Rails myapp2 project

The Ruby on Rails codes are from https://www.railstutorial.org/
The CSS template is from: http://www.templatemo.com/tm-488-classic/
My blog is http://rorquest.blogspot.com/

## Getting started

To get started with the app, clone the repo
```
$ git clone https://github.com/jimmy2046/myapp2.git
```

and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails s -b 0.0.0.0 -p 3000
```

## Notes
For this verion, I added this line in the Gemfile to make the test runs properply.
```
gem "minitest", "5.10.1"
```