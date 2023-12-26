REPORT ZSORT_RAHUL_EXTREME.


"""" REQUIREMENT - SORT 5 NUMBERS AS HIGHEST AND LOWEST WHICH THE USER INPUTS IN THE PARAMETER SCREEN.




PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i,
            p_num3 TYPE i,
            p_num4 TYPE i,
            p_num5 TYPE i.

DATA: lt_numbers TYPE TABLE OF i,
      lv_highest  TYPE i,
      lv_lowest   TYPE i,
      lv_number   TYPE i.

* Populate the internal table with input numbers
lt_numbers = VALUE #( ( p_num1 ) ( p_num2 ) ( p_num3 ) ( p_num4 ) ( p_num5 ) ).

* Sort the numbers in ascending order
SORT lt_numbers.

* Find the highest and lowest numbers
READ TABLE lt_numbers INDEX 1 INTO lv_lowest.
READ TABLE lt_numbers INDEX lines( lt_numbers ) INTO lv_highest.

* Display the sorted numbers, highest, and lowest
WRITE: / 'Sorted Numbers:'.
LOOP AT lt_numbers INTO lv_number.
  WRITE: lv_number.
ENDLOOP.

WRITE: / 'Lowest Number:', lv_lowest,
       / 'Highest Number:', lv_highest.
