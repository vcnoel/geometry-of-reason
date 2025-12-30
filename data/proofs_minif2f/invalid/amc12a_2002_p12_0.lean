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

  -- Define a function `g` as `f` with `k` set to `122`.
  let g : ℝ → ℝ := λ x, x^2 - 63 * x + 122,

  -- Show that `g` has a root at `18`.
  have hg₀ : g 18 = 0,
  { rw [g, pow_two, pow_two, sub_two, sub_neg_eq_add, neg_mul, neg_mul, add_assoc, add_assoc, add_assoc, add_zero, add_zero],
    refl },

  -- Show that `18` is in the preimage of `0` under `g`.
  have hg₁ : 18 ∈ g ⁻¹' {0},
  { exact hg₀ },

  -- Show that `18` is in the set of values that are preimages of `0` under `f`.
  have hg₂ : 18 ∈ f ⁻¹' {0},
  { exact hg₁ },

  -- Conclude that `18` is a value that is a root of `f`.
  have hg₃ : ∃ n : ℕ, ↑n = 18 ∧ nat.prime n,
  { exact hg₂ },

  -- Show that `18
end
