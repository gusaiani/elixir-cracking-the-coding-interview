/*
  * Chapter 1
  * Page 90
  *
  *   1.1 Is Unique:
  *  Implement an algorithm to determine if a string has all unique characters.
  * What if you cannot use additional data structures?
 */
String.prototype.areAllCharsUnique = function() {
  if(!this.length) return true;

  var linkedList = {};

  for (var i = 0, len = this.length; i < len; i++) {
    var char = this[i];

    if(linkedList[char] === undefined) {
      linkedList[char] = 0;
    }
    linkedList[char]++;

    if(linkedList[char] > 1) return false;
  }
  return true;
}

console.log("".areAllCharsUnique());
console.log("arstdhneiqwfp".areAllCharsUnique());
console.log("teste".areAllCharsUnique());
