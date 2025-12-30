import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have h1 : ∀ (a b c d e f g h i j : nat), (a * b * c * d * e * f * g * h * i * j) % 10 = 0,
  { intro a, intro b, intro c, intro d, intro e, intro f, intro g, intro h, intro i, intro j,
    have h2 : a % 10 = 0 ∨ a % 10 = 1 ∨ a % 10 = 2 ∨ a % 10 = 3 ∨ a % 10 = 4 ∨ a % 10 = 5 ∨ a % 10 = 6 ∨ a % 10 = 7 ∨ a % 10 = 8 ∨ a % 10 = 9,
    by refl,
    cases h2 with ha hb hc hd he hf hg hh hi hj,
    { cases b % 10,
      { cases c % 10,
        { cases d % 10,
          { cases e % 10,
            { cases f % 10,
              { cases g % 10,
                { cases h % 10,
                  { cases i % 10,
                    { cases j % 10
end
