import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1966_p4
  (n : ℕ)
  (x : ℝ)
  (h₀ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k))
  (h₁ : 0 < n) :
  ∑ k in finset.Icc 1 n, (1 / real.sin ((2^k) * x)) = 1 / real.tan x - 1 / real.tan ((2^n) * x) :=
begin

  classical,
  -- 1/((2^k) * x) = 1/(2^k) * 1/x, sin(2^k * x) = 2^k * sin(x)
  have h₂ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k) → (1 / (2^k)) * (1 / sin x) = 1 / (2^k) * (1 / (2^k * sin x)),
  { intro k h₃ h₄,
    calc (1 / (2^k)) * (1 / sin x) = 1 / (2^k) * (1 / (2^k * sin x))
      : by rw h₄; refl,
  },
  -- (1 / (2^k)) * (1 / (2^k * sin x)) = 1 / (2^(2*k)) * 1 / sin x
  have h₃ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k) → (1 / (2^k)) *
end
