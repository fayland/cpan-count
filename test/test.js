// Generated by CoffeeScript 1.6.3
var get;

get = require('../cpan-count');

exports.Cpan = {
  success: function(test) {
    var err, fn;
    test.expect(1);
    fn = function(count) {
      var isMoreThan10;
      isMoreThan10 = count > 10;
      test.equals(isMoreThan10, true);
      return test.done();
    };
    err = function() {
      test.ok(false);
      return test.done();
    };
    return get('FAYLAND').then(fn, err);
  },
  error: function(test) {
    var fn;
    test.expect(1);
    fn = function() {
      test.ok(true);
      return test.done();
    };
    return get('ajkldanjkndjklfndjfnjkdsnfjrnfjkdndjkvnifsdvnfjkvnsrifrifnsermnerjifnerjfnjr').then((function() {}), fn, (function() {}));
  }
};
