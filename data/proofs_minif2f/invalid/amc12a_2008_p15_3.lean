import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  let k₂ : ℤ := k,
  let k₂₁ : ℤ := 2008^2 + 2^2008,
  let k₂₂ : ℤ := k₂₁ - k₂,
  have h₁ : k₂ = k₂₁ - k₂₂,
  by {rw k₂},
  have h₂ : (k₂₁ - k₂₂)^2 + 2^(k₂₁ - k₂₂) % 10 = 6,
  by {rw h₁, apply amc12a_2008_p15_helper},
  have h₃ : k₂^2 + 2^k₂ % 10 = 6,
  by {rw h₁, apply h₂},
  exact h₃

end
