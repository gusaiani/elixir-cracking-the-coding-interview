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

  const charArray = this.split('').sort();

  for (var i = 0, len = charArray.length; i < len - 1; i++) {
    if (charArray[i] == charArray[i + 1]) return false;
  }

  return true;
}

console.log("".areAllCharsUnique());
console.log("arstdhneiqwfp".areAllCharsUnique());
console.log("teste".areAllCharsUnique());
console.log("artt".areAllCharsUnique());
