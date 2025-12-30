import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have h1 : ∀ (x : ℤ), 0 ≤ x % 10 := by { intros x, apply zle_of_le, exact x % 10 ≤ 10 },
  have h2 : ∀ (x : ℤ), x % 10 < 10 := by { intros x, apply lt_of_le_not_le, exact h1 x, exact not_lt_of_le h1 x },
  have h3 : ∀ (x : ℤ), x % 10 ≠ 0 := by { intros x, apply ne_of_lt, exact h2 x },
  have h4 : ∀ (x : ℤ), x % 10 = 0 → x % 10 = 0 := by { intros x hx, exact hx },
  have h5 : ∀ (x : ℤ), x % 10 = 0 → x % 10 ≠ 0 → false := by { intros x hx hx', exact hx' hx },
  have h6 : ∀ (x : ℤ), x % 10 ≠ 0 → x % 10 = 0 → false := by { intros x hx hx', exact hx' hx },
  have h7 : ∀ (x : ℤ), x %
end
