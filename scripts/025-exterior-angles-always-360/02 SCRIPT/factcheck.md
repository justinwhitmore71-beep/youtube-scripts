# Fact-check: why a polygon's outside angles always add to 360° (both scripts)

| # | Claim | Source 1 | Source 2 | Status |
| --- | --- | --- | --- | --- |
| c1 | One full turn (rotation) is 360 degrees. | [OpenStax, Algebra and Trigonometry 2e, §7.1 Angles (Rice University)](https://github.com/openstax/osbooks-college-algebra-bundle/blob/main/modules/m51283/index.cnxml): "we know that 1 rotation equals 360 degrees" | [OpenStax, Calculus Volume 1, §1.3 Trigonometric Functions (Rice University)](https://github.com/openstax/osbooks-calculus-bundle/blob/main/modules/m53479/index.cnxml): "Since an angle of 360° corresponds to the circumference of a circle" | OK |
| c2 | For a dent-free (convex) polygon, the exterior angles are the turns made at each corner when walking round it; one lap returns you to your starting direction, so the exterior angles add up to one full turn, 360°, for any number of sides. | Proven on screen: walking the boundary one way, the direction turns by the exterior angle at each corner and never turns back (convex). Returning to the start, the direction is the original one, after exactly one revolution, so the sum of the turns is 360°. | - | PROOF |
| c3 | Regular examples: triangle 3 × 120° = 360°, pentagon 5 × 72° = 360°, hexagon 6 × 60° = 360°. | Arithmetic shown on screen: in a regular n-gon all n turns are equal and (by c2) total 360°, so each is 360°/n: 360/3 = 120, 360/5 = 72, 360/6 = 60; and 3 × 120 = 5 × 72 = 6 × 60 = 360. | - | PROOF |

Notes: c2 and c3 are proven on screen. Contemporary Mathematics §10.4 states the result for REGULAR polygons only: 'Now, an important point is that the sum of the exterior angles of a regular polygon with n sides equals 360∘.' and gives each exterior angle as 'b=360∘n'; the walk argument extends it to lopsided ones. Non-convex polygons: the sum is still 360° if a turn the other way counts as negative (pinned comment).

Approved by Justin: [ ]
