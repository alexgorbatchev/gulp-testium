defaults = require 'lodash.defaults'
testium = require 'testium'
through = require 'through'
{PluginError, log, colors} = require 'gulp-util'

module.exports = (opts = {}) ->
  files = []

  opts = defaults opts,
    applicationPort: 4000
    screenshotDirectory: "#{__dirname}"
    browser: 'phantomjs' # chrome | firefox
    appDirectory: "#{__dirname}" # allows relative paths to files/dirs to test

  process = (file) ->
    return @emit 'error', new PluginError('gulp-testium',  'Streaming not supported') if file.isStream()

    files.push file.path

  end = ->
    log 'karma running for', colors.magenta(files.length), files.length is 1 and 'file...' or 'files...'

    done = => @emit 'end'

    return done() if files.length is 0

    opts.tests = files

    testium.run opts, (err, exitCode) =>
      @emit 'error', new PluginError 'gulp-testium', 'Karma exited with errors' if exitCode > 0
      @emit 'error', err if err
      done()

  through process, end
