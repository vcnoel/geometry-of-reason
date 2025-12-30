import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_303
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) :
  ∑ k in S, k = 111 :=
begin

  rw finset.sum_congr rfl (λ k hk, rfl),
  { refine finset.sum_congr rfl (λ n hn, _),
    { exact finset.mem_filter_of_mem (finset.mem_range.2 (λ m, (m : ℕ).succ_le_iff.mpr (hn.1.trans (hn.2.2.symm ▸ hn.3.2.symm)))) },
    { have h₂ := hn.2.1,
      have h₃ := hn.3.1,
      have h₄ := hn.2.2,
      have h₅ := hn.3.2,
      have h₆ := h₀ (n.succ),
      have h₇ := h₆.1,
      have h₈ := h₆.2.1,
      have h₉ := h₆.2.2,
      have h₁₀ := h₆.3.1,
      have h₁₁ := h₆.3.2,
      have h₁₂ := (h₇.trans h₈).trans h₉,
      have h₁₃ := (h₁₀.trans h₁₁).trans h₁₂,
      have h
end
