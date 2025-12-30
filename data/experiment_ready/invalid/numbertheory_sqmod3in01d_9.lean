import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a % 3,
  case inl => { exact or.inl (by { have h := a % 3, simp at h, simp only [h], simp }) },
  case inr => { exact or.inr (by { have h := a % 3, simp at h, simp only [h], simp }) },

end
