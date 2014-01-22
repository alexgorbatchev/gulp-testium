require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
# using compiled JavaScript file here to be sure module works
testium = require '../lib/gulp-testium.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'gulp-testium', ->
  it 'passing fixture', (done) ->
    file = path: "#{__dirname}/fixture-passing.coffee", isStream: -> no

    console.log """

      --------- SHOULD SEE PASSING FIXTURE --------

    """

    stream = testium()
    stream.write file
    stream.end()
    stream.on 'error', (err) ->
      throw err if err
      done()

    stream.on 'end', done

  it 'failing fixture', (done) ->
    file = path: "#{__dirname}/fixture-failing.coffee", isStream: -> no

    console.log """

      --------- SHOULD SEE FAILING FIXTURE --------

    """

    stream = testium screenshotDirectory: __dirname
    stream.write file
    stream.end()
    stream.on 'error', (err) ->
      throw err unless err.plugin is 'gulp-testium'
      done()


