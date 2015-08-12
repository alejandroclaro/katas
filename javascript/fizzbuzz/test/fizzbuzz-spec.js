var unitjs   = require('unit.js');
var fizzbuzz = require('../fizzbuzz.js')

describe('The FizzBuzz algorithm', function(){
  it('should produce Fizz if the input is divisible by 3', function(){
    fizzbuzz.compute(3).should.be.equal('Fizz');
    fizzbuzz.compute(6).should.be.equal('Fizz');
    fizzbuzz.compute(9).should.be.equal('Fizz');
    fizzbuzz.compute(999).should.be.equal('Fizz');
  });
  it('should produce Buzz if the input is divisible by 5', function(){
    fizzbuzz.compute(5).should.be.equal('Buzz');
    fizzbuzz.compute(10).should.be.equal('Buzz');
  });
  it('should produce FizzBuzz if the input is divisible by 3 and 5', function(){
    fizzbuzz.compute(15).should.be.equal('FizzBuzz');
    fizzbuzz.compute(30).should.be.equal('FizzBuzz');
  });
  it('should produce the same input if the input is NOT divisible by 3 or 5', function(){
    fizzbuzz.compute(1).should.be.equal('1');
    fizzbuzz.compute(2).should.be.equal('2');
    fizzbuzz.compute(4).should.be.equal('4');
    fizzbuzz.compute(7).should.be.equal('7');
  });
});
