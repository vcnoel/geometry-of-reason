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

  refine finset.sum_congr rfl (λ k hk, _),
  { rw finset.mem_Icc,
    cases hk,
    { rw finset.mem_range,
      exact λ h, absurd h h₀ k h₁ },
    { rw finset.mem_range,
      exact λ h, absurd h h₀ k h₁ } },
  { refine λ k hk, _,
    cases hk,
    { have h₀' := h₀ k h₁,
      rw ← h₀',
      refine real.tan ((2^k) * x) * real.tan x,
      refine real.tan ((2^k) * x) * real.tan ((2^n) * x),
      refine real.tan ((2^k) * x) * real.tan ((2^(n+1)) * x),
      refine real.tan ((2^k) * x) * (real.tan ((2^(n+1)) * x) - real.tan ((2^n) * x)),
      refine real.tan ((2^k) * x) * real.tan ((2^n) * x) * (real.tan ((2^(n+1)) * x) - real.tan ((
end
