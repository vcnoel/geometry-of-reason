import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  apply le_antisymm,
  { refine le_of_forall_ge_of_exists (λ n, _),
    refine ⟨942 / 15, _⟩,
    rw mul_comm,
    refine mul_div_cancel 15 (even_of_odd _).ne,
    apply even_of_odd, },
  { refine ge_of_exists (λ n, _),
    refine ⟨233, _⟩,
    rw mul_comm,
    refine mul_div_cancel 15 (odd_of_even _).ne,
    apply odd_of_even, },

end
