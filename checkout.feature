Scenario: Checkout handles for one item in grocery store.
Given that every price of <item > is there.
When the user buys the <quantity> 
Then it will cost <item> for <y> cents
But only valid for no schemes.

| item | y  | quantity |
|   A  | 50 |     1    |
|   B  | 30 |     1    |
|   C  | 20 |     1    |
|   D  | 15 |     1    |


Scenario: This will test the scenario to checkout for special price.
Given that the special prices of <item> is applied
When the user buys in the <n> quantity.
Then it will costs <Special price> price.
But only valid for week.
| item | special price  | n(qunatity) |
|  A   | $ 1.30         |      3      |
|  B   | $ 0.45         |      2      |
|  C   | $ 0.40         |      2      |


Scenario :This scenario will check for both the special price and non-special price.
Given that the grocery has <item>
And  apply the <special prices> price  for the <item>  which are on special sale.
When the customer buys <item> which is not <special price> 
Then it should multiplies the <n> quantity with the <y> cents to give the <final price>
But only valid for this week.
| item | special price  | n(qunatity) | y (cents)|Final price = n * y|
|  A   |    $1.30       |    3        |    50    |        $1.30      |
|  D   |     -          |    3        |    15    |     0.45 = 3 *15  |




Scenario: This will take both the special prices 
Given that the grocery has the <item> available
When the customer buys < n> quantity with the <y> cents
Then system calculates the <final price> based on the <item> will be calculated with the <n> quantity that user wants
And <special prices> are applicable if <n>quantity matches<matches>
But only valid for this week.

|item     | y(cents)  | n(quantity) | Final price|Special prices| matches|
| A  B A  | 50  30 50 |  2    2    1|    $1.75   |  $1.30 0.45  |    3   |
| B  C D  | 30  20 15 |  2    2    1|    $1.00   |  $1.30  $0.45| 3    2 |
|    B    |    30     |       5     |    $1.20   |    $0.45     |    4   |
|   A  C  |  50   20  |   3     2   |    $1.75   | $1.30   $0.45| 3    2 |
| A B C D |50 30 20 15| 1  2   2  3 |    $1.80   | $0.45   $0.40|  2    2|







