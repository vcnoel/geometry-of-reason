import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  cases S with n S,
  { rw finset.sum_empty,
    refl },
  { have h₁ : n ∈ S,
    { rw finset.mem_insert,
      exact or.inl h₀ n },
    have h₂ : n ∣ 36,
    { rw h₀ n },
    have h₃ : 36 / n ∣ 36,
    { apply_div h₂ },
    have h₄ : ∑ k in S.erase n, k = 91 - n,
    { apply finset.sum_insert,
      { apply h₁ },
      { apply h₃ },
      { exact h₀ } },
    rw h₄,
    rw h₀ n,
    rw h₃,
    exact_mod_cast 36,
  },

end
