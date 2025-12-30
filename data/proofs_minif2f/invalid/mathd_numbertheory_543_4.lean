import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  let n := 30^4,
  let d := nat.divisors n,
  have h1 : ∀ (x : ℕ), x ∈ d → 1 ≤ x ∧ x ≤ n, by { intro x, intro hx,
    exact ⟨(nat.divisor_le_self _ _).mpr hx, (nat.divisor_le _ _).mpr hx⟩ },
  have h2 : ∀ (x : ℕ), x ∈ d → x ∈ {k | 1 ≤ k ∧ k ≤ n}, by { rintros x hx,
    exact (h1 x hx).1 },
  have h3 : ∀ (x : ℕ), x ∈ d → x ∈ {k | 1 ≤ k ∧ k ≤ n}, by { rintros x hx,
    exact (h1 x hx).2 },
  have h4 : ∀ (x : ℕ), x ∈ d → x ∈ {k | 1 ≤ k ∧ k ≤ n}, by { rintros x hx,
    exact (h1 x hx).1 },
  have h5 : ∀ (x : ℕ), x ∈ d → x ∈ {k | 1 ≤ k ∧ k ≤ n}, by { rintros x hx,
    exact (h1
end
