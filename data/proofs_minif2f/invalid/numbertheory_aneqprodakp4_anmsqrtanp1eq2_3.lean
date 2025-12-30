import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2
  (a : ℕ → ℝ)
  (h₀ : a 0 = 1)
  (h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4) :
  ∀ n ≥ 1, a n - real.sqrt (a (n + 1)) = 2 :=
begin

  intro n,
  induction n with n ih generalizing a,
  { intro a,
    have h₀ : a 0 = 1 := h₀,
    have h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4 := h₁,
    have h₂ : a 1 = a 0 + 4 := h₁ 0,
    have h₃ : a 1 = 5 := by simp [h₀, h₂],
    have h₄ : real.sqrt (a 1) = real.sqrt 5,
    { simp [h₃] },
    have h₅ : a 1 - real.sqrt (a 1) = 5 - real.sqrt 5,
    { rw h₄ },
    have h₆ : 5 - real.sqrt 5 = 2,
    { ring },
    have h₇ : a 1 - real.sqrt (a 1) = 2,
    { rw h₆ },
    exact h₇ },
  { intro a,
    have h₀ : a 0 = 1 := h₀,
    have h₁ :
end
