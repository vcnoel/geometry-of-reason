import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p7
  (s : ℕ → ℝ)
  (h₀: ∀ n, s (n + 2) = s (n + 1) + s n)
  (h₁ : s 9 = 110)
  (h₂ : s 7 = 42) :
  s 4 = 10 :=
begin

  -- We will use induction on n to show that s n = n^2 - 2n + 1.
  have h₃ : ∀ (n : ℕ), s (n + 2) = s (n + 1) + s n,
  { assume (n : ℕ),
    exact h₀ n },
  have h₄ : s 9 = 110,
  { exact h₁ },
  have h₅ : s 7 = 42,
  { exact h₂ },
  have h₆ : ∀ (n : ℕ), s n = n^2 - 2*n + 1,
  { assume (n : ℕ),
    -- First, we'll show that s n = n^2 - 2n + 1 holds for n = 1 and n = 2.
    -- Then, we'll use induction on n to show that it holds for all n.
    -- First, show that it holds for n = 1 and n = 2.
    have h₇ : s 1 = 1^2 - 2*1 + 1,
    { have h₈ : s 1 = s 2 - s 1,
      {
end
