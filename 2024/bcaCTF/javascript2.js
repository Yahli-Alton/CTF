function obfuscateCode(initFunction, targetValue) {
  var getString = getStringFromArray,
      charArray = initFunction();

  while (true) {
      try {
          var computedValue = parseInt(getString(0x1be)) / 1 * (-parseInt(getString(0x1cc)) / 2) + 
                              parseInt(getString(0x1c2)) / 3 + 
                              parseInt(getString(0x1c6)) / 4 * (parseInt(getString(0x1c7)) / 5) + 
                              -parseInt(getString(0x1cb)) / 6 * (parseInt(getString(0x1c1)) / 7) + 
                              -parseInt(getString(0x1ca)) / 8 + 
                              parseInt(getString(0x1c0)) / 9 + 
                              parseInt(getString(0x1c4)) / 10 * (parseInt(getString(0x1bf)) / 11);

          if (computedValue === targetValue) break;
          else charArray.push(charArray.shift());
      } catch (error) {
          charArray.push(charArray.shift());
      }
  }
}

function getStringFromArray(index, offset) {
  var stringArray = initializeStringArray();
  return getStringFromArray = function (index, offset) {
      index = index - 0x1bd;
      var value = stringArray[index];
      return value;
  }, getStringFromArray(index, offset);
}

function initializeStringArray() {
  var array = [
      'getField', 'charCodeAt', '100554TvjbzQ', '11jHxsKn', '7564617EnopjV', 
      '2219BJkXWe', '3372363teHOVr', 'alert', '5165870pcLTuS', 'producer', 
      '32KYViix', '925835vZTXso', 'Flag is incorrect!', 'length', 
      '8132288HsoZUP', '13494jFFdda', '26rtwUNT'
  ];
  initializeStringArray = function () { return array; };
  return array;
}

function update() {
  var getString = getStringFromArray;
  var inputString = this[getString(0x1cd)]('A').value;
  var encodedArray = [];

  for (var i = 0; i < inputString[getString(0x1c9)]; i++) {
      encodedArray.push(inputString.charCodeAt(i) ^ parseInt(info[getString(0x1c5)]) % (0x75 + i));
  }

  var expectedArray = [
      0x46, 0x2d, 0x62, 0x11, 0x6b, 0x4c, 0x72, 0x5f, 0x76, 0x38, 
      0x19, 0x28, 0x5f, 0x31, 0x36, 0x63, 0xf7, 0xb1, 0x69, 0x2a, 
      0x18, 0x5e, 0x36, 0x1, 0x37, 0x3a, 0x1c, 0x5, 0x11, 0x56, 
      0xe5, 0x7b, 0x64, 0x2c, 0x11, 0x14, 0x53, 0x5a, 0x35, 0x17, 
      0x41, 0x62, 0x3
  ];

  if (encodedArray.length != expectedArray.length) {
      app[getString(0x1c3)]('Flag is incorrect!');
      return;
  }

  for (var i = 0; i < expectedArray.length; i++) {
      if (encodedArray[i] != expectedArray[i]) {
          app[getString(0x1c3)]('Flag is incorrect!');
          return;
      }
  }

  app[getString(0x1c3)]('Flag is correct!');
}
