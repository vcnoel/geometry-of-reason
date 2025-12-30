import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3div2tooddnp1
  (n : ℕ) :
  3 ∣ (2^(2 * n + 1) + 1) :=
begin

  let h : ℤ → ℕ := λ x, if x < 2 then x + 1 else x;
  let h_2 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 2;
  let h_1 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 1;
  let g : ℤ → ℕ := λ x, if x < 2 then x + 1 else 1;
  let g_2 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 2;
  let g_1 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 1;
  let h_1_2 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 2;
  let h_2_1 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 1;
  let g_1_2 : ℤ → ℕ := λ x, if x < 2 then x + 1 else 2;
  let h
end
