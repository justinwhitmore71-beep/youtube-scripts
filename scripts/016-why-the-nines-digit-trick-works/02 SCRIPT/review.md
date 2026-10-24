# Harsh review: why adding the digits tests for 9

Model-script check (3a): names the wrong guess: YES (it's just a trick / coincidence); explains why: YES (ten is nine plus one); counts: YES (738 split into 7×99 + 3×9 + 18); one why sentence: YES.

| Test | Script A (set up to record) | Script B |
| --- | --- | --- |
| 1 Why | PASS: "The pile always splits into nines, so only the digit sum, eighteen, decides." | PASS: "So each digit carries a pile of nines, plus itself." |
| 2 No jumps | PASS | FIXED: line 4 says the general rule before the 4572 example |
| 3 Hook | PASS | PASS |
| 4 Jargon | PASS: no 'divisible', 'place value' or 'modulo' spoken | PASS |
| 5 Every line | PASS | PASS |

Still weak: Both examples happen to divide by 9; neither shows a 'no' case (e.g. 739, digit sum 19). B's 'a thousand is 999 + 1' is left to the screen, since only ten and a hundred are said.
