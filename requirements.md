# Requirements

This problem requires some kind of input. You are free to implement any mechanism for feeding the input into your solution. You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works correctly against the supplied test data.
Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.

When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.

Write an application that prints out the receipt details for these shopping baskets:


All goods take a 10% sales tax
books are exempt
food is exempt
medical is exempt

Import duty is additional 5%, no exemptions

Round rule is np/100 rounded up to the nearest .05

Goods should be stored somewhere to categorize them.

Idea:
- Input could be a text file, so it can be read by each line
- Split the input line at spaces, first item will be the item count, last item should be the price per item, words in between should be categorized
- Having an array of words to differentiate items
- Good name, taxable status (t: taxable, e: exempt)
  - if the word `imported` is found, add the `import duty` taxation
