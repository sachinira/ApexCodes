System.debug('Hello World');

// Variables
Integer intValue = 27;
System.debug('ID ' + intValue);


// Operators
String o = 'Hello World'; //String
System.debug('Blob: ' + Blob.valueOf(o)); //Blob

Boolean isActive = true;
System.debug('Boolean: ' + isActive); //Boolean
System.debug('Date: ' + Date.newInstance(2020, 01, 18)); 
//Date: here we have to create a new instance using this `newInstance` method

Datetime currDateTime = Datetime.now();
System.debug('Date: ' + currDateTime); //DateTime
System.debug('Time: ' + Time.newInstance(22, 40, 36, 03)); //Time

Decimal decValue = 27.01;
System.debug('Decimal: ' + decValue); //Decimal

Id recordId = [Select Id From Account Limit 1][0].Id;
System.debug('ID: ' + recordId); //ID

Integer intValue = 27;
System.debug('Integer: ' + intValue); //Integer

Long longValue = 2147483648L;
System.debug('Long: ' + longValue); //Long

Object objValue = o;
System.debug('Object: ' + objValue); //Object


// Collections
List<Integer> listOfNumbers = new List <Integer> ();
listOfNumbers.add(1);
listOfNumbers.add(2);
listOfNumbers.add(3);
listOfNumbers.add(3);
System.debug('listOfNumbers: ' + listOfNumbers);

Set<Integer> setOfNumbers = new Set<Integer>();
setOfNumbers.add(3);
setOfNumbers.add(2);
setOfNumbers.add(2);
setOfNumbers.add(1);
System.debug('setOfNumbers: ' + setOfNumbers);

Map <Integer,String> mapOfIntegerString = new Map <Integer,String> ();
mapOfIntegerString.put(1, 'one');
mapOfIntegerString.put(2, 'two');
mapOfIntegerString.put(3, 'three');
mapOfIntegerString.put(3, 'four');
System.debug('mapOfIntegerString: ' + mapOfIntegerString);
System.debug('Value at 3: ' + mapOfIntegerString.get(3));


// Do While

// While

// For Loops
// 1
List<Integer> listOfNumbers = new List <Integer> ();
Integer listSize = 10;
    for (Integer i = 0; i <= listSize; i++) {
        listOfNumbers.add(i);
    }
System.debug('List ' + listOfNumbers);

// 2

// 3

Integer evenNumberAddition = 0;
// Conditional statements
// If

for (Integer i = 0; i <= listOfNumbers.size(); i++) {
    if() {

    } else {

    }
}


// Switch
switch on () {
    when value1, value2 {

    }
    when value3 {

    }
    when value4 {

    }
}
// Ternary operators
Uses ?: () ? if true : if false
// Left associative
// This is a short hand for If then else