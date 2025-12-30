import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  -- assume the contrary
  assume (H : ∀ x : ℕ, (x^2 : ℝ) ≠ (a^2 + b^2) / (a * b + 1)),
  -- consider the set of all possible squares
  let S : set ℝ := { x^2 | x ∈ ℕ },
  -- show that the set of all possible squares is finite
  have finite_S : finite S,
  
end
