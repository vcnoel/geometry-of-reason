import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_530
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₀ : (n : ℝ) / k < 6)
  (h₁ : (5 : ℝ) < n / k) :
  22 ≤ (nat.lcm n k) / (nat.gcd n k) :=
begin

  have h₂ : 0 < (n : ℝ) ∧ 0 < (k : ℝ),
    from ⟨h₀.1, h₀.2⟩,
  have h₃ : (n : ℝ) / k < 6,
    from h₀,
  have h₄ : (5 : ℝ) < n / k,
    from h₁,
  have h₅ : 22 ≤ 30,
    by
    { have h₆ : (22 : ℝ) < (30 : ℝ),
        from dec_trivial,
      have h₇ : (30 : ℝ) - (22 : ℝ) > 0,
        from dec_trivial,
      have h₈ : (30 : ℝ) / ((30 : ℝ) - (22 : ℝ)) > (22 : ℝ) / ((30 : ℝ) - (22 : ℝ)),
        by linarith,
      have h₉ : (30 : ℝ) / ((30 : ℝ) - (22 : ℝ)) = 30,
        by linarith,
      have h₁₀ : 22 < 30,
        by linarith,
      exact h₆ },
  have h₇ : 22 ≤ 30
end
