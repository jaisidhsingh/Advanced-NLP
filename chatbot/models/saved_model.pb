??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
{
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	B?* 
shared_namedense_48/kernel
t
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes
:	B?*
dtype0
s
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_48/bias
l
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes	
:?*
dtype0
{
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_49/kernel
t
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel*
_output_shapes
:	?@*
dtype0
r
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_49/bias
k
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes
:@*
dtype0
z
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_50/kernel
s
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes

:@ *
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
: *
dtype0
z
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

: *
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	B?*'
shared_nameAdam/dense_48/kernel/m
?
*Adam/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/m*
_output_shapes
:	B?*
dtype0
?
Adam/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_48/bias/m
z
(Adam/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_49/kernel/m
?
*Adam/dense_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_49/bias/m
y
(Adam/dense_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_50/kernel/m
?
*Adam/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_50/bias/m
y
(Adam/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_51/kernel/m
?
*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/m
y
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	B?*'
shared_nameAdam/dense_48/kernel/v
?
*Adam/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/v*
_output_shapes
:	B?*
dtype0
?
Adam/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_48/bias/v
z
(Adam/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*'
shared_nameAdam/dense_49/kernel/v
?
*Adam/dense_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_49/bias/v
y
(Adam/dense_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_50/kernel/v
?
*Adam/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_50/bias/v
y
(Adam/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_51/kernel/v
?
*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/v
y
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?2
value?1B?1 B?1
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
h

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo
8
0
1
2
3
4
5
'6
(7
 
8
0
1
2
3
4
5
'6
(7
?
2metrics

3layers
4layer_regularization_losses
5non_trainable_variables
	variables
	regularization_losses

trainable_variables
6layer_metrics
 
[Y
VARIABLE_VALUEdense_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
7metrics

8layers
9layer_regularization_losses
:non_trainable_variables
	variables
regularization_losses
trainable_variables
;layer_metrics
 
 
 
?
<metrics

=layers
>layer_regularization_losses
?non_trainable_variables
	variables
regularization_losses
trainable_variables
@layer_metrics
[Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_49/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Ametrics

Blayers
Clayer_regularization_losses
Dnon_trainable_variables
	variables
regularization_losses
trainable_variables
Elayer_metrics
[Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Fmetrics

Glayers
Hlayer_regularization_losses
Inon_trainable_variables
	variables
 regularization_losses
!trainable_variables
Jlayer_metrics
 
 
 
?
Kmetrics

Llayers
Mlayer_regularization_losses
Nnon_trainable_variables
#	variables
$regularization_losses
%trainable_variables
Olayer_metrics
[Y
VARIABLE_VALUEdense_51/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
?
Pmetrics

Qlayers
Rlayer_regularization_losses
Snon_trainable_variables
)	variables
*regularization_losses
+trainable_variables
Tlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

U0
V1
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Wtotal
	Xcount
Y	variables
Z	keras_api
D
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

Y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

^	variables
~|
VARIABLE_VALUEAdam/dense_48/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_49/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_49/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_50/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_48/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_49/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_49/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_50/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_50/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_48_inputPlaceholder*8
_output_shapes&
$:"??????????????????B*
dtype0*-
shape$:"??????????????????B
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_48_inputdense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_42772
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_48/kernel/m/Read/ReadVariableOp(Adam/dense_48/bias/m/Read/ReadVariableOp*Adam/dense_49/kernel/m/Read/ReadVariableOp(Adam/dense_49/bias/m/Read/ReadVariableOp*Adam/dense_50/kernel/m/Read/ReadVariableOp(Adam/dense_50/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp*Adam/dense_48/kernel/v/Read/ReadVariableOp(Adam/dense_48/bias/v/Read/ReadVariableOp*Adam/dense_49/kernel/v/Read/ReadVariableOp(Adam/dense_49/bias/v/Read/ReadVariableOp*Adam/dense_50/kernel/v/Read/ReadVariableOp(Adam/dense_50/bias/v/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_43392
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_48/kernel/mAdam/dense_48/bias/mAdam/dense_49/kernel/mAdam/dense_49/bias/mAdam/dense_50/kernel/mAdam/dense_50/bias/mAdam/dense_51/kernel/mAdam/dense_51/bias/mAdam/dense_48/kernel/vAdam/dense_48/bias/vAdam/dense_49/kernel/vAdam/dense_49/bias/vAdam/dense_50/kernel/vAdam/dense_50/bias/vAdam/dense_51/kernel/vAdam/dense_51/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_43501??

?
c
E__inference_dropout_24_layer_call_and_return_conditional_losses_42376

inputs

identity_1l
IdentityIdentityinputs*
T0*9
_output_shapes'
%:#???????????????????2

Identity{

Identity_1IdentityIdentity:output:0*
T0*9
_output_shapes'
%:#???????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_24_layer_call_and_return_conditional_losses_43111

inputs

identity_1l
IdentityIdentityinputs*
T0*9
_output_shapes'
%:#???????????????????2

Identity{

Identity_1IdentityIdentity:output:0*
T0*9
_output_shapes'
%:#???????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_42546

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"?????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/Mul_1v
IdentityIdentitydropout/Mul_1:z:0*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? :` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?
d
E__inference_dropout_25_layer_call_and_return_conditional_losses_43230

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"?????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout/Mul_1v
IdentityIdentitydropout/Mul_1:z:0*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? :` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?"
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42743
dense_48_input!
dense_48_42720:	B?
dense_48_42722:	?!
dense_49_42726:	?@
dense_49_42728:@ 
dense_50_42731:@ 
dense_50_42733:  
dense_51_42737: 
dense_51_42739:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall?"dropout_24/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCalldense_48_inputdense_48_42720dense_48_42722*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_423652"
 dense_48/StatefulPartitionedCall?
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_425892$
"dropout_24/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0dense_49_42726dense_49_42728*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_424092"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_42731dense_50_42733*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_424462"
 dense_50/StatefulPartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_425462$
"dropout_25/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_51_42737dense_51_42739*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_51_layer_call_and_return_conditional_losses_424902"
 dense_51/StatefulPartitionedCall?
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
?"
?
C__inference_dense_50_layer_call_and_return_conditional_losses_43203

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"?????????????????? 2	
BiasAddi
ReluReluBiasAdd:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
Relu~
IdentityIdentityRelu:activations:0^NoOp*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????@
 
_user_specified_nameinputs
?
F
*__inference_dropout_25_layer_call_fn_43208

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_424572
PartitionedCall}
IdentityIdentityPartitionedCall:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? :` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?

?
-__inference_sequential_12_layer_call_fn_42516
dense_48_input
unknown:	B?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_424972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
?

?
-__inference_sequential_12_layer_call_fn_42793

inputs
unknown:	B?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_424972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?
F
*__inference_dropout_24_layer_call_fn_43101

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_423762
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
?
(__inference_dense_49_layer_call_fn_43132

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_424092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_42457

inputs

identity_1k
IdentityIdentityinputs*
T0*8
_output_shapes&
$:"?????????????????? 2

Identityz

Identity_1IdentityIdentity:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? :` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?H
?
__inference__traced_save_43392
file_prefix.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_48_kernel_m_read_readvariableop3
/savev2_adam_dense_48_bias_m_read_readvariableop5
1savev2_adam_dense_49_kernel_m_read_readvariableop3
/savev2_adam_dense_49_bias_m_read_readvariableop5
1savev2_adam_dense_50_kernel_m_read_readvariableop3
/savev2_adam_dense_50_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableop5
1savev2_adam_dense_48_kernel_v_read_readvariableop3
/savev2_adam_dense_48_bias_v_read_readvariableop5
1savev2_adam_dense_49_kernel_v_read_readvariableop3
/savev2_adam_dense_49_bias_v_read_readvariableop5
1savev2_adam_dense_50_kernel_v_read_readvariableop3
/savev2_adam_dense_50_bias_v_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_48_kernel_m_read_readvariableop/savev2_adam_dense_48_bias_m_read_readvariableop1savev2_adam_dense_49_kernel_m_read_readvariableop/savev2_adam_dense_49_bias_m_read_readvariableop1savev2_adam_dense_50_kernel_m_read_readvariableop/savev2_adam_dense_50_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop1savev2_adam_dense_48_kernel_v_read_readvariableop/savev2_adam_dense_48_bias_v_read_readvariableop1savev2_adam_dense_49_kernel_v_read_readvariableop/savev2_adam_dense_49_bias_v_read_readvariableop1savev2_adam_dense_50_kernel_v_read_readvariableop/savev2_adam_dense_50_bias_v_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	B?:?:	?@:@:@ : : :: : : : : : : : : :	B?:?:	?@:@:@ : : ::	B?:?:	?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	B?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	B?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	B?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::"

_output_shapes
: 
?

?
-__inference_sequential_12_layer_call_fn_42814

inputs
unknown:	B?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_426512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?

?
#__inference_signature_wrapper_42772
dense_48_input
unknown:	B?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_423272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
??
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_43056

inputs=
*dense_48_tensordot_readvariableop_resource:	B?7
(dense_48_biasadd_readvariableop_resource:	?=
*dense_49_tensordot_readvariableop_resource:	?@6
(dense_49_biasadd_readvariableop_resource:@<
*dense_50_tensordot_readvariableop_resource:@ 6
(dense_50_biasadd_readvariableop_resource: <
*dense_51_tensordot_readvariableop_resource: 6
(dense_51_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?!dense_48/Tensordot/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?!dense_49/Tensordot/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?!dense_50/Tensordot/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?!dense_51/Tensordot/ReadVariableOp?
!dense_48/Tensordot/ReadVariableOpReadVariableOp*dense_48_tensordot_readvariableop_resource*
_output_shapes
:	B?*
dtype02#
!dense_48/Tensordot/ReadVariableOp|
dense_48/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_48/Tensordot/axes?
dense_48/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_48/Tensordot/freej
dense_48/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_48/Tensordot/Shape?
 dense_48/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_48/Tensordot/GatherV2/axis?
dense_48/Tensordot/GatherV2GatherV2!dense_48/Tensordot/Shape:output:0 dense_48/Tensordot/free:output:0)dense_48/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_48/Tensordot/GatherV2?
"dense_48/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_48/Tensordot/GatherV2_1/axis?
dense_48/Tensordot/GatherV2_1GatherV2!dense_48/Tensordot/Shape:output:0 dense_48/Tensordot/axes:output:0+dense_48/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_48/Tensordot/GatherV2_1~
dense_48/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_48/Tensordot/Const?
dense_48/Tensordot/ProdProd$dense_48/Tensordot/GatherV2:output:0!dense_48/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_48/Tensordot/Prod?
dense_48/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_48/Tensordot/Const_1?
dense_48/Tensordot/Prod_1Prod&dense_48/Tensordot/GatherV2_1:output:0#dense_48/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_48/Tensordot/Prod_1?
dense_48/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_48/Tensordot/concat/axis?
dense_48/Tensordot/concatConcatV2 dense_48/Tensordot/free:output:0 dense_48/Tensordot/axes:output:0'dense_48/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/concat?
dense_48/Tensordot/stackPack dense_48/Tensordot/Prod:output:0"dense_48/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/stack?
dense_48/Tensordot/transpose	Transposeinputs"dense_48/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????B2
dense_48/Tensordot/transpose?
dense_48/Tensordot/ReshapeReshape dense_48/Tensordot/transpose:y:0!dense_48/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_48/Tensordot/Reshape?
dense_48/Tensordot/MatMulMatMul#dense_48/Tensordot/Reshape:output:0)dense_48/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/Tensordot/MatMul?
dense_48/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_48/Tensordot/Const_2?
 dense_48/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_48/Tensordot/concat_1/axis?
dense_48/Tensordot/concat_1ConcatV2$dense_48/Tensordot/GatherV2:output:0#dense_48/Tensordot/Const_2:output:0)dense_48/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/concat_1?
dense_48/TensordotReshape#dense_48/Tensordot/MatMul:product:0$dense_48/Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/Tensordot?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/Tensordot:output:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/BiasAdd?
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/Reluy
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_24/dropout/Const?
dropout_24/dropout/MulMuldense_48/Relu:activations:0!dropout_24/dropout/Const:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout_24/dropout/Mul
dropout_24/dropout/ShapeShapedense_48/Relu:activations:0*
T0*
_output_shapes
:2
dropout_24/dropout/Shape?
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*9
_output_shapes'
%:#???????????????????*
dtype021
/dropout_24/dropout/random_uniform/RandomUniform?
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_24/dropout/GreaterEqual/y?
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*9
_output_shapes'
%:#???????????????????2!
dropout_24/dropout/GreaterEqual?
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*9
_output_shapes'
%:#???????????????????2
dropout_24/dropout/Cast?
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout_24/dropout/Mul_1?
!dense_49/Tensordot/ReadVariableOpReadVariableOp*dense_49_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_49/Tensordot/ReadVariableOp|
dense_49/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_49/Tensordot/axes?
dense_49/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_49/Tensordot/free?
dense_49/Tensordot/ShapeShapedropout_24/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_49/Tensordot/Shape?
 dense_49/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_49/Tensordot/GatherV2/axis?
dense_49/Tensordot/GatherV2GatherV2!dense_49/Tensordot/Shape:output:0 dense_49/Tensordot/free:output:0)dense_49/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_49/Tensordot/GatherV2?
"dense_49/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_49/Tensordot/GatherV2_1/axis?
dense_49/Tensordot/GatherV2_1GatherV2!dense_49/Tensordot/Shape:output:0 dense_49/Tensordot/axes:output:0+dense_49/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_49/Tensordot/GatherV2_1~
dense_49/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_49/Tensordot/Const?
dense_49/Tensordot/ProdProd$dense_49/Tensordot/GatherV2:output:0!dense_49/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_49/Tensordot/Prod?
dense_49/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_49/Tensordot/Const_1?
dense_49/Tensordot/Prod_1Prod&dense_49/Tensordot/GatherV2_1:output:0#dense_49/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_49/Tensordot/Prod_1?
dense_49/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_49/Tensordot/concat/axis?
dense_49/Tensordot/concatConcatV2 dense_49/Tensordot/free:output:0 dense_49/Tensordot/axes:output:0'dense_49/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/concat?
dense_49/Tensordot/stackPack dense_49/Tensordot/Prod:output:0"dense_49/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/stack?
dense_49/Tensordot/transpose	Transposedropout_24/dropout/Mul_1:z:0"dense_49/Tensordot/concat:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_49/Tensordot/transpose?
dense_49/Tensordot/ReshapeReshape dense_49/Tensordot/transpose:y:0!dense_49/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_49/Tensordot/Reshape?
dense_49/Tensordot/MatMulMatMul#dense_49/Tensordot/Reshape:output:0)dense_49/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_49/Tensordot/MatMul?
dense_49/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_49/Tensordot/Const_2?
 dense_49/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_49/Tensordot/concat_1/axis?
dense_49/Tensordot/concat_1ConcatV2$dense_49/Tensordot/GatherV2:output:0#dense_49/Tensordot/Const_2:output:0)dense_49/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/concat_1?
dense_49/TensordotReshape#dense_49/Tensordot/MatMul:product:0$dense_49/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/Tensordot?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/Tensordot:output:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/BiasAdd?
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/Relu?
!dense_50/Tensordot/ReadVariableOpReadVariableOp*dense_50_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_50/Tensordot/ReadVariableOp|
dense_50/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_50/Tensordot/axes?
dense_50/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_50/Tensordot/free
dense_50/Tensordot/ShapeShapedense_49/Relu:activations:0*
T0*
_output_shapes
:2
dense_50/Tensordot/Shape?
 dense_50/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_50/Tensordot/GatherV2/axis?
dense_50/Tensordot/GatherV2GatherV2!dense_50/Tensordot/Shape:output:0 dense_50/Tensordot/free:output:0)dense_50/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_50/Tensordot/GatherV2?
"dense_50/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_50/Tensordot/GatherV2_1/axis?
dense_50/Tensordot/GatherV2_1GatherV2!dense_50/Tensordot/Shape:output:0 dense_50/Tensordot/axes:output:0+dense_50/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_50/Tensordot/GatherV2_1~
dense_50/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const?
dense_50/Tensordot/ProdProd$dense_50/Tensordot/GatherV2:output:0!dense_50/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_50/Tensordot/Prod?
dense_50/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const_1?
dense_50/Tensordot/Prod_1Prod&dense_50/Tensordot/GatherV2_1:output:0#dense_50/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_50/Tensordot/Prod_1?
dense_50/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_50/Tensordot/concat/axis?
dense_50/Tensordot/concatConcatV2 dense_50/Tensordot/free:output:0 dense_50/Tensordot/axes:output:0'dense_50/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/concat?
dense_50/Tensordot/stackPack dense_50/Tensordot/Prod:output:0"dense_50/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/stack?
dense_50/Tensordot/transpose	Transposedense_49/Relu:activations:0"dense_50/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_50/Tensordot/transpose?
dense_50/Tensordot/ReshapeReshape dense_50/Tensordot/transpose:y:0!dense_50/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_50/Tensordot/Reshape?
dense_50/Tensordot/MatMulMatMul#dense_50/Tensordot/Reshape:output:0)dense_50/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_50/Tensordot/MatMul?
dense_50/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const_2?
 dense_50/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_50/Tensordot/concat_1/axis?
dense_50/Tensordot/concat_1ConcatV2$dense_50/Tensordot/GatherV2:output:0#dense_50/Tensordot/Const_2:output:0)dense_50/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/concat_1?
dense_50/TensordotReshape#dense_50/Tensordot/MatMul:product:0$dense_50/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/Tensordot?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/Tensordot:output:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/BiasAdd?
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/Reluy
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_25/dropout/Const?
dropout_25/dropout/MulMuldense_50/Relu:activations:0!dropout_25/dropout/Const:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout_25/dropout/Mul
dropout_25/dropout/ShapeShapedense_50/Relu:activations:0*
T0*
_output_shapes
:2
dropout_25/dropout/Shape?
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*8
_output_shapes&
$:"?????????????????? *
dtype021
/dropout_25/dropout/random_uniform/RandomUniform?
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_25/dropout/GreaterEqual/y?
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2!
dropout_25/dropout/GreaterEqual?
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"?????????????????? 2
dropout_25/dropout/Cast?
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout_25/dropout/Mul_1?
!dense_51/Tensordot/ReadVariableOpReadVariableOp*dense_51_tensordot_readvariableop_resource*
_output_shapes

: *
dtype02#
!dense_51/Tensordot/ReadVariableOp|
dense_51/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_51/Tensordot/axes?
dense_51/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_51/Tensordot/free?
dense_51/Tensordot/ShapeShapedropout_25/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_51/Tensordot/Shape?
 dense_51/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_51/Tensordot/GatherV2/axis?
dense_51/Tensordot/GatherV2GatherV2!dense_51/Tensordot/Shape:output:0 dense_51/Tensordot/free:output:0)dense_51/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_51/Tensordot/GatherV2?
"dense_51/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_51/Tensordot/GatherV2_1/axis?
dense_51/Tensordot/GatherV2_1GatherV2!dense_51/Tensordot/Shape:output:0 dense_51/Tensordot/axes:output:0+dense_51/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_51/Tensordot/GatherV2_1~
dense_51/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_51/Tensordot/Const?
dense_51/Tensordot/ProdProd$dense_51/Tensordot/GatherV2:output:0!dense_51/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_51/Tensordot/Prod?
dense_51/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_51/Tensordot/Const_1?
dense_51/Tensordot/Prod_1Prod&dense_51/Tensordot/GatherV2_1:output:0#dense_51/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_51/Tensordot/Prod_1?
dense_51/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_51/Tensordot/concat/axis?
dense_51/Tensordot/concatConcatV2 dense_51/Tensordot/free:output:0 dense_51/Tensordot/axes:output:0'dense_51/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/concat?
dense_51/Tensordot/stackPack dense_51/Tensordot/Prod:output:0"dense_51/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/stack?
dense_51/Tensordot/transpose	Transposedropout_25/dropout/Mul_1:z:0"dense_51/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_51/Tensordot/transpose?
dense_51/Tensordot/ReshapeReshape dense_51/Tensordot/transpose:y:0!dense_51/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_51/Tensordot/Reshape?
dense_51/Tensordot/MatMulMatMul#dense_51/Tensordot/Reshape:output:0)dense_51/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/Tensordot/MatMul?
dense_51/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_51/Tensordot/Const_2?
 dense_51/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_51/Tensordot/concat_1/axis?
dense_51/Tensordot/concat_1ConcatV2$dense_51/Tensordot/GatherV2:output:0#dense_51/Tensordot/Const_2:output:0)dense_51/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/concat_1?
dense_51/TensordotReshape#dense_51/Tensordot/MatMul:product:0$dense_51/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/Tensordot?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/Tensordot:output:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/BiasAdd?
dense_51/SoftmaxSoftmaxdense_51/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/Softmax?
IdentityIdentitydense_51/Softmax:softmax:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp"^dense_48/Tensordot/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp"^dense_49/Tensordot/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp"^dense_50/Tensordot/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp"^dense_51/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2F
!dense_48/Tensordot/ReadVariableOp!dense_48/Tensordot/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2F
!dense_49/Tensordot/ReadVariableOp!dense_49/Tensordot/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2F
!dense_50/Tensordot/ReadVariableOp!dense_50/Tensordot/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2F
!dense_51/Tensordot/ReadVariableOp!dense_51/Tensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?

?
-__inference_sequential_12_layer_call_fn_42691
dense_48_input
unknown:	B?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_12_layer_call_and_return_conditional_losses_426512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
??
?
 __inference__wrapped_model_42327
dense_48_inputK
8sequential_12_dense_48_tensordot_readvariableop_resource:	B?E
6sequential_12_dense_48_biasadd_readvariableop_resource:	?K
8sequential_12_dense_49_tensordot_readvariableop_resource:	?@D
6sequential_12_dense_49_biasadd_readvariableop_resource:@J
8sequential_12_dense_50_tensordot_readvariableop_resource:@ D
6sequential_12_dense_50_biasadd_readvariableop_resource: J
8sequential_12_dense_51_tensordot_readvariableop_resource: D
6sequential_12_dense_51_biasadd_readvariableop_resource:
identity??-sequential_12/dense_48/BiasAdd/ReadVariableOp?/sequential_12/dense_48/Tensordot/ReadVariableOp?-sequential_12/dense_49/BiasAdd/ReadVariableOp?/sequential_12/dense_49/Tensordot/ReadVariableOp?-sequential_12/dense_50/BiasAdd/ReadVariableOp?/sequential_12/dense_50/Tensordot/ReadVariableOp?-sequential_12/dense_51/BiasAdd/ReadVariableOp?/sequential_12/dense_51/Tensordot/ReadVariableOp?
/sequential_12/dense_48/Tensordot/ReadVariableOpReadVariableOp8sequential_12_dense_48_tensordot_readvariableop_resource*
_output_shapes
:	B?*
dtype021
/sequential_12/dense_48/Tensordot/ReadVariableOp?
%sequential_12/dense_48/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_12/dense_48/Tensordot/axes?
%sequential_12/dense_48/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_12/dense_48/Tensordot/free?
&sequential_12/dense_48/Tensordot/ShapeShapedense_48_input*
T0*
_output_shapes
:2(
&sequential_12/dense_48/Tensordot/Shape?
.sequential_12/dense_48/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_48/Tensordot/GatherV2/axis?
)sequential_12/dense_48/Tensordot/GatherV2GatherV2/sequential_12/dense_48/Tensordot/Shape:output:0.sequential_12/dense_48/Tensordot/free:output:07sequential_12/dense_48/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_12/dense_48/Tensordot/GatherV2?
0sequential_12/dense_48/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_12/dense_48/Tensordot/GatherV2_1/axis?
+sequential_12/dense_48/Tensordot/GatherV2_1GatherV2/sequential_12/dense_48/Tensordot/Shape:output:0.sequential_12/dense_48/Tensordot/axes:output:09sequential_12/dense_48/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_12/dense_48/Tensordot/GatherV2_1?
&sequential_12/dense_48/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_12/dense_48/Tensordot/Const?
%sequential_12/dense_48/Tensordot/ProdProd2sequential_12/dense_48/Tensordot/GatherV2:output:0/sequential_12/dense_48/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_12/dense_48/Tensordot/Prod?
(sequential_12/dense_48/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_12/dense_48/Tensordot/Const_1?
'sequential_12/dense_48/Tensordot/Prod_1Prod4sequential_12/dense_48/Tensordot/GatherV2_1:output:01sequential_12/dense_48/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_12/dense_48/Tensordot/Prod_1?
,sequential_12/dense_48/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_12/dense_48/Tensordot/concat/axis?
'sequential_12/dense_48/Tensordot/concatConcatV2.sequential_12/dense_48/Tensordot/free:output:0.sequential_12/dense_48/Tensordot/axes:output:05sequential_12/dense_48/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/dense_48/Tensordot/concat?
&sequential_12/dense_48/Tensordot/stackPack.sequential_12/dense_48/Tensordot/Prod:output:00sequential_12/dense_48/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_12/dense_48/Tensordot/stack?
*sequential_12/dense_48/Tensordot/transpose	Transposedense_48_input0sequential_12/dense_48/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????B2,
*sequential_12/dense_48/Tensordot/transpose?
(sequential_12/dense_48/Tensordot/ReshapeReshape.sequential_12/dense_48/Tensordot/transpose:y:0/sequential_12/dense_48/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_12/dense_48/Tensordot/Reshape?
'sequential_12/dense_48/Tensordot/MatMulMatMul1sequential_12/dense_48/Tensordot/Reshape:output:07sequential_12/dense_48/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_12/dense_48/Tensordot/MatMul?
(sequential_12/dense_48/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2*
(sequential_12/dense_48/Tensordot/Const_2?
.sequential_12/dense_48/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_48/Tensordot/concat_1/axis?
)sequential_12/dense_48/Tensordot/concat_1ConcatV22sequential_12/dense_48/Tensordot/GatherV2:output:01sequential_12/dense_48/Tensordot/Const_2:output:07sequential_12/dense_48/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_12/dense_48/Tensordot/concat_1?
 sequential_12/dense_48/TensordotReshape1sequential_12/dense_48/Tensordot/MatMul:product:02sequential_12/dense_48/Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#???????????????????2"
 sequential_12/dense_48/Tensordot?
-sequential_12/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_12/dense_48/BiasAdd/ReadVariableOp?
sequential_12/dense_48/BiasAddBiasAdd)sequential_12/dense_48/Tensordot:output:05sequential_12/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#???????????????????2 
sequential_12/dense_48/BiasAdd?
sequential_12/dense_48/ReluRelu'sequential_12/dense_48/BiasAdd:output:0*
T0*9
_output_shapes'
%:#???????????????????2
sequential_12/dense_48/Relu?
!sequential_12/dropout_24/IdentityIdentity)sequential_12/dense_48/Relu:activations:0*
T0*9
_output_shapes'
%:#???????????????????2#
!sequential_12/dropout_24/Identity?
/sequential_12/dense_49/Tensordot/ReadVariableOpReadVariableOp8sequential_12_dense_49_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype021
/sequential_12/dense_49/Tensordot/ReadVariableOp?
%sequential_12/dense_49/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_12/dense_49/Tensordot/axes?
%sequential_12/dense_49/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_12/dense_49/Tensordot/free?
&sequential_12/dense_49/Tensordot/ShapeShape*sequential_12/dropout_24/Identity:output:0*
T0*
_output_shapes
:2(
&sequential_12/dense_49/Tensordot/Shape?
.sequential_12/dense_49/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_49/Tensordot/GatherV2/axis?
)sequential_12/dense_49/Tensordot/GatherV2GatherV2/sequential_12/dense_49/Tensordot/Shape:output:0.sequential_12/dense_49/Tensordot/free:output:07sequential_12/dense_49/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_12/dense_49/Tensordot/GatherV2?
0sequential_12/dense_49/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_12/dense_49/Tensordot/GatherV2_1/axis?
+sequential_12/dense_49/Tensordot/GatherV2_1GatherV2/sequential_12/dense_49/Tensordot/Shape:output:0.sequential_12/dense_49/Tensordot/axes:output:09sequential_12/dense_49/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_12/dense_49/Tensordot/GatherV2_1?
&sequential_12/dense_49/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_12/dense_49/Tensordot/Const?
%sequential_12/dense_49/Tensordot/ProdProd2sequential_12/dense_49/Tensordot/GatherV2:output:0/sequential_12/dense_49/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_12/dense_49/Tensordot/Prod?
(sequential_12/dense_49/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_12/dense_49/Tensordot/Const_1?
'sequential_12/dense_49/Tensordot/Prod_1Prod4sequential_12/dense_49/Tensordot/GatherV2_1:output:01sequential_12/dense_49/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_12/dense_49/Tensordot/Prod_1?
,sequential_12/dense_49/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_12/dense_49/Tensordot/concat/axis?
'sequential_12/dense_49/Tensordot/concatConcatV2.sequential_12/dense_49/Tensordot/free:output:0.sequential_12/dense_49/Tensordot/axes:output:05sequential_12/dense_49/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/dense_49/Tensordot/concat?
&sequential_12/dense_49/Tensordot/stackPack.sequential_12/dense_49/Tensordot/Prod:output:00sequential_12/dense_49/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_12/dense_49/Tensordot/stack?
*sequential_12/dense_49/Tensordot/transpose	Transpose*sequential_12/dropout_24/Identity:output:00sequential_12/dense_49/Tensordot/concat:output:0*
T0*9
_output_shapes'
%:#???????????????????2,
*sequential_12/dense_49/Tensordot/transpose?
(sequential_12/dense_49/Tensordot/ReshapeReshape.sequential_12/dense_49/Tensordot/transpose:y:0/sequential_12/dense_49/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_12/dense_49/Tensordot/Reshape?
'sequential_12/dense_49/Tensordot/MatMulMatMul1sequential_12/dense_49/Tensordot/Reshape:output:07sequential_12/dense_49/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2)
'sequential_12/dense_49/Tensordot/MatMul?
(sequential_12/dense_49/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2*
(sequential_12/dense_49/Tensordot/Const_2?
.sequential_12/dense_49/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_49/Tensordot/concat_1/axis?
)sequential_12/dense_49/Tensordot/concat_1ConcatV22sequential_12/dense_49/Tensordot/GatherV2:output:01sequential_12/dense_49/Tensordot/Const_2:output:07sequential_12/dense_49/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_12/dense_49/Tensordot/concat_1?
 sequential_12/dense_49/TensordotReshape1sequential_12/dense_49/Tensordot/MatMul:product:02sequential_12/dense_49/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????@2"
 sequential_12/dense_49/Tensordot?
-sequential_12/dense_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_12/dense_49/BiasAdd/ReadVariableOp?
sequential_12/dense_49/BiasAddBiasAdd)sequential_12/dense_49/Tensordot:output:05sequential_12/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????@2 
sequential_12/dense_49/BiasAdd?
sequential_12/dense_49/ReluRelu'sequential_12/dense_49/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
sequential_12/dense_49/Relu?
/sequential_12/dense_50/Tensordot/ReadVariableOpReadVariableOp8sequential_12_dense_50_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype021
/sequential_12/dense_50/Tensordot/ReadVariableOp?
%sequential_12/dense_50/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_12/dense_50/Tensordot/axes?
%sequential_12/dense_50/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_12/dense_50/Tensordot/free?
&sequential_12/dense_50/Tensordot/ShapeShape)sequential_12/dense_49/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_12/dense_50/Tensordot/Shape?
.sequential_12/dense_50/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_50/Tensordot/GatherV2/axis?
)sequential_12/dense_50/Tensordot/GatherV2GatherV2/sequential_12/dense_50/Tensordot/Shape:output:0.sequential_12/dense_50/Tensordot/free:output:07sequential_12/dense_50/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_12/dense_50/Tensordot/GatherV2?
0sequential_12/dense_50/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_12/dense_50/Tensordot/GatherV2_1/axis?
+sequential_12/dense_50/Tensordot/GatherV2_1GatherV2/sequential_12/dense_50/Tensordot/Shape:output:0.sequential_12/dense_50/Tensordot/axes:output:09sequential_12/dense_50/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_12/dense_50/Tensordot/GatherV2_1?
&sequential_12/dense_50/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_12/dense_50/Tensordot/Const?
%sequential_12/dense_50/Tensordot/ProdProd2sequential_12/dense_50/Tensordot/GatherV2:output:0/sequential_12/dense_50/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_12/dense_50/Tensordot/Prod?
(sequential_12/dense_50/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_12/dense_50/Tensordot/Const_1?
'sequential_12/dense_50/Tensordot/Prod_1Prod4sequential_12/dense_50/Tensordot/GatherV2_1:output:01sequential_12/dense_50/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_12/dense_50/Tensordot/Prod_1?
,sequential_12/dense_50/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_12/dense_50/Tensordot/concat/axis?
'sequential_12/dense_50/Tensordot/concatConcatV2.sequential_12/dense_50/Tensordot/free:output:0.sequential_12/dense_50/Tensordot/axes:output:05sequential_12/dense_50/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/dense_50/Tensordot/concat?
&sequential_12/dense_50/Tensordot/stackPack.sequential_12/dense_50/Tensordot/Prod:output:00sequential_12/dense_50/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_12/dense_50/Tensordot/stack?
*sequential_12/dense_50/Tensordot/transpose	Transpose)sequential_12/dense_49/Relu:activations:00sequential_12/dense_50/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????@2,
*sequential_12/dense_50/Tensordot/transpose?
(sequential_12/dense_50/Tensordot/ReshapeReshape.sequential_12/dense_50/Tensordot/transpose:y:0/sequential_12/dense_50/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_12/dense_50/Tensordot/Reshape?
'sequential_12/dense_50/Tensordot/MatMulMatMul1sequential_12/dense_50/Tensordot/Reshape:output:07sequential_12/dense_50/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2)
'sequential_12/dense_50/Tensordot/MatMul?
(sequential_12/dense_50/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_12/dense_50/Tensordot/Const_2?
.sequential_12/dense_50/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_50/Tensordot/concat_1/axis?
)sequential_12/dense_50/Tensordot/concat_1ConcatV22sequential_12/dense_50/Tensordot/GatherV2:output:01sequential_12/dense_50/Tensordot/Const_2:output:07sequential_12/dense_50/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_12/dense_50/Tensordot/concat_1?
 sequential_12/dense_50/TensordotReshape1sequential_12/dense_50/Tensordot/MatMul:product:02sequential_12/dense_50/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2"
 sequential_12/dense_50/Tensordot?
-sequential_12/dense_50/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_12/dense_50/BiasAdd/ReadVariableOp?
sequential_12/dense_50/BiasAddBiasAdd)sequential_12/dense_50/Tensordot:output:05sequential_12/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"?????????????????? 2 
sequential_12/dense_50/BiasAdd?
sequential_12/dense_50/ReluRelu'sequential_12/dense_50/BiasAdd:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
sequential_12/dense_50/Relu?
!sequential_12/dropout_25/IdentityIdentity)sequential_12/dense_50/Relu:activations:0*
T0*8
_output_shapes&
$:"?????????????????? 2#
!sequential_12/dropout_25/Identity?
/sequential_12/dense_51/Tensordot/ReadVariableOpReadVariableOp8sequential_12_dense_51_tensordot_readvariableop_resource*
_output_shapes

: *
dtype021
/sequential_12/dense_51/Tensordot/ReadVariableOp?
%sequential_12/dense_51/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%sequential_12/dense_51/Tensordot/axes?
%sequential_12/dense_51/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_12/dense_51/Tensordot/free?
&sequential_12/dense_51/Tensordot/ShapeShape*sequential_12/dropout_25/Identity:output:0*
T0*
_output_shapes
:2(
&sequential_12/dense_51/Tensordot/Shape?
.sequential_12/dense_51/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_51/Tensordot/GatherV2/axis?
)sequential_12/dense_51/Tensordot/GatherV2GatherV2/sequential_12/dense_51/Tensordot/Shape:output:0.sequential_12/dense_51/Tensordot/free:output:07sequential_12/dense_51/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_12/dense_51/Tensordot/GatherV2?
0sequential_12/dense_51/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_12/dense_51/Tensordot/GatherV2_1/axis?
+sequential_12/dense_51/Tensordot/GatherV2_1GatherV2/sequential_12/dense_51/Tensordot/Shape:output:0.sequential_12/dense_51/Tensordot/axes:output:09sequential_12/dense_51/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_12/dense_51/Tensordot/GatherV2_1?
&sequential_12/dense_51/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_12/dense_51/Tensordot/Const?
%sequential_12/dense_51/Tensordot/ProdProd2sequential_12/dense_51/Tensordot/GatherV2:output:0/sequential_12/dense_51/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%sequential_12/dense_51/Tensordot/Prod?
(sequential_12/dense_51/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_12/dense_51/Tensordot/Const_1?
'sequential_12/dense_51/Tensordot/Prod_1Prod4sequential_12/dense_51/Tensordot/GatherV2_1:output:01sequential_12/dense_51/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'sequential_12/dense_51/Tensordot/Prod_1?
,sequential_12/dense_51/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_12/dense_51/Tensordot/concat/axis?
'sequential_12/dense_51/Tensordot/concatConcatV2.sequential_12/dense_51/Tensordot/free:output:0.sequential_12/dense_51/Tensordot/axes:output:05sequential_12/dense_51/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_12/dense_51/Tensordot/concat?
&sequential_12/dense_51/Tensordot/stackPack.sequential_12/dense_51/Tensordot/Prod:output:00sequential_12/dense_51/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_12/dense_51/Tensordot/stack?
*sequential_12/dense_51/Tensordot/transpose	Transpose*sequential_12/dropout_25/Identity:output:00sequential_12/dense_51/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2,
*sequential_12/dense_51/Tensordot/transpose?
(sequential_12/dense_51/Tensordot/ReshapeReshape.sequential_12/dense_51/Tensordot/transpose:y:0/sequential_12/dense_51/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(sequential_12/dense_51/Tensordot/Reshape?
'sequential_12/dense_51/Tensordot/MatMulMatMul1sequential_12/dense_51/Tensordot/Reshape:output:07sequential_12/dense_51/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'sequential_12/dense_51/Tensordot/MatMul?
(sequential_12/dense_51/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_12/dense_51/Tensordot/Const_2?
.sequential_12/dense_51/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_12/dense_51/Tensordot/concat_1/axis?
)sequential_12/dense_51/Tensordot/concat_1ConcatV22sequential_12/dense_51/Tensordot/GatherV2:output:01sequential_12/dense_51/Tensordot/Const_2:output:07sequential_12/dense_51/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_12/dense_51/Tensordot/concat_1?
 sequential_12/dense_51/TensordotReshape1sequential_12/dense_51/Tensordot/MatMul:product:02sequential_12/dense_51/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????2"
 sequential_12/dense_51/Tensordot?
-sequential_12/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_12/dense_51/BiasAdd/ReadVariableOp?
sequential_12/dense_51/BiasAddBiasAdd)sequential_12/dense_51/Tensordot:output:05sequential_12/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2 
sequential_12/dense_51/BiasAdd?
sequential_12/dense_51/SoftmaxSoftmax'sequential_12/dense_51/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????2 
sequential_12/dense_51/Softmax?
IdentityIdentity(sequential_12/dense_51/Softmax:softmax:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp.^sequential_12/dense_48/BiasAdd/ReadVariableOp0^sequential_12/dense_48/Tensordot/ReadVariableOp.^sequential_12/dense_49/BiasAdd/ReadVariableOp0^sequential_12/dense_49/Tensordot/ReadVariableOp.^sequential_12/dense_50/BiasAdd/ReadVariableOp0^sequential_12/dense_50/Tensordot/ReadVariableOp.^sequential_12/dense_51/BiasAdd/ReadVariableOp0^sequential_12/dense_51/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2^
-sequential_12/dense_48/BiasAdd/ReadVariableOp-sequential_12/dense_48/BiasAdd/ReadVariableOp2b
/sequential_12/dense_48/Tensordot/ReadVariableOp/sequential_12/dense_48/Tensordot/ReadVariableOp2^
-sequential_12/dense_49/BiasAdd/ReadVariableOp-sequential_12/dense_49/BiasAdd/ReadVariableOp2b
/sequential_12/dense_49/Tensordot/ReadVariableOp/sequential_12/dense_49/Tensordot/ReadVariableOp2^
-sequential_12/dense_50/BiasAdd/ReadVariableOp-sequential_12/dense_50/BiasAdd/ReadVariableOp2b
/sequential_12/dense_50/Tensordot/ReadVariableOp/sequential_12/dense_50/Tensordot/ReadVariableOp2^
-sequential_12/dense_51/BiasAdd/ReadVariableOp-sequential_12/dense_51/BiasAdd/ReadVariableOp2b
/sequential_12/dense_51/Tensordot/ReadVariableOp/sequential_12/dense_51/Tensordot/ReadVariableOp:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
?"
?
C__inference_dense_49_layer_call_and_return_conditional_losses_42409

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*9
_output_shapes'
%:#???????????????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????@2	
BiasAddi
ReluReluBiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
Relu~
IdentityIdentityRelu:activations:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42928

inputs=
*dense_48_tensordot_readvariableop_resource:	B?7
(dense_48_biasadd_readvariableop_resource:	?=
*dense_49_tensordot_readvariableop_resource:	?@6
(dense_49_biasadd_readvariableop_resource:@<
*dense_50_tensordot_readvariableop_resource:@ 6
(dense_50_biasadd_readvariableop_resource: <
*dense_51_tensordot_readvariableop_resource: 6
(dense_51_biasadd_readvariableop_resource:
identity??dense_48/BiasAdd/ReadVariableOp?!dense_48/Tensordot/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?!dense_49/Tensordot/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?!dense_50/Tensordot/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?!dense_51/Tensordot/ReadVariableOp?
!dense_48/Tensordot/ReadVariableOpReadVariableOp*dense_48_tensordot_readvariableop_resource*
_output_shapes
:	B?*
dtype02#
!dense_48/Tensordot/ReadVariableOp|
dense_48/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_48/Tensordot/axes?
dense_48/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_48/Tensordot/freej
dense_48/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_48/Tensordot/Shape?
 dense_48/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_48/Tensordot/GatherV2/axis?
dense_48/Tensordot/GatherV2GatherV2!dense_48/Tensordot/Shape:output:0 dense_48/Tensordot/free:output:0)dense_48/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_48/Tensordot/GatherV2?
"dense_48/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_48/Tensordot/GatherV2_1/axis?
dense_48/Tensordot/GatherV2_1GatherV2!dense_48/Tensordot/Shape:output:0 dense_48/Tensordot/axes:output:0+dense_48/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_48/Tensordot/GatherV2_1~
dense_48/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_48/Tensordot/Const?
dense_48/Tensordot/ProdProd$dense_48/Tensordot/GatherV2:output:0!dense_48/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_48/Tensordot/Prod?
dense_48/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_48/Tensordot/Const_1?
dense_48/Tensordot/Prod_1Prod&dense_48/Tensordot/GatherV2_1:output:0#dense_48/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_48/Tensordot/Prod_1?
dense_48/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_48/Tensordot/concat/axis?
dense_48/Tensordot/concatConcatV2 dense_48/Tensordot/free:output:0 dense_48/Tensordot/axes:output:0'dense_48/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/concat?
dense_48/Tensordot/stackPack dense_48/Tensordot/Prod:output:0"dense_48/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/stack?
dense_48/Tensordot/transpose	Transposeinputs"dense_48/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????B2
dense_48/Tensordot/transpose?
dense_48/Tensordot/ReshapeReshape dense_48/Tensordot/transpose:y:0!dense_48/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_48/Tensordot/Reshape?
dense_48/Tensordot/MatMulMatMul#dense_48/Tensordot/Reshape:output:0)dense_48/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/Tensordot/MatMul?
dense_48/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_48/Tensordot/Const_2?
 dense_48/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_48/Tensordot/concat_1/axis?
dense_48/Tensordot/concat_1ConcatV2$dense_48/Tensordot/GatherV2:output:0#dense_48/Tensordot/Const_2:output:0)dense_48/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_48/Tensordot/concat_1?
dense_48/TensordotReshape#dense_48/Tensordot/MatMul:product:0$dense_48/Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/Tensordot?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/Tensordot:output:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/BiasAdd?
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_48/Relu?
dropout_24/IdentityIdentitydense_48/Relu:activations:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout_24/Identity?
!dense_49/Tensordot/ReadVariableOpReadVariableOp*dense_49_tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!dense_49/Tensordot/ReadVariableOp|
dense_49/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_49/Tensordot/axes?
dense_49/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_49/Tensordot/free?
dense_49/Tensordot/ShapeShapedropout_24/Identity:output:0*
T0*
_output_shapes
:2
dense_49/Tensordot/Shape?
 dense_49/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_49/Tensordot/GatherV2/axis?
dense_49/Tensordot/GatherV2GatherV2!dense_49/Tensordot/Shape:output:0 dense_49/Tensordot/free:output:0)dense_49/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_49/Tensordot/GatherV2?
"dense_49/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_49/Tensordot/GatherV2_1/axis?
dense_49/Tensordot/GatherV2_1GatherV2!dense_49/Tensordot/Shape:output:0 dense_49/Tensordot/axes:output:0+dense_49/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_49/Tensordot/GatherV2_1~
dense_49/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_49/Tensordot/Const?
dense_49/Tensordot/ProdProd$dense_49/Tensordot/GatherV2:output:0!dense_49/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_49/Tensordot/Prod?
dense_49/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_49/Tensordot/Const_1?
dense_49/Tensordot/Prod_1Prod&dense_49/Tensordot/GatherV2_1:output:0#dense_49/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_49/Tensordot/Prod_1?
dense_49/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_49/Tensordot/concat/axis?
dense_49/Tensordot/concatConcatV2 dense_49/Tensordot/free:output:0 dense_49/Tensordot/axes:output:0'dense_49/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/concat?
dense_49/Tensordot/stackPack dense_49/Tensordot/Prod:output:0"dense_49/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/stack?
dense_49/Tensordot/transpose	Transposedropout_24/Identity:output:0"dense_49/Tensordot/concat:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dense_49/Tensordot/transpose?
dense_49/Tensordot/ReshapeReshape dense_49/Tensordot/transpose:y:0!dense_49/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_49/Tensordot/Reshape?
dense_49/Tensordot/MatMulMatMul#dense_49/Tensordot/Reshape:output:0)dense_49/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_49/Tensordot/MatMul?
dense_49/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_49/Tensordot/Const_2?
 dense_49/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_49/Tensordot/concat_1/axis?
dense_49/Tensordot/concat_1ConcatV2$dense_49/Tensordot/GatherV2:output:0#dense_49/Tensordot/Const_2:output:0)dense_49/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_49/Tensordot/concat_1?
dense_49/TensordotReshape#dense_49/Tensordot/MatMul:product:0$dense_49/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/Tensordot?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/Tensordot:output:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/BiasAdd?
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_49/Relu?
!dense_50/Tensordot/ReadVariableOpReadVariableOp*dense_50_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_50/Tensordot/ReadVariableOp|
dense_50/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_50/Tensordot/axes?
dense_50/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_50/Tensordot/free
dense_50/Tensordot/ShapeShapedense_49/Relu:activations:0*
T0*
_output_shapes
:2
dense_50/Tensordot/Shape?
 dense_50/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_50/Tensordot/GatherV2/axis?
dense_50/Tensordot/GatherV2GatherV2!dense_50/Tensordot/Shape:output:0 dense_50/Tensordot/free:output:0)dense_50/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_50/Tensordot/GatherV2?
"dense_50/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_50/Tensordot/GatherV2_1/axis?
dense_50/Tensordot/GatherV2_1GatherV2!dense_50/Tensordot/Shape:output:0 dense_50/Tensordot/axes:output:0+dense_50/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_50/Tensordot/GatherV2_1~
dense_50/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const?
dense_50/Tensordot/ProdProd$dense_50/Tensordot/GatherV2:output:0!dense_50/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_50/Tensordot/Prod?
dense_50/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const_1?
dense_50/Tensordot/Prod_1Prod&dense_50/Tensordot/GatherV2_1:output:0#dense_50/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_50/Tensordot/Prod_1?
dense_50/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_50/Tensordot/concat/axis?
dense_50/Tensordot/concatConcatV2 dense_50/Tensordot/free:output:0 dense_50/Tensordot/axes:output:0'dense_50/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/concat?
dense_50/Tensordot/stackPack dense_50/Tensordot/Prod:output:0"dense_50/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/stack?
dense_50/Tensordot/transpose	Transposedense_49/Relu:activations:0"dense_50/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
dense_50/Tensordot/transpose?
dense_50/Tensordot/ReshapeReshape dense_50/Tensordot/transpose:y:0!dense_50/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_50/Tensordot/Reshape?
dense_50/Tensordot/MatMulMatMul#dense_50/Tensordot/Reshape:output:0)dense_50/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_50/Tensordot/MatMul?
dense_50/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_50/Tensordot/Const_2?
 dense_50/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_50/Tensordot/concat_1/axis?
dense_50/Tensordot/concat_1ConcatV2$dense_50/Tensordot/GatherV2:output:0#dense_50/Tensordot/Const_2:output:0)dense_50/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_50/Tensordot/concat_1?
dense_50/TensordotReshape#dense_50/Tensordot/MatMul:product:0$dense_50/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/Tensordot?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAddBiasAdddense_50/Tensordot:output:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/BiasAdd?
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_50/Relu?
dropout_25/IdentityIdentitydense_50/Relu:activations:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dropout_25/Identity?
!dense_51/Tensordot/ReadVariableOpReadVariableOp*dense_51_tensordot_readvariableop_resource*
_output_shapes

: *
dtype02#
!dense_51/Tensordot/ReadVariableOp|
dense_51/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_51/Tensordot/axes?
dense_51/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_51/Tensordot/free?
dense_51/Tensordot/ShapeShapedropout_25/Identity:output:0*
T0*
_output_shapes
:2
dense_51/Tensordot/Shape?
 dense_51/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_51/Tensordot/GatherV2/axis?
dense_51/Tensordot/GatherV2GatherV2!dense_51/Tensordot/Shape:output:0 dense_51/Tensordot/free:output:0)dense_51/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_51/Tensordot/GatherV2?
"dense_51/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_51/Tensordot/GatherV2_1/axis?
dense_51/Tensordot/GatherV2_1GatherV2!dense_51/Tensordot/Shape:output:0 dense_51/Tensordot/axes:output:0+dense_51/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_51/Tensordot/GatherV2_1~
dense_51/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_51/Tensordot/Const?
dense_51/Tensordot/ProdProd$dense_51/Tensordot/GatherV2:output:0!dense_51/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_51/Tensordot/Prod?
dense_51/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_51/Tensordot/Const_1?
dense_51/Tensordot/Prod_1Prod&dense_51/Tensordot/GatherV2_1:output:0#dense_51/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_51/Tensordot/Prod_1?
dense_51/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_51/Tensordot/concat/axis?
dense_51/Tensordot/concatConcatV2 dense_51/Tensordot/free:output:0 dense_51/Tensordot/axes:output:0'dense_51/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/concat?
dense_51/Tensordot/stackPack dense_51/Tensordot/Prod:output:0"dense_51/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/stack?
dense_51/Tensordot/transpose	Transposedropout_25/Identity:output:0"dense_51/Tensordot/concat:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
dense_51/Tensordot/transpose?
dense_51/Tensordot/ReshapeReshape dense_51/Tensordot/transpose:y:0!dense_51/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_51/Tensordot/Reshape?
dense_51/Tensordot/MatMulMatMul#dense_51/Tensordot/Reshape:output:0)dense_51/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_51/Tensordot/MatMul?
dense_51/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_51/Tensordot/Const_2?
 dense_51/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_51/Tensordot/concat_1/axis?
dense_51/Tensordot/concat_1ConcatV2$dense_51/Tensordot/GatherV2:output:0#dense_51/Tensordot/Const_2:output:0)dense_51/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_51/Tensordot/concat_1?
dense_51/TensordotReshape#dense_51/Tensordot/MatMul:product:0$dense_51/Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/Tensordot?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAddBiasAdddense_51/Tensordot:output:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/BiasAdd?
dense_51/SoftmaxSoftmaxdense_51/BiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dense_51/Softmax?
IdentityIdentitydense_51/Softmax:softmax:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp"^dense_48/Tensordot/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp"^dense_49/Tensordot/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp"^dense_50/Tensordot/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp"^dense_51/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2F
!dense_48/Tensordot/ReadVariableOp!dense_48/Tensordot/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2F
!dense_49/Tensordot/ReadVariableOp!dense_49/Tensordot/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2F
!dense_50/Tensordot/ReadVariableOp!dense_50/Tensordot/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2F
!dense_51/Tensordot/ReadVariableOp!dense_51/Tensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?"
?
C__inference_dense_51_layer_call_and_return_conditional_losses_42490

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2	
BiasAddr
SoftmaxSoftmaxBiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Softmax}
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?"
?
C__inference_dense_48_layer_call_and_return_conditional_losses_43096

inputs4
!tensordot_readvariableop_resource:	B?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	B?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????B2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#???????????????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#???????????????????2	
BiasAddj
ReluReluBiasAdd:output:0*
T0*9
_output_shapes'
%:#???????????????????2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*9
_output_shapes'
%:#???????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_43218

inputs

identity_1k
IdentityIdentityinputs*
T0*8
_output_shapes&
$:"?????????????????? 2

Identityz

Identity_1IdentityIdentity:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? :` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42717
dense_48_input!
dense_48_42694:	B?
dense_48_42696:	?!
dense_49_42700:	?@
dense_49_42702:@ 
dense_50_42705:@ 
dense_50_42707:  
dense_51_42711: 
dense_51_42713:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCalldense_48_inputdense_48_42694dense_48_42696*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_423652"
 dense_48/StatefulPartitionedCall?
dropout_24/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_423762
dropout_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0dense_49_42700dense_49_42702*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_424092"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_42705dense_50_42707*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_424462"
 dense_50/StatefulPartitionedCall?
dropout_25/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_424572
dropout_25/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_51_42711dense_51_42713*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_51_layer_call_and_return_conditional_losses_424902"
 dense_51/StatefulPartitionedCall?
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:h d
8
_output_shapes&
$:"??????????????????B
(
_user_specified_namedense_48_input
?
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42497

inputs!
dense_48_42366:	B?
dense_48_42368:	?!
dense_49_42410:	?@
dense_49_42412:@ 
dense_50_42447:@ 
dense_50_42449:  
dense_51_42491: 
dense_51_42493:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCallinputsdense_48_42366dense_48_42368*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_423652"
 dense_48/StatefulPartitionedCall?
dropout_24/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_423762
dropout_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0dense_49_42410dense_49_42412*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_424092"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_42447dense_50_42449*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_424462"
 dense_50/StatefulPartitionedCall?
dropout_25/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_424572
dropout_25/PartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_51_42491dense_51_42493*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_51_layer_call_and_return_conditional_losses_424902"
 dense_51/StatefulPartitionedCall?
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?
?
(__inference_dense_51_layer_call_fn_43239

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_51_layer_call_and_return_conditional_losses_424902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"?????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?"
?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42651

inputs!
dense_48_42628:	B?
dense_48_42630:	?!
dense_49_42634:	?@
dense_49_42636:@ 
dense_50_42639:@ 
dense_50_42641:  
dense_51_42645: 
dense_51_42647:
identity?? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall?"dropout_24/StatefulPartitionedCall?"dropout_25/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCallinputsdense_48_42628dense_48_42630*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_423652"
 dense_48/StatefulPartitionedCall?
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_425892$
"dropout_24/StatefulPartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0dense_49_42634dense_49_42636*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_49_layer_call_and_return_conditional_losses_424092"
 dense_49/StatefulPartitionedCall?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_42639dense_50_42641*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_424462"
 dense_50/StatefulPartitionedCall?
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_425462$
"dropout_25/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_51_42645dense_51_42647*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"??????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_51_layer_call_and_return_conditional_losses_424902"
 dense_51/StatefulPartitionedCall?
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:"??????????????????B: : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?
d
E__inference_dropout_24_layer_call_and_return_conditional_losses_43123

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*9
_output_shapes'
%:#???????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*9
_output_shapes'
%:#???????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/Mul_1w
IdentityIdentitydropout/Mul_1:z:0*
T0*9
_output_shapes'
%:#???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?"
?
C__inference_dense_50_layer_call_and_return_conditional_losses_42446

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"?????????????????? 2	
BiasAddi
ReluReluBiasAdd:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
Relu~
IdentityIdentityRelu:activations:0^NoOp*
T0*8
_output_shapes&
$:"?????????????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????@
 
_user_specified_nameinputs
?
c
*__inference_dropout_25_layer_call_fn_43213

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_425462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:"?????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs
?"
?
C__inference_dense_49_layer_call_and_return_conditional_losses_43163

inputs4
!tensordot_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*9
_output_shapes'
%:#???????????????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????@2	
BiasAddi
ReluReluBiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????@2
Relu~
IdentityIdentityRelu:activations:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):#???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_24_layer_call_and_return_conditional_losses_42589

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*9
_output_shapes'
%:#???????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*9
_output_shapes'
%:#???????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*9
_output_shapes'
%:#???????????????????2
dropout/Mul_1w
IdentityIdentitydropout/Mul_1:z:0*
T0*9
_output_shapes'
%:#???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
?
(__inference_dense_48_layer_call_fn_43065

inputs
unknown:	B?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_48_layer_call_and_return_conditional_losses_423652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????B: : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?"
?
C__inference_dense_48_layer_call_and_return_conditional_losses_42365

inputs4
!tensordot_readvariableop_resource:	B?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	B?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"??????????????????B2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*9
_output_shapes'
%:#???????????????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#???????????????????2	
BiasAddj
ReluReluBiasAdd:output:0*
T0*9
_output_shapes'
%:#???????????????????2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*9
_output_shapes'
%:#???????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"??????????????????B
 
_user_specified_nameinputs
?
c
*__inference_dropout_24_layer_call_fn_43106

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_24_layer_call_and_return_conditional_losses_425892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*9
_output_shapes'
%:#???????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#???????????????????22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#???????????????????
 
_user_specified_nameinputs
?
?
(__inference_dense_50_layer_call_fn_43172

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *8
_output_shapes&
$:"?????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_50_layer_call_and_return_conditional_losses_424462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*8
_output_shapes&
$:"?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"??????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"??????????????????@
 
_user_specified_nameinputs
Ԏ
?
!__inference__traced_restore_43501
file_prefix3
 assignvariableop_dense_48_kernel:	B?/
 assignvariableop_1_dense_48_bias:	?5
"assignvariableop_2_dense_49_kernel:	?@.
 assignvariableop_3_dense_49_bias:@4
"assignvariableop_4_dense_50_kernel:@ .
 assignvariableop_5_dense_50_bias: 4
"assignvariableop_6_dense_51_kernel: .
 assignvariableop_7_dense_51_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: =
*assignvariableop_17_adam_dense_48_kernel_m:	B?7
(assignvariableop_18_adam_dense_48_bias_m:	?=
*assignvariableop_19_adam_dense_49_kernel_m:	?@6
(assignvariableop_20_adam_dense_49_bias_m:@<
*assignvariableop_21_adam_dense_50_kernel_m:@ 6
(assignvariableop_22_adam_dense_50_bias_m: <
*assignvariableop_23_adam_dense_51_kernel_m: 6
(assignvariableop_24_adam_dense_51_bias_m:=
*assignvariableop_25_adam_dense_48_kernel_v:	B?7
(assignvariableop_26_adam_dense_48_bias_v:	?=
*assignvariableop_27_adam_dense_49_kernel_v:	?@6
(assignvariableop_28_adam_dense_49_bias_v:@<
*assignvariableop_29_adam_dense_50_kernel_v:@ 6
(assignvariableop_30_adam_dense_50_bias_v: <
*assignvariableop_31_adam_dense_51_kernel_v: 6
(assignvariableop_32_adam_dense_51_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_50_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_50_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_51_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_51_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_48_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_48_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_49_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_49_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_50_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_50_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_51_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_51_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_48_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_48_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_49_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_49_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_50_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_50_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_51_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_51_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?"
?
C__inference_dense_51_layer_call_and_return_conditional_losses_43270

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*8
_output_shapes&
$:"?????????????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*8
_output_shapes&
$:"??????????????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2	
BiasAddr
SoftmaxSoftmaxBiasAdd:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Softmax}
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*8
_output_shapes&
$:"??????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:` \
8
_output_shapes&
$:"?????????????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Z
dense_48_inputH
 serving_default_dense_48_input:0"??????????????????BM
dense_51A
StatefulPartitionedCall:0"??????????????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
p__call__
*q&call_and_return_all_conditional_losses
r_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
regularization_losses
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratem`mambmcmdme'mf(mgvhvivjvkvlvm'vn(vo"
	optimizer
X
0
1
2
3
4
5
'6
(7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
'6
(7"
trackable_list_wrapper
?
2metrics

3layers
4layer_regularization_losses
5non_trainable_variables
	variables
	regularization_losses

trainable_variables
6layer_metrics
p__call__
r_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
": 	B?2dense_48/kernel
:?2dense_48/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
7metrics

8layers
9layer_regularization_losses
:non_trainable_variables
	variables
regularization_losses
trainable_variables
;layer_metrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
<metrics

=layers
>layer_regularization_losses
?non_trainable_variables
	variables
regularization_losses
trainable_variables
@layer_metrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
": 	?@2dense_49/kernel
:@2dense_49/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Ametrics

Blayers
Clayer_regularization_losses
Dnon_trainable_variables
	variables
regularization_losses
trainable_variables
Elayer_metrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_50/kernel
: 2dense_50/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Fmetrics

Glayers
Hlayer_regularization_losses
Inon_trainable_variables
	variables
 regularization_losses
!trainable_variables
Jlayer_metrics
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Kmetrics

Llayers
Mlayer_regularization_losses
Nnon_trainable_variables
#	variables
$regularization_losses
%trainable_variables
Olayer_metrics
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_51/kernel
:2dense_51/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
Pmetrics

Qlayers
Rlayer_regularization_losses
Snon_trainable_variables
)	variables
*regularization_losses
+trainable_variables
Tlayer_metrics
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
U0
V1"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Wtotal
	Xcount
Y	variables
Z	keras_api"
_tf_keras_metric
^
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
W0
X1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
':%	B?2Adam/dense_48/kernel/m
!:?2Adam/dense_48/bias/m
':%	?@2Adam/dense_49/kernel/m
 :@2Adam/dense_49/bias/m
&:$@ 2Adam/dense_50/kernel/m
 : 2Adam/dense_50/bias/m
&:$ 2Adam/dense_51/kernel/m
 :2Adam/dense_51/bias/m
':%	B?2Adam/dense_48/kernel/v
!:?2Adam/dense_48/bias/v
':%	?@2Adam/dense_49/kernel/v
 :@2Adam/dense_49/bias/v
&:$@ 2Adam/dense_50/kernel/v
 : 2Adam/dense_50/bias/v
&:$ 2Adam/dense_51/kernel/v
 :2Adam/dense_51/bias/v
?2?
-__inference_sequential_12_layer_call_fn_42516
-__inference_sequential_12_layer_call_fn_42793
-__inference_sequential_12_layer_call_fn_42814
-__inference_sequential_12_layer_call_fn_42691?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42928
H__inference_sequential_12_layer_call_and_return_conditional_losses_43056
H__inference_sequential_12_layer_call_and_return_conditional_losses_42717
H__inference_sequential_12_layer_call_and_return_conditional_losses_42743?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_42327dense_48_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_48_layer_call_fn_43065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_48_layer_call_and_return_conditional_losses_43096?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_24_layer_call_fn_43101
*__inference_dropout_24_layer_call_fn_43106?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_24_layer_call_and_return_conditional_losses_43111
E__inference_dropout_24_layer_call_and_return_conditional_losses_43123?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_49_layer_call_fn_43132?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_49_layer_call_and_return_conditional_losses_43163?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_50_layer_call_fn_43172?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_50_layer_call_and_return_conditional_losses_43203?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_25_layer_call_fn_43208
*__inference_dropout_25_layer_call_fn_43213?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_25_layer_call_and_return_conditional_losses_43218
E__inference_dropout_25_layer_call_and_return_conditional_losses_43230?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_51_layer_call_fn_43239?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_51_layer_call_and_return_conditional_losses_43270?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_42772dense_48_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_42327?'(H?E
>?;
9?6
dense_48_input"??????????????????B
? "D?A
?
dense_513?0
dense_51"???????????????????
C__inference_dense_48_layer_call_and_return_conditional_losses_43096@?=
6?3
1?.
inputs"??????????????????B
? "7?4
-?*
0#???????????????????
? ?
(__inference_dense_48_layer_call_fn_43065r@?=
6?3
1?.
inputs"??????????????????B
? "*?'#????????????????????
C__inference_dense_49_layer_call_and_return_conditional_losses_43163A?>
7?4
2?/
inputs#???????????????????
? "6?3
,?)
0"??????????????????@
? ?
(__inference_dense_49_layer_call_fn_43132rA?>
7?4
2?/
inputs#???????????????????
? ")?&"??????????????????@?
C__inference_dense_50_layer_call_and_return_conditional_losses_43203~@?=
6?3
1?.
inputs"??????????????????@
? "6?3
,?)
0"?????????????????? 
? ?
(__inference_dense_50_layer_call_fn_43172q@?=
6?3
1?.
inputs"??????????????????@
? ")?&"?????????????????? ?
C__inference_dense_51_layer_call_and_return_conditional_losses_43270~'(@?=
6?3
1?.
inputs"?????????????????? 
? "6?3
,?)
0"??????????????????
? ?
(__inference_dense_51_layer_call_fn_43239q'(@?=
6?3
1?.
inputs"?????????????????? 
? ")?&"???????????????????
E__inference_dropout_24_layer_call_and_return_conditional_losses_43111?E?B
;?8
2?/
inputs#???????????????????
p 
? "7?4
-?*
0#???????????????????
? ?
E__inference_dropout_24_layer_call_and_return_conditional_losses_43123?E?B
;?8
2?/
inputs#???????????????????
p
? "7?4
-?*
0#???????????????????
? ?
*__inference_dropout_24_layer_call_fn_43101sE?B
;?8
2?/
inputs#???????????????????
p 
? "*?'#????????????????????
*__inference_dropout_24_layer_call_fn_43106sE?B
;?8
2?/
inputs#???????????????????
p
? "*?'#????????????????????
E__inference_dropout_25_layer_call_and_return_conditional_losses_43218~D?A
:?7
1?.
inputs"?????????????????? 
p 
? "6?3
,?)
0"?????????????????? 
? ?
E__inference_dropout_25_layer_call_and_return_conditional_losses_43230~D?A
:?7
1?.
inputs"?????????????????? 
p
? "6?3
,?)
0"?????????????????? 
? ?
*__inference_dropout_25_layer_call_fn_43208qD?A
:?7
1?.
inputs"?????????????????? 
p 
? ")?&"?????????????????? ?
*__inference_dropout_25_layer_call_fn_43213qD?A
:?7
1?.
inputs"?????????????????? 
p
? ")?&"?????????????????? ?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42717?'(P?M
F?C
9?6
dense_48_input"??????????????????B
p 

 
? "6?3
,?)
0"??????????????????
? ?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42743?'(P?M
F?C
9?6
dense_48_input"??????????????????B
p

 
? "6?3
,?)
0"??????????????????
? ?
H__inference_sequential_12_layer_call_and_return_conditional_losses_42928?'(H?E
>?;
1?.
inputs"??????????????????B
p 

 
? "6?3
,?)
0"??????????????????
? ?
H__inference_sequential_12_layer_call_and_return_conditional_losses_43056?'(H?E
>?;
1?.
inputs"??????????????????B
p

 
? "6?3
,?)
0"??????????????????
? ?
-__inference_sequential_12_layer_call_fn_42516?'(P?M
F?C
9?6
dense_48_input"??????????????????B
p 

 
? ")?&"???????????????????
-__inference_sequential_12_layer_call_fn_42691?'(P?M
F?C
9?6
dense_48_input"??????????????????B
p

 
? ")?&"???????????????????
-__inference_sequential_12_layer_call_fn_42793'(H?E
>?;
1?.
inputs"??????????????????B
p 

 
? ")?&"???????????????????
-__inference_sequential_12_layer_call_fn_42814'(H?E
>?;
1?.
inputs"??????????????????B
p

 
? ")?&"???????????????????
#__inference_signature_wrapper_42772?'(Z?W
? 
P?M
K
dense_48_input9?6
dense_48_input"??????????????????B"D?A
?
dense_513?0
dense_51"??????????????????