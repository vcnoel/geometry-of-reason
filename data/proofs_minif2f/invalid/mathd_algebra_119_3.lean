import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_119
  (d e : ℝ)
  (h₀ : 2 * d = 17 * e - 8)
  (h₁ : 2 * e = d - 9) :
  e = 2 :=
begin

  have h₂ : d - 8 = 17 * e,
  from eq.subst h₀ (2 * e),
  have h₃ : d - 8 = (d - 9) - 1,
  by { simp [sub_sub_sub_cancel_left] },
  have h₄ : d - 9 = 17 * e,
  from eq.subst h₂ (d - 8),
  have h₅ : d - 9 = d - 8 - 1,
  by { simp [sub_sub_sub_cancel_left] },
  have h₆ : d - 9 = 17 * e - 1,
  from eq.subst h₄ (d - 8),
  have h₇ : 17 * e - 1 = 17 * e,
  by { simp [sub_self] },
  have h₈ : d - 9 = 17 * e,
  from eq.subst h₆ h₇,
  have h₉ : d - 9 = d - 9,
  by { simp [sub_self] },
  have h₁₀ : d - 9 = 17 * e,
  from eq.subst h�
end
