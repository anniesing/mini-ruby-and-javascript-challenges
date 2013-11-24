function FactorFinder(num){
  this.num = num;
  this.findFactors = function(){
    factors = [];
    for(var i = 2; i < this.num; i++){
      if(this.num%i == 0){
        factors[factors.length] = i;
        this.num /= i;
      }
    }
    if(this.num !== 1){
      factors[factors.length] = i;
    }
    return factors;
  },
  this.findLargestFactor = function(){
    var factors = this.findFactors();
    console.log(factors[factors.length - 1]);
  }
}

var question1 = new FactorFinder(10);
question1.findLargestFactor();

var question2 = new FactorFinder(600851475143);
question2.findLargestFactor();