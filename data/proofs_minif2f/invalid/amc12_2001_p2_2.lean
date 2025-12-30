import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin

  cases h₃ with h₃_a h₃_b,
  { have h₃_a' := h₃_a,
    have h₃_b' := h₃_b,
    have h₃_c := h₃_a'.symm.subst h₃_b',
    have h₃_d := h₃_c.subst h₂,
    have h₃_e := h₃_d.subst h₀,
    have h₃_f := h₃_e.subst h₁,
    have h₃_g := h₃_f,
    have h₃_h := h₃_g,
    have h₃_i := h₃_h,
    have h₃_j := h₃_i,
    have h₃_k := h₃_j,
    have h₃_l := h₃_k,
    have h₃_m := h₃_l,
    have h₃_n := h₃_m,
    have h₃_o := h₃_n,
    have h₃_p := h₃_o,
    have h₃_q := h₃_p,
    have h₃_r := h₃_q,
    have h₃_s := h₃_r,
    have h₃_t := h₃_s,
    have h₃_u := h₃_t,
    have h₃_v := h₃_u,
   
end
