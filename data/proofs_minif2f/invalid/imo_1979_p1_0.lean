import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1979_p1
  (p q : ℕ)
  (h₀ : 0 < q)
  (h₁ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = p/q) :
  1979 ∣ p :=
begin

  have h₂ : ∀ k ∈ finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) < 0,
  {
    intros k hk,
    have h₃ : ((-1)^(k + 1) * ((1 : ℝ)/k)) < 0,
    {
      have h₄ : ((-1)^(k + 1)) = -(1 : ℝ),
      {
        have h₅ : (-1)^(k + 1) = (-1)^k * (-1),
        {
          have h₆ : (-1)^k = 1,
          {
            cases k,
            { exact absurd rfl rfl },
            { exact h₆ },
          },
        },
        exact h₅ * h₆,
      },
      have h₇ : (1 : ℝ)/k < 0,
      {
        have h₈ : (1 : ℝ)/k < 0,
        {
          cases k,
          { exact absurd rfl rfl },
          { exact h₈ },
        },
      },
      exact h₄ * h₇,
    },
    exact h₃,
  },

end
