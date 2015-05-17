{ expect }  = require 'chai'

Cat         = require '..'

describe 'Module', ->
  it 'can be required', ->
    require '..'

describe 'Class', ->

  it 'is a function', ->
    expect Cat
      .to.be.a 'function'

  it 'is a constructor', ->
    expect new Cat
      .to.be.an 'object'

  it 'can take name argument', ->
    expect new Cat 'Skubi'
      .to.be.an       'object'
      .with.property  'name'
      .that.is.eql    'Skubi'

describe 'Instance', ->
  cat = new Cat 'Katiusza'

  it 'has a property species that equals cat', ->
    expect cat
      .to.have.property 'species'
      .which.is.a       'string'
      .and.is.eql       'cat'

  it 'has a property name that equals the value of an argument', ->
    expect cat
      .to.have.property 'name'
      .which.is.a       'string'
      .and.is.eql       'Katiusza'

  it 'has a method sound that returns a name and voice', ->
    expect cat
      .to.have.property 'sound'
      .which.is.a       'function'

    expect cat.sound()
      .to.eql 'Katiusza: meow!'

  it 'is different then the other instance', ->
    cat1 = new Cat 'Katiusza'
    cat2 = new Cat 'George'

    expect cat1
      .not.to.be cat2

    expect cat1.sound()
      .not.to.eql cat2.sound()
