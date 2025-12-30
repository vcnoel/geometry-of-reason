import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  let a := 180,
  let b := 168,
  have ha : 12 ≤ a, by norm_num,
  have hb : 12 ≤ b, by norm_num,
  have h1 : 12 ∣ a, by norm_num,
  have h2 : 12 ∣ b, by norm_num,
  have h3 : 12 ∣ (a * b), by norm_num,
  have h4 : (a * b) / 12 ∣ a, by norm_num,
  have h5 : (a * b) / 12 ∣ b, by norm_num,
  have h6 : (a * b) / 12 ≤ a, by norm_num,
  have h7 : (a * b) / 12 ≤ b, by norm_num,
  have h8 : (a * b) / 12 ∣ gcd a b, by norm_num,
  have h9 : (a * b) / 12 ≤ gcd a b, by norm_num,
  have h10 : (a * b) / 12 = 15, by norm_num,
  have h11 : gcd a b = 12, by norm_num,
  exact h11
end
