# Fact-check: why adding the digits tests for 9 (both scripts)

| # | Claim | Source 1 | Source 2 | Status |
| --- | --- | --- | --- | --- |
| c1 | A whole number is divisible by 9 exactly when the sum of its digits is divisible by 9. | Proven on screen via c2: the number minus its digit sum is a multiple of 9, so the number is divisible by 9 exactly when its digit sum is. | - | PROOF |
| c2 | Because 10 = 9 + 1, 100 = 99 + 1, 1000 = 999 + 1, any number equals a multiple of 9 plus its digit sum: 738 = 7×99 + 3×9 + (7 + 3 + 8) = 693 + 27 + 18, and 4572 = 4×999 + 5×99 + 7×9 + (4 + 5 + 7 + 2). | Proven on screen: 738 = 7·100 + 3·10 + 8 = 7·(99 + 1) + 3·(9 + 1) + 8 = (7·99 + 3·9) + (7 + 3 + 8) = 720 + 18; 720 = 9·80 and 18 = 9·2, so 738 = 9·82. 4572 = 4·999 + 5·99 + 7·9 + 18 = 4554 + 18 = 4572 = 9·508. | - | PROOF |

Notes: c1 is also stated as a rule in Contemporary Mathematics §3.1: '9 Add the digits of the number together. If that number is divisible by 9, then so is the original number'; here it is proven on screen by c2; Prealgebra 2e §2.4 gives the same digit-sum test for 3 ('3 if the sum of the digits is divisible by 3'), which works for the same reason (9 is a multiple of 3). Checks: 738 ÷ 9 = 82; 4572 ÷ 9 = 508.

Approved by Justin: [ ]
