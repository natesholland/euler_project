// yes I know this one can by multiplied out pretty quickly but I wanted to play
// with javascript
// The factorization is 2 * 3 * 2 * 5 * 7 * 2 * 3 * 11 * 13 * 2 * 17 * 19 = 232792560

(function() {
  var max = 1;
  for (i = 1; i <= 20; i++) {
    max = max * i;
  }

  isDivisble = function(x) {
    var isDivis = true
    for (j = 1; j <= 20; j++) {
      if (x % j != 0) {
        isDivis = false;
        break;
      }
    }
    return isDivis;
  };

  print(isDivisble(232792560));

}).call(this);
