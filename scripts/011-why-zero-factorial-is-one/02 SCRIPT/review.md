# Harsh review: why 0! = 1

Model-script check (3a): names the wrong guess: YES (it should be zero); explains why: YES (the staircase / the formula forces 1); counts: YES (24, 6, 2, 1, 1 on screen); one why sentence: YES.

| Test | Script A (set up to record) | Script B |
| --- | --- | --- |
| 1 Why | PASS: "Zero factorial is one because it's the only value that keeps the staircase going." | PASS: "The answer must be n factorial itself, so zero factorial has to be one." |
| 2 No jumps | FIXED: added line 4 (n! = n × (n−1)!) so 'stepping down means dividing' follows | PASS |
| 3 Hook | PASS | PASS |
| 4 Jargon | PASS: 'factorial' defined by example in line 3 | PASS: 'factorial' defined by example in line 3 |
| 5 Every line | PASS | PASS |

Still weak: The mascot's doubt ('nothing multiplied should be zero') is answered by the pattern, not by explaining that an empty product is 1; a sharp viewer may still ask why. B's formula line is the most abstract moment.
