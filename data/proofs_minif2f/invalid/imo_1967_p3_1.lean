import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1967_p3
  (k m n : ℕ)
  (c : ℕ → ℕ)
  (h₀ : 0 < k ∧ 0 < m ∧ 0 < n)
  (h₁ : ∀ s, c s = s * (s + 1))
  (h₂ : nat.prime (k + m + 1))
  (h₃ : n + 1 < k + m + 1) :
  (∏ i in finset.Icc 1 n, c i) ∣ (∏ i in finset.Icc 1 n, (c (m + i) - c k)) :=
begin

  have h₄ : c (k + 1) = (k + 1) * (k + 2),
  { exact h₁ (k + 1) },
  have h₅ : c (k + 2) = (k + 2) * (k + 3),
  { exact h₁ (k + 2) },
  have h₆ : c (m + 1) = (m + 1) * (m + 2),
  { exact h₁ (m + 1) },
  have h₇ : c (m + 2) = (m + 2) * (m + 3),
  { exact h₁ (m + 2) },
  have h₈ : 1 < k,
  { exact (and.left h₀).elim },
  have h₉ : 1 < m,
  { exact (and.left (and.right h₀)) },
  have h₁₀ : 1 < n,
  { exact (and.left (and.right (and.right h₀))) },
  have h₁₁ : c (m + n) = (m + n) * (m + n + 1),

end
