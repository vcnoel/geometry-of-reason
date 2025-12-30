import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1987_p8
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∃! k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13) :
  n ≤ 112 :=
begin

  obtain ⟨k, h₂, h₃⟩ := h₁,
  have h₄ : n + k ≠ 0 := mt (eq_zero_of_zero_le_zero_add) (ne_of_lt h₀),
  have h₅ : (n : ℝ) / (n + k) = 8 / 15 + (1 / (n + k)) * (7 / 13 - 8 / 15),
  { calc
    (n : ℝ) / (n + k) = (8 / 15 + (1 / (n + k)) * ((n / (n + k)) * (7 / 13) - (8 / 15))) :
      by { field_simp [h₄],
        ring_nf,
        field_simp,
        ring_nf }
   ... = (8 / 15) + (1 / (n + k)) * ((7 / 13) * (n / (n + k)) - (8 / 15)) :
      by { ring_nf,
        ring_nf }
   ... = (8 / 15) + (1 / (n + k)) * (7 / 13) * (n / (n + k)) -
end
