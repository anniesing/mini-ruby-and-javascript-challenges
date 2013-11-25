// Goal: Find the largest palindrome made from the product of two 3-digit numbers.
// Problem 4 from Project Euler


function FindLargestPalindrome (num1, num2){
  this.num1 = num1;
  this.num2 = num2;
  this.isAPal = false;
  this.isPalindrome = function(){
    var productAsString = this.product.toString();
    var reverseProductAsString = this.product.toString().split("").reverse().join("");
    if(productAsString == reverseProductAsString){
      return true;
    }
    else{
      return false;
    }
  };
  this.FindPalindromes = function(){
    this.palindromes = []
    for(var i=1; i<=this.num1; i++){
      for(var j=1; j<=this.num2; j++){
        this.product = i*j;
        if(this.isPalindrome()){
          this.palindromes[this.palindromes.length] = this.product;
        }
      }
    }
    return this.palindromes.sort(function(a,b){ return a-b })[this.palindromes.length-1];
  };
  this.largestPalindrome = this.FindPalindromes()

}

// var myNum = new FindLargestPalindrome(91,99);
// console.log(myNum.largestPalindrome);

var testNum = new FindLargestPalindrome(999,999);
console.log(testNum.largestPalindrome);
