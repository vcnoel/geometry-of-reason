import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  have h1 : a % 3 = 0 ∨ a % 3 = 1 ∨ a % 3 = 2,
  by
    { cases a with a_pos a_neg,
      { exact or.inr (or.inr (or.inr (a % 3 = 0))),
      { exact or.inr (or.inr (or.inr (a % 3 = 0))) } },
  have h2 : (a^2) % 3 = (a % 3)^2 % 3,
  by
    { have h1 : a^2 = a*a,
      by
        { refl },
      have h2 : a*a % 3 = a % 3 * a % 3 % 3,
      by
        { rw h1,
        rw congr_arg (λ x, x % 3),
        refl },
      exact h2 },
  have h3 : (a % 3)^2 % 3 = 0 ∨ (a % 3)^2 % 3 = 1,
  by
    { cases h1 with h11 h12,
      { exact or.inr (or.inr (or.inr (or.in
end
