# Harsh review: why the primes never run out

Model-script check (3a): names the wrong guess: YES (primes run out); explains why: YES (remainder 1 means no listed prime divides it); counts: YES (A: the product + 1; B: 2·3·5·7 + 1 = 211); one why sentence: YES.

| Test | Script A (set up to record) | Script B |
| --- | --- | --- |
| 1 Why | PASS: "But every number above one has a prime factor, so some prime is missing." | PASS: "So its prime factors, and it must have some, are all new." |
| 2 No jumps | FIXED: added 'every number above one has a prime factor' so the contradiction is complete | FIXED: line 6 added so viewers don't conclude the product + 1 is always prime |
| 3 Hook | PASS | PASS |
| 4 Jargon | PASS: 'prime' defined in line 3 with examples | PASS: 'prime factors' is the one term; shown as a factor tree |
| 5 Every line | PASS | PASS |

Still weak: A's line 6 ('one is always left over') is the step viewers most often take on trust; show 2, 3, 5 dividing the product exactly and the +1 left over. B never defines 'prime'; it relies on viewers knowing it.
