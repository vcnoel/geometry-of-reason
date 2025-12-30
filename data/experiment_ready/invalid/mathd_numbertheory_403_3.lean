import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  let d := nat.proper_divisors 198,
  let s := ∑ k in d, k,
  have h1 : s = 270, by {simp only [s], },
  have h2 : s = ∑ k in d, k,
  from eq.refl _,
  rw [h1, h2] at h2,
  exact h2,

end
