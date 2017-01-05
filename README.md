# Set up for testing with Ruby

### Install Ruby

##### For Mac

Good news, you already have Ruby!

Double check by executing this:
```
ruby -v
```

If you see output, you're all set.
If you get an error, follow the Windows instructions below.

##### For Windows 

- Download the installer from https://www.ruby-lang.org/en/documentation/installation/.
- Run the installer with all default settings.

----------------------------

### Install gems

Ruby libraries are called gems & are incredibly easy to install for your own use.

In your command line, just execute something in this pattern:

`gem install gem_name`

Now the library named *gem_name* is on your computer & globally accesible. Any file in your solution that needs the library just has to require it.

To get the example test up & running, cd to selenium101/ruby and execute

`bundle install`.

##### Next Steps

1. Clone this code repository
2. Research ways to install gems with the 'bundler' gem
3. Install a selenium server (suggestions: selenium.jar or selenium-standalone)
4. Run the example test
``` ruby
ruby espn_homepage.rb
```