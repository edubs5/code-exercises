// 03
// Take the sen parameter being passed and return the largest word in the string.
// If there are two or more words that are the same length, return the first word
// from the string with that length. Ignore punctuation and assume sen will not be empty.

function longest(sen) {
  var only_ltrs = sen.replace(/[^a-zA-z]/g, " ");
  var ary = only_ltrs.split(" ");
  var longest_word = [""];
  for ( var i = 0; i < ary.length; i ++) {
    if (ary[i].length > longest_word[0].length) {
      longest_word[0] = ary[i];
    }
  }
  return(longest_word[0]);
}

longest("a b c dee");
longest("a b!!!!!!! c deer");
longest("123456789 98765432 a");