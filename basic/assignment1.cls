Integer i = 1;
Integer sumOfNumbers = 0;

while (i <= 20) {
    if (Math.mod(i, 2) == 0) {
        sumOfNumbers = sumOfNumbers +  i;
    }
    System.debug('Total ' + sumOfNumbers);
    i++;
}
System.debug('Final Sum ' + sumOfNumbers);
