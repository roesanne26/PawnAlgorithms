// Combination Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function calculates the factorial of a number using recursion.
stock FactorialOf(value)
	return value > 1 ? value * FactorialOf(value - 1) : 1;

// This function calculates the number of existing combinations using iteration
stock Combinations(numberOfElements, numberOfSelectedElements){

    // We first need to verify that if it is a valid set of elements
    if(numberOfSelectedElements > numberOfElements) return 0;

    // Here we loop applying the principle of counting in mathematics.
	for(new i = 1; i < numberOfSelectedElements; i++)
		baseResult *= numberOfElements - i;

    // Based on the formula of the combinations, just adjust the remaining error margin.
    // So we return de value.
	return baseResult/FactorialOf(numberOfSelectedElements);
}
// Combinations
// INPUT: (10, 5)
// OUTPUT: 252
