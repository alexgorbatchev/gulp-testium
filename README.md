# gulp-testium

This is a [gulp](http://gulpjs.com) plugin for [testium](https://github.com/groupon/testium).

[![Dependency status](https://david-dm.org/alexgorbatchev/gulp-testium.png)](https://david-dm.org/alexgorbatchev/gulp-testium)
[![devDependency Status](https://david-dm.org/alexgorbatchev/gulp-testium/dev-status.png)](https://david-dm.org/alexgorbatchev/gulp-testium#info=devDependencies)
[![Build Status](https://secure.travis-ci.org/alexgorbatchev/gulp-testium.png?branch=master)](https://travis-ci.org/alexgorbatchev/gulp-testium)

[![NPM](https://nodei.co/npm/gulp-testium.png?downloads=true)](https://npmjs.org/package/gulp-testium)

## Support

Please help me spend more time developing and maintaining awesome modules like this by donating!

The absolute best thing to do is to sign up with [Gittip](http://gittip.com) if you haven't already and donate just $1 a week. That is roughly a cup of coffee per month. Also, please do donate to many other amazing open source projects!

[![Gittip](http://img.shields.io/gittip/alexgorbatchev.png)](https://www.gittip.com/alexgorbatchev/)
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=PSDPM9268P8RW "Donate once-off to this project using Paypal")

## Installation

    npm install gulp-testium

## Usage Example

    var gulp = require('gulp');
    var testium = require('gulp-testium');

    gulp.task('test', function() {
      gulp.src('test/*.js')
        .pipe(testium())
    });

## API

### testium(opts = {})

See [testium](https://github.com/groupon/testium) page for possible configuration options.

## Testing

    npm test

## License

The MIT License (MIT)

Copyright 2014 Alex Gorbatchev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.