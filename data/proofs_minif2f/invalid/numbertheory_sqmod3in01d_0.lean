import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a % 3 with x,
  { cases x with x,
    { cases x,
      { simp at a,
        simp at a,
        have : 0 ≤ a^2 := by { rw a, simp },
        have : a^2 % 3 = 0 := by { rw a, simp },
        left, exact this },
      { simp at a,
        simp at a,
        have : 1 ≤ a^2 := by { rw a, simp },
        have : a^2 % 3 = 1 := by { rw a, simp },
        right, exact this } },
    { cases x with x,
      { simp at a,
        simp at a,
        have : 1 ≤ a^2 := by { rw a, simp },
        have : a^2 % 3 = 1 := by { rw a, simp },
        right, exact this },
      { simp at a,
        simp at a,
        have : 2 ≤ a^2 := by { rw a, simp },
        have : a^2 % 3 = 0 := by { rw a, simp },
        left, exact this } } },
  { cases a % 3 with x
end
