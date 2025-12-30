import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p12
  (f : ℝ → ℝ)
  (k : ℝ)
  (h₀ : ∀ x, f x = x^2 - 63 * x + k)
  (h₁ : set.subset (f ⁻¹' {0}) {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}) :
  k = 122 :=
begin

  have h₂ : ∀ x, x ≠ 0 → f x = k,
  { intro x,
    assume Hx : x ≠ 0,
    apply h₀,
    rw h₁,
    existsi 2,
    exact ⟨1, nat.prime.intro (show 1 ≠ 0, by refl)⟩ },
  have h₃ : ∀ x, f x = k,
  { intro x,
    cases Hx : x = 0,
    { apply h₀ },
    { apply h₂, assumption },
    { apply h₂, assumption },
    { apply h₂, assumption }},
  have h₄ : ∀ x, f x = k,
  { apply h₃, refl },
  have h₅ : k = 122,
  { apply h₄, refl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },
  { exact rfl },

end
