{ expect } = require 'chai'

describe 'Module', ->
  it 'can be required', ->
    require '..'

  it 'exports an object', ->
    mod = require '..'
    expect mod
      .to.be.an 'object'

  describe 'object', ->
    obj = require '..'

    it 'has a property species that equals cat', ->
      expect obj
        .to.have.property 'species'
        .which.is.a       'string'
        .and.is.eql       'cat'

    it 'has a property name that equals Skubi', ->
      expect obj
        .to.have.property 'name'
        .which.is.a       'string'
        .and.is.eql       'Skubi'

    it 'has a method sound that returns a name and voice', ->
      expect obj
        .to.have.property 'sound'
        .which.is.a       'function'

      expect obj.sound()
        .to.eql 'Skubi: miał!'
