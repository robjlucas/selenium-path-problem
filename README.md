# README

Ruby version: 3.2.2

Empty new Rails app just to demonstrate Selenium Chrome path bug.

Bug report raised [here](https://github.com/SeleniumHQ/selenium/issues/13433). Further details available there.

Running this on Ubuntu 22.04.3 LTS raises the below error:
```
bin/rspec spec/raise_selenium_path_error.rb
```

```ruby
Failures:

  1) Selenium path error raised by visiting the default Rails page
     Failure/Error: background { visit "/" }
     
     Selenium::WebDriver::Error::UnknownError:
       unknown error: no chrome binary at /usr/bin/google-chrome
     # #0 0x56103e815e43 <unknown>
     # #1 0x56103e4de687 <unknown>
     # #2 0x56103e513236 <unknown>
     # #3 0x56103e5116f5 <unknown>
     # #4 0x56103e561c6d <unknown>
     # #5 0x56103e5563c3 <unknown>
     # #6 0x56103e51e9a3 <unknown>
     # #7 0x56103e51fd6e <unknown>
     # #8 0x56103e7dd59d <unknown>
     # #9 0x56103e7e14c4 <unknown>
     # #10 0x56103e7cb922 <unknown>
     # #11 0x56103e7e1f85 <unknown>
     # #12 0x56103e7b1bae <unknown>
     # #13 0x56103e803f88 <unknown>
     # #14 0x56103e80418d <unknown>
     # #15 0x56103e814f79 <unknown>
     # #16 0x7fead9f8aac3 <unknown>
     # ./spec/raise_selenium_path_error.rb:4:in `block (2 levels) in <top (required)>'

Finished in 2.19 seconds (files took 0.82647 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/raise_selenium_path_error.rb:6 # Selenium path error raised by visiting the default Rails page
```

The path for the Chrome binary is, however, correct:

```sh
$ which google-chrome
/usr/bin/google-chrome
```
