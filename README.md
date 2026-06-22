# CSIDH Formalization in Lean 4

**PhD Thesis Prep**: Formalization of CSIDH post-quantum key exchange protocol using Lean 4 + Mathlib4.

## Goal
Formalize the group action of the ideal class group on supersingular elliptic curves over $F_p$, as used in CSIDH [Castryck et al., Asiacrypt 2018].

## Current Progress
- [x] Phase 0: Toy group action on ℤ - Lean4 basics
- [x] Phase 1.1: Montgomery curve structure over Fp defined
- [ ] Phase 1.2: Point validation + xDBL/x3mul formulas
- [ ] Phase 2: Isogenies + Velu's formulas
- [ ] Phase 3: Class group action
- [ ] Phase 4: CSIDH protocol + security properties

## Build Instructions
```bash
lake build
