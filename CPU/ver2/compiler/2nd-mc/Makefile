RESULT = mc
NCSUFFIX = .opt
OCAMLLDFLAGS=-warn-error -31
LIBS = str

default: debug-code top $(RESULT)
$(RESULT): debug-code top

clean:: nobackup

SOURCES = float.c type.ml h.ml id.ml m.ml s.ml \
enums.mli enums.ml \
syntax.ml parser.mly lexer.mll \
typing.mli typing.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml inline2.mli inline2.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.ml inline.mli constFold.mli constFold.ml elim.mli elim.ml \
sarray.ml memAlloc.mli memAlloc.ml constExpand.mli constExpand.ml \
loop.mli loop.ml closure.mli closure.ml \
asm.mli asm.ml virtual.mli virtual.ml \
simm.mli simm.ml loadElim.ml loadZero.ml \
cfg.mli cfg.ml cfg_db.ml \
igraph.mli igraph.ml lra.mli lra.ml \
cfg_elim.ml collect_lr.mli collect_lr.ml lcm.ml lra2.ml \
memMap.ml load_imm2.ml \
regAlloc2.mli regAlloc2.ml \
emitAux.ml emit2.ml \
main.mli main.ml
#regAlloc.mli regAlloc.ml emit.mli emit.ml \

# lNormal.ml loop.ml linline.ml \
# cfg.mli cfg.ml cfg_db.ml igraph.mli igraph.ml lra.mli lra.ml \
# cfg_elim.ml collect_lr.mli collect_lr.ml lra2.ml \




include OCamlMakefile
