import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  -- 1st step: prove the hypothesis of is_least
  have hyp1 := 30 * 39 ≡ 42 [MOD 47],
  -- 2nd step: prove the hypothesis of is_least
  have hyp2 : ∀ a ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]}, a ≥ 39,
  
end
