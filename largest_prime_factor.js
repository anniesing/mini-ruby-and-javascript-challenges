function FactorFinder(num){
  this.num = num;
  this.factors = [];
  this.findFactors = function(){
    for(var i = 2; i < this.num; i++){
      if(this.num%i == 0){
        this.factors[this.factors.length] = i;
        this.num /= i;
      }
    }
    if(this.num !== 1){
      this.factors[this.factors.length] = i;
    }
    this.largestFactor = this.factors[this.factors.length-1];
  }
}

var myNum = new FactorFinder(10);
myNum.findFactors();
console.log(myNum.largestFactor);

var myOtherNum = new FactorFinder(600851475143);
myOtherNum.findFactors();
console.log(myOtherNum.largestFactor);