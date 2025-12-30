import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_282
  (f : ℝ → ℝ)
  (h₀ : ∀ x, (¬ irrational x) → f x = abs (int.floor x))
  (h₁ : ∀ x, (irrational x) → f x = (int.ceil x)^2) :
  f (8^(1/3)) + f (-real.pi) + f (real.sqrt 50) + f (9/2) = 79 :=
begin

  have h₀_1 : ¬irrational (8^(1/3)) := by { contrapose! h₀_1, apply h₀, apply not_not, },
  have h₀_2 : ¬irrational (-real.pi) := by { contrapose! h₀_2, apply h₀, apply not_not, },
  have h₀_3 : ¬irrational (real.sqrt 50) := by { contrapose! h₀_3, apply h₀, apply not_not, },
  have h₀_4 : ¬irrational (9/2) := by { contrapose! h₀_4, apply h₀, apply not_not, },
  have h₁_1 : irrational (8^(1/3)) := by { contrapose! h₁_1, apply h₁, apply not_not, },
  have h₁_2 : irrational (-real.pi) := by { contrapose! h₁_2, apply h₁, apply not_not, },
  have h₁_3 : irrational (real.sqrt 50) := by { contrapose! h₁_3, apply h₁, apply not_not, },
  have
end
