ÊÐ
ò
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68¦à

input_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*#
shared_nameinput_layer/kernel
y
&input_layer/kernel/Read/ReadVariableOpReadVariableOpinput_layer/kernel*
_output_shapes

:d*
dtype0
x
input_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*!
shared_nameinput_layer/bias
q
$input_layer/bias/Read/ReadVariableOpReadVariableOpinput_layer/bias*
_output_shapes
:d*
dtype0

hidden_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*$
shared_namehidden_layer/kernel
{
'hidden_layer/kernel/Read/ReadVariableOpReadVariableOphidden_layer/kernel*
_output_shapes

:d2*
dtype0
z
hidden_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_namehidden_layer/bias
s
%hidden_layer/bias/Read/ReadVariableOpReadVariableOphidden_layer/bias*
_output_shapes
:2*
dtype0

hidden_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*%
shared_namehidden_layer2/kernel
}
(hidden_layer2/kernel/Read/ReadVariableOpReadVariableOphidden_layer2/kernel*
_output_shapes

:2
*
dtype0
|
hidden_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_namehidden_layer2/bias
u
&hidden_layer2/bias/Read/ReadVariableOpReadVariableOphidden_layer2/bias*
_output_shapes
:
*
dtype0

output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_nameoutput_layer/kernel
{
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes

:
*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
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

Adam/input_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d**
shared_nameAdam/input_layer/kernel/m

-Adam/input_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/input_layer/kernel/m*
_output_shapes

:d*
dtype0

Adam/input_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*(
shared_nameAdam/input_layer/bias/m

+Adam/input_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/input_layer/bias/m*
_output_shapes
:d*
dtype0

Adam/hidden_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*+
shared_nameAdam/hidden_layer/kernel/m

.Adam/hidden_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer/kernel/m*
_output_shapes

:d2*
dtype0

Adam/hidden_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*)
shared_nameAdam/hidden_layer/bias/m

,Adam/hidden_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer/bias/m*
_output_shapes
:2*
dtype0

Adam/hidden_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*,
shared_nameAdam/hidden_layer2/kernel/m

/Adam/hidden_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer2/kernel/m*
_output_shapes

:2
*
dtype0

Adam/hidden_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameAdam/hidden_layer2/bias/m

-Adam/hidden_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer2/bias/m*
_output_shapes
:
*
dtype0

Adam/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/output_layer/kernel/m

.Adam/output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/m*
_output_shapes

:
*
dtype0

Adam/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/m

,Adam/output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/m*
_output_shapes
:*
dtype0

Adam/input_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d**
shared_nameAdam/input_layer/kernel/v

-Adam/input_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/input_layer/kernel/v*
_output_shapes

:d*
dtype0

Adam/input_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*(
shared_nameAdam/input_layer/bias/v

+Adam/input_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/input_layer/bias/v*
_output_shapes
:d*
dtype0

Adam/hidden_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*+
shared_nameAdam/hidden_layer/kernel/v

.Adam/hidden_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer/kernel/v*
_output_shapes

:d2*
dtype0

Adam/hidden_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*)
shared_nameAdam/hidden_layer/bias/v

,Adam/hidden_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer/bias/v*
_output_shapes
:2*
dtype0

Adam/hidden_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*,
shared_nameAdam/hidden_layer2/kernel/v

/Adam/hidden_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer2/kernel/v*
_output_shapes

:2
*
dtype0

Adam/hidden_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameAdam/hidden_layer2/bias/v

-Adam/hidden_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer2/bias/v*
_output_shapes
:
*
dtype0

Adam/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/output_layer/kernel/v

.Adam/output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/v*
_output_shapes

:
*
dtype0

Adam/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/v

,Adam/output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
·8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ò7
valueè7Bå7 BÞ7
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
¦

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
Ô
.iter

/beta_1

0beta_2
	1decay
2learning_ratemXmYmZm[m\m]&m^'m_v`vavbvcvdve&vf'vg*
<
0
1
2
3
4
5
&6
'7*
<
0
1
2
3
4
5
&6
'7*
* 
°
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

8serving_default* 
b\
VARIABLE_VALUEinput_layer/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEinput_layer/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEhidden_layer/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEhidden_layer/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
d^
VARIABLE_VALUEhidden_layer2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEhidden_layer2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Ototal
	Pcount
Q	variables
R	keras_api*
H
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

Q	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

S0
T1*

V	variables*

VARIABLE_VALUEAdam/input_layer/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/input_layer/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/hidden_layer/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/hidden_layer/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/hidden_layer2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/hidden_layer2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/output_layer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/output_layer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/input_layer/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/input_layer/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/hidden_layer/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/hidden_layer/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/hidden_layer2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/hidden_layer2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/output_layer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/output_layer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

!serving_default_input_layer_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
ì
StatefulPartitionedCallStatefulPartitionedCall!serving_default_input_layer_inputinput_layer/kernelinput_layer/biashidden_layer/kernelhidden_layer/biashidden_layer2/kernelhidden_layer2/biasoutput_layer/kerneloutput_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_708745
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&input_layer/kernel/Read/ReadVariableOp$input_layer/bias/Read/ReadVariableOp'hidden_layer/kernel/Read/ReadVariableOp%hidden_layer/bias/Read/ReadVariableOp(hidden_layer2/kernel/Read/ReadVariableOp&hidden_layer2/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/input_layer/kernel/m/Read/ReadVariableOp+Adam/input_layer/bias/m/Read/ReadVariableOp.Adam/hidden_layer/kernel/m/Read/ReadVariableOp,Adam/hidden_layer/bias/m/Read/ReadVariableOp/Adam/hidden_layer2/kernel/m/Read/ReadVariableOp-Adam/hidden_layer2/bias/m/Read/ReadVariableOp.Adam/output_layer/kernel/m/Read/ReadVariableOp,Adam/output_layer/bias/m/Read/ReadVariableOp-Adam/input_layer/kernel/v/Read/ReadVariableOp+Adam/input_layer/bias/v/Read/ReadVariableOp.Adam/hidden_layer/kernel/v/Read/ReadVariableOp,Adam/hidden_layer/bias/v/Read/ReadVariableOp/Adam/hidden_layer2/kernel/v/Read/ReadVariableOp-Adam/hidden_layer2/bias/v/Read/ReadVariableOp.Adam/output_layer/kernel/v/Read/ReadVariableOp,Adam/output_layer/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_708946
ì
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameinput_layer/kernelinput_layer/biashidden_layer/kernelhidden_layer/biashidden_layer2/kernelhidden_layer2/biasoutput_layer/kerneloutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/input_layer/kernel/mAdam/input_layer/bias/mAdam/hidden_layer/kernel/mAdam/hidden_layer/bias/mAdam/hidden_layer2/kernel/mAdam/hidden_layer2/bias/mAdam/output_layer/kernel/mAdam/output_layer/bias/mAdam/input_layer/kernel/vAdam/input_layer/bias/vAdam/hidden_layer/kernel/vAdam/hidden_layer/bias/vAdam/hidden_layer2/kernel/vAdam/hidden_layer2/bias/vAdam/output_layer/kernel/vAdam/output_layer/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_709055ÂÌ


ù
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
·	
¾
$__inference_signature_wrapper_708745
input_layer_input
unknown:d
	unknown_0:d
	unknown_1:d2
	unknown_2:2
	unknown_3:2

	unknown_4:

	unknown_5:

	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_708337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
Ý	
Â
(__inference_model_8_layer_call_fn_708560
input_layer_input
unknown:d
	unknown_0:d
	unknown_1:d2
	unknown_2:2
	unknown_3:2

	unknown_4:

	unknown_5:

	unknown_6:
identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_708520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
Ë	
ù
H__inference_output_layer_layer_call_and_return_conditional_losses_708824

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ù
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708785

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


ø
G__inference_input_layer_layer_call_and_return_conditional_losses_708765

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢'
ú
C__inference_model_8_layer_call_and_return_conditional_losses_708690

inputs<
*input_layer_matmul_readvariableop_resource:d9
+input_layer_biasadd_readvariableop_resource:d=
+hidden_layer_matmul_readvariableop_resource:d2:
,hidden_layer_biasadd_readvariableop_resource:2>
,hidden_layer2_matmul_readvariableop_resource:2
;
-hidden_layer2_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identity¢#hidden_layer/BiasAdd/ReadVariableOp¢"hidden_layer/MatMul/ReadVariableOp¢$hidden_layer2/BiasAdd/ReadVariableOp¢#hidden_layer2/MatMul/ReadVariableOp¢"input_layer/BiasAdd/ReadVariableOp¢!input_layer/MatMul/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢"output_layer/MatMul/ReadVariableOpa
input_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!input_layer/MatMul/ReadVariableOpReadVariableOp*input_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
input_layer/MatMulMatMulinput_layer/Cast:y:0)input_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"input_layer/BiasAdd/ReadVariableOpReadVariableOp+input_layer_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
input_layer/BiasAddBiasAddinput_layer/MatMul:product:0*input_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
input_layer/ReluReluinput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"hidden_layer/MatMul/ReadVariableOpReadVariableOp+hidden_layer_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
hidden_layer/MatMulMatMulinput_layer/Relu:activations:0*hidden_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
#hidden_layer/BiasAdd/ReadVariableOpReadVariableOp,hidden_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
hidden_layer/BiasAddBiasAddhidden_layer/MatMul:product:0+hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
hidden_layer/ReluReluhidden_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
#hidden_layer2/MatMul/ReadVariableOpReadVariableOp,hidden_layer2_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0
hidden_layer2/MatMulMatMulhidden_layer/Relu:activations:0+hidden_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

$hidden_layer2/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0 
hidden_layer2/BiasAddBiasAddhidden_layer2/MatMul:product:0,hidden_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
l
hidden_layer2/ReluReluhidden_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
output_layer/MatMulMatMul hidden_layer2/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityoutput_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
NoOpNoOp$^hidden_layer/BiasAdd/ReadVariableOp#^hidden_layer/MatMul/ReadVariableOp%^hidden_layer2/BiasAdd/ReadVariableOp$^hidden_layer2/MatMul/ReadVariableOp#^input_layer/BiasAdd/ReadVariableOp"^input_layer/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#hidden_layer/BiasAdd/ReadVariableOp#hidden_layer/BiasAdd/ReadVariableOp2H
"hidden_layer/MatMul/ReadVariableOp"hidden_layer/MatMul/ReadVariableOp2L
$hidden_layer2/BiasAdd/ReadVariableOp$hidden_layer2/BiasAdd/ReadVariableOp2J
#hidden_layer2/MatMul/ReadVariableOp#hidden_layer2/MatMul/ReadVariableOp2H
"input_layer/BiasAdd/ReadVariableOp"input_layer/BiasAdd/ReadVariableOp2F
!input_layer/MatMul/ReadVariableOp!input_layer/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý	
Â
(__inference_model_8_layer_call_fn_708432
input_layer_input
unknown:d
	unknown_0:d
	unknown_1:d2
	unknown_2:2
	unknown_3:2

	unknown_4:

	unknown_5:

	unknown_6:
identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_708413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
©
±
C__inference_model_8_layer_call_and_return_conditional_losses_708585
input_layer_input$
input_layer_708564:d 
input_layer_708566:d%
hidden_layer_708569:d2!
hidden_layer_708571:2&
hidden_layer2_708574:2
"
hidden_layer2_708576:
%
output_layer_708579:
!
output_layer_708581:
identity¢$hidden_layer/StatefulPartitionedCall¢%hidden_layer2/StatefulPartitionedCall¢#input_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCalll
input_layer/CastCastinput_layer_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#input_layer/StatefulPartitionedCallStatefulPartitionedCallinput_layer/Cast:y:0input_layer_708564input_layer_708566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_input_layer_layer_call_and_return_conditional_losses_708356¦
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0hidden_layer_708569hidden_layer_708571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373«
%hidden_layer2/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0hidden_layer2_708574hidden_layer2_708576*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390¨
$output_layer/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer2/StatefulPartitionedCall:output:0output_layer_708579output_layer_708581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_708406|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall&^hidden_layer2/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2N
%hidden_layer2/StatefulPartitionedCall%hidden_layer2/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
Ì

.__inference_hidden_layer2_layer_call_fn_708794

inputs
unknown:2

	unknown_0:

identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

¦
C__inference_model_8_layer_call_and_return_conditional_losses_708520

inputs$
input_layer_708499:d 
input_layer_708501:d%
hidden_layer_708504:d2!
hidden_layer_708506:2&
hidden_layer2_708509:2
"
hidden_layer2_708511:
%
output_layer_708514:
!
output_layer_708516:
identity¢$hidden_layer/StatefulPartitionedCall¢%hidden_layer2/StatefulPartitionedCall¢#input_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCalla
input_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#input_layer/StatefulPartitionedCallStatefulPartitionedCallinput_layer/Cast:y:0input_layer_708499input_layer_708501*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_input_layer_layer_call_and_return_conditional_losses_708356¦
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0hidden_layer_708504hidden_layer_708506*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373«
%hidden_layer2/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0hidden_layer2_708509hidden_layer2_708511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390¨
$output_layer/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer2/StatefulPartitionedCall:output:0output_layer_708514output_layer_708516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_708406|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall&^hidden_layer2/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2N
%hidden_layer2/StatefulPartitionedCall%hidden_layer2/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ø
G__inference_input_layer_layer_call_and_return_conditional_losses_708356

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

ú
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÂG
 
__inference__traced_save_708946
file_prefix1
-savev2_input_layer_kernel_read_readvariableop/
+savev2_input_layer_bias_read_readvariableop2
.savev2_hidden_layer_kernel_read_readvariableop0
,savev2_hidden_layer_bias_read_readvariableop3
/savev2_hidden_layer2_kernel_read_readvariableop1
-savev2_hidden_layer2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_input_layer_kernel_m_read_readvariableop6
2savev2_adam_input_layer_bias_m_read_readvariableop9
5savev2_adam_hidden_layer_kernel_m_read_readvariableop7
3savev2_adam_hidden_layer_bias_m_read_readvariableop:
6savev2_adam_hidden_layer2_kernel_m_read_readvariableop8
4savev2_adam_hidden_layer2_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop8
4savev2_adam_input_layer_kernel_v_read_readvariableop6
2savev2_adam_input_layer_bias_v_read_readvariableop9
5savev2_adam_hidden_layer_kernel_v_read_readvariableop7
3savev2_adam_hidden_layer_bias_v_read_readvariableop:
6savev2_adam_hidden_layer2_kernel_v_read_readvariableop8
4savev2_adam_hidden_layer2_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¯
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_input_layer_kernel_read_readvariableop+savev2_input_layer_bias_read_readvariableop.savev2_hidden_layer_kernel_read_readvariableop,savev2_hidden_layer_bias_read_readvariableop/savev2_hidden_layer2_kernel_read_readvariableop-savev2_hidden_layer2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_input_layer_kernel_m_read_readvariableop2savev2_adam_input_layer_bias_m_read_readvariableop5savev2_adam_hidden_layer_kernel_m_read_readvariableop3savev2_adam_hidden_layer_bias_m_read_readvariableop6savev2_adam_hidden_layer2_kernel_m_read_readvariableop4savev2_adam_hidden_layer2_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop4savev2_adam_input_layer_kernel_v_read_readvariableop2savev2_adam_input_layer_bias_v_read_readvariableop5savev2_adam_hidden_layer_kernel_v_read_readvariableop3savev2_adam_hidden_layer_bias_v_read_readvariableop6savev2_adam_hidden_layer2_kernel_v_read_readvariableop4savev2_adam_hidden_layer2_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ë
_input_shapesÙ
Ö: :d:d:d2:2:2
:
:
:: : : : : : : : : :d:d:d2:2:2
:
:
::d:d:d2:2:2
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::	
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
: :$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2
: 

_output_shapes
:
:$  

_output_shapes

:
: !

_output_shapes
::"

_output_shapes
: 
É
ª
"__inference__traced_restore_709055
file_prefix5
#assignvariableop_input_layer_kernel:d1
#assignvariableop_1_input_layer_bias:d8
&assignvariableop_2_hidden_layer_kernel:d22
$assignvariableop_3_hidden_layer_bias:29
'assignvariableop_4_hidden_layer2_kernel:2
3
%assignvariableop_5_hidden_layer2_bias:
8
&assignvariableop_6_output_layer_kernel:
2
$assignvariableop_7_output_layer_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: ?
-assignvariableop_17_adam_input_layer_kernel_m:d9
+assignvariableop_18_adam_input_layer_bias_m:d@
.assignvariableop_19_adam_hidden_layer_kernel_m:d2:
,assignvariableop_20_adam_hidden_layer_bias_m:2A
/assignvariableop_21_adam_hidden_layer2_kernel_m:2
;
-assignvariableop_22_adam_hidden_layer2_bias_m:
@
.assignvariableop_23_adam_output_layer_kernel_m:
:
,assignvariableop_24_adam_output_layer_bias_m:?
-assignvariableop_25_adam_input_layer_kernel_v:d9
+assignvariableop_26_adam_input_layer_bias_v:d@
.assignvariableop_27_adam_hidden_layer_kernel_v:d2:
,assignvariableop_28_adam_hidden_layer_bias_v:2A
/assignvariableop_29_adam_hidden_layer2_kernel_v:2
;
-assignvariableop_30_adam_hidden_layer2_bias_v:
@
.assignvariableop_31_adam_output_layer_kernel_v:
:
,assignvariableop_32_adam_output_layer_bias_v:
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9²
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp#assignvariableop_input_layer_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp#assignvariableop_1_input_layer_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp&assignvariableop_2_hidden_layer_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp$assignvariableop_3_hidden_layer_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp'assignvariableop_4_hidden_layer2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp%assignvariableop_5_hidden_layer2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp&assignvariableop_6_output_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp$assignvariableop_7_output_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_input_layer_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_input_layer_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_hidden_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_hidden_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_hidden_layer2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_hidden_layer2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_output_layer_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_output_layer_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_input_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_input_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_hidden_layer_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_hidden_layer_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_29AssignVariableOp/assignvariableop_29_adam_hidden_layer2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp-assignvariableop_30_adam_hidden_layer2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_output_layer_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_output_layer_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
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
á,
ã
!__inference__wrapped_model_708337
input_layer_inputD
2model_8_input_layer_matmul_readvariableop_resource:dA
3model_8_input_layer_biasadd_readvariableop_resource:dE
3model_8_hidden_layer_matmul_readvariableop_resource:d2B
4model_8_hidden_layer_biasadd_readvariableop_resource:2F
4model_8_hidden_layer2_matmul_readvariableop_resource:2
C
5model_8_hidden_layer2_biasadd_readvariableop_resource:
E
3model_8_output_layer_matmul_readvariableop_resource:
B
4model_8_output_layer_biasadd_readvariableop_resource:
identity¢+model_8/hidden_layer/BiasAdd/ReadVariableOp¢*model_8/hidden_layer/MatMul/ReadVariableOp¢,model_8/hidden_layer2/BiasAdd/ReadVariableOp¢+model_8/hidden_layer2/MatMul/ReadVariableOp¢*model_8/input_layer/BiasAdd/ReadVariableOp¢)model_8/input_layer/MatMul/ReadVariableOp¢+model_8/output_layer/BiasAdd/ReadVariableOp¢*model_8/output_layer/MatMul/ReadVariableOpt
model_8/input_layer/CastCastinput_layer_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_8/input_layer/MatMul/ReadVariableOpReadVariableOp2model_8_input_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0§
model_8/input_layer/MatMulMatMulmodel_8/input_layer/Cast:y:01model_8/input_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*model_8/input_layer/BiasAdd/ReadVariableOpReadVariableOp3model_8_input_layer_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0²
model_8/input_layer/BiasAddBiasAdd$model_8/input_layer/MatMul:product:02model_8/input_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
model_8/input_layer/ReluRelu$model_8/input_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*model_8/hidden_layer/MatMul/ReadVariableOpReadVariableOp3model_8_hidden_layer_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0³
model_8/hidden_layer/MatMulMatMul&model_8/input_layer/Relu:activations:02model_8/hidden_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+model_8/hidden_layer/BiasAdd/ReadVariableOpReadVariableOp4model_8_hidden_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
model_8/hidden_layer/BiasAddBiasAdd%model_8/hidden_layer/MatMul:product:03model_8/hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
model_8/hidden_layer/ReluRelu%model_8/hidden_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+model_8/hidden_layer2/MatMul/ReadVariableOpReadVariableOp4model_8_hidden_layer2_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0¶
model_8/hidden_layer2/MatMulMatMul'model_8/hidden_layer/Relu:activations:03model_8/hidden_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

,model_8/hidden_layer2/BiasAdd/ReadVariableOpReadVariableOp5model_8_hidden_layer2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0¸
model_8/hidden_layer2/BiasAddBiasAdd&model_8/hidden_layer2/MatMul:product:04model_8/hidden_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
model_8/hidden_layer2/ReluRelu&model_8/hidden_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*model_8/output_layer/MatMul/ReadVariableOpReadVariableOp3model_8_output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0µ
model_8/output_layer/MatMulMatMul(model_8/hidden_layer2/Relu:activations:02model_8/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model_8/output_layer/BiasAdd/ReadVariableOpReadVariableOp4model_8_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
model_8/output_layer/BiasAddBiasAdd%model_8/output_layer/MatMul:product:03model_8/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity%model_8/output_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp,^model_8/hidden_layer/BiasAdd/ReadVariableOp+^model_8/hidden_layer/MatMul/ReadVariableOp-^model_8/hidden_layer2/BiasAdd/ReadVariableOp,^model_8/hidden_layer2/MatMul/ReadVariableOp+^model_8/input_layer/BiasAdd/ReadVariableOp*^model_8/input_layer/MatMul/ReadVariableOp,^model_8/output_layer/BiasAdd/ReadVariableOp+^model_8/output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+model_8/hidden_layer/BiasAdd/ReadVariableOp+model_8/hidden_layer/BiasAdd/ReadVariableOp2X
*model_8/hidden_layer/MatMul/ReadVariableOp*model_8/hidden_layer/MatMul/ReadVariableOp2\
,model_8/hidden_layer2/BiasAdd/ReadVariableOp,model_8/hidden_layer2/BiasAdd/ReadVariableOp2Z
+model_8/hidden_layer2/MatMul/ReadVariableOp+model_8/hidden_layer2/MatMul/ReadVariableOp2X
*model_8/input_layer/BiasAdd/ReadVariableOp*model_8/input_layer/BiasAdd/ReadVariableOp2V
)model_8/input_layer/MatMul/ReadVariableOp)model_8/input_layer/MatMul/ReadVariableOp2Z
+model_8/output_layer/BiasAdd/ReadVariableOp+model_8/output_layer/BiasAdd/ReadVariableOp2X
*model_8/output_layer/MatMul/ReadVariableOp*model_8/output_layer/MatMul/ReadVariableOp:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
Ë	
ù
H__inference_output_layer_layer_call_and_return_conditional_losses_708406

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
 

ú
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708805

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
È

,__inference_input_layer_layer_call_fn_708754

inputs
unknown:d
	unknown_0:d
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_input_layer_layer_call_and_return_conditional_losses_708356o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

-__inference_output_layer_layer_call_fn_708814

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_708406o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ê

-__inference_hidden_layer_layer_call_fn_708774

inputs
unknown:d2
	unknown_0:2
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

¦
C__inference_model_8_layer_call_and_return_conditional_losses_708413

inputs$
input_layer_708357:d 
input_layer_708359:d%
hidden_layer_708374:d2!
hidden_layer_708376:2&
hidden_layer2_708391:2
"
hidden_layer2_708393:
%
output_layer_708407:
!
output_layer_708409:
identity¢$hidden_layer/StatefulPartitionedCall¢%hidden_layer2/StatefulPartitionedCall¢#input_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCalla
input_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#input_layer/StatefulPartitionedCallStatefulPartitionedCallinput_layer/Cast:y:0input_layer_708357input_layer_708359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_input_layer_layer_call_and_return_conditional_losses_708356¦
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0hidden_layer_708374hidden_layer_708376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373«
%hidden_layer2/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0hidden_layer2_708391hidden_layer2_708393*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390¨
$output_layer/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer2/StatefulPartitionedCall:output:0output_layer_708407output_layer_708409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_708406|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall&^hidden_layer2/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2N
%hidden_layer2/StatefulPartitionedCall%hidden_layer2/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼	
·
(__inference_model_8_layer_call_fn_708658

inputs
unknown:d
	unknown_0:d
	unknown_1:d2
	unknown_2:2
	unknown_3:2

	unknown_4:

	unknown_5:

	unknown_6:
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_708520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢'
ú
C__inference_model_8_layer_call_and_return_conditional_losses_708722

inputs<
*input_layer_matmul_readvariableop_resource:d9
+input_layer_biasadd_readvariableop_resource:d=
+hidden_layer_matmul_readvariableop_resource:d2:
,hidden_layer_biasadd_readvariableop_resource:2>
,hidden_layer2_matmul_readvariableop_resource:2
;
-hidden_layer2_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identity¢#hidden_layer/BiasAdd/ReadVariableOp¢"hidden_layer/MatMul/ReadVariableOp¢$hidden_layer2/BiasAdd/ReadVariableOp¢#hidden_layer2/MatMul/ReadVariableOp¢"input_layer/BiasAdd/ReadVariableOp¢!input_layer/MatMul/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢"output_layer/MatMul/ReadVariableOpa
input_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!input_layer/MatMul/ReadVariableOpReadVariableOp*input_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
input_layer/MatMulMatMulinput_layer/Cast:y:0)input_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"input_layer/BiasAdd/ReadVariableOpReadVariableOp+input_layer_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
input_layer/BiasAddBiasAddinput_layer/MatMul:product:0*input_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
input_layer/ReluReluinput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"hidden_layer/MatMul/ReadVariableOpReadVariableOp+hidden_layer_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
hidden_layer/MatMulMatMulinput_layer/Relu:activations:0*hidden_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
#hidden_layer/BiasAdd/ReadVariableOpReadVariableOp,hidden_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
hidden_layer/BiasAddBiasAddhidden_layer/MatMul:product:0+hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
hidden_layer/ReluReluhidden_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
#hidden_layer2/MatMul/ReadVariableOpReadVariableOp,hidden_layer2_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0
hidden_layer2/MatMulMatMulhidden_layer/Relu:activations:0+hidden_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

$hidden_layer2/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0 
hidden_layer2/BiasAddBiasAddhidden_layer2/MatMul:product:0,hidden_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
l
hidden_layer2/ReluReluhidden_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
output_layer/MatMulMatMul hidden_layer2/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityoutput_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
NoOpNoOp$^hidden_layer/BiasAdd/ReadVariableOp#^hidden_layer/MatMul/ReadVariableOp%^hidden_layer2/BiasAdd/ReadVariableOp$^hidden_layer2/MatMul/ReadVariableOp#^input_layer/BiasAdd/ReadVariableOp"^input_layer/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#hidden_layer/BiasAdd/ReadVariableOp#hidden_layer/BiasAdd/ReadVariableOp2H
"hidden_layer/MatMul/ReadVariableOp"hidden_layer/MatMul/ReadVariableOp2L
$hidden_layer2/BiasAdd/ReadVariableOp$hidden_layer2/BiasAdd/ReadVariableOp2J
#hidden_layer2/MatMul/ReadVariableOp#hidden_layer2/MatMul/ReadVariableOp2H
"input_layer/BiasAdd/ReadVariableOp"input_layer/BiasAdd/ReadVariableOp2F
!input_layer/MatMul/ReadVariableOp!input_layer/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
±
C__inference_model_8_layer_call_and_return_conditional_losses_708610
input_layer_input$
input_layer_708589:d 
input_layer_708591:d%
hidden_layer_708594:d2!
hidden_layer_708596:2&
hidden_layer2_708599:2
"
hidden_layer2_708601:
%
output_layer_708604:
!
output_layer_708606:
identity¢$hidden_layer/StatefulPartitionedCall¢%hidden_layer2/StatefulPartitionedCall¢#input_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCalll
input_layer/CastCastinput_layer_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#input_layer/StatefulPartitionedCallStatefulPartitionedCallinput_layer/Cast:y:0input_layer_708589input_layer_708591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_input_layer_layer_call_and_return_conditional_losses_708356¦
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0hidden_layer_708594hidden_layer_708596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708373«
%hidden_layer2/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0hidden_layer2_708599hidden_layer2_708601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708390¨
$output_layer/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer2/StatefulPartitionedCall:output:0output_layer_708604output_layer_708606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_708406|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall&^hidden_layer2/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2N
%hidden_layer2/StatefulPartitionedCall%hidden_layer2/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinput_layer_input
¼	
·
(__inference_model_8_layer_call_fn_708637

inputs
unknown:d
	unknown_0:d
	unknown_1:d2
	unknown_2:2
	unknown_3:2

	unknown_4:

	unknown_5:

	unknown_6:
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_708413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ã
serving_default¯
O
input_layer_input:
#serving_default_input_layer_input:0ÿÿÿÿÿÿÿÿÿ@
output_layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:_

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
»

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
.iter

/beta_1

0beta_2
	1decay
2learning_ratemXmYmZm[m\m]&m^'m_v`vavbvcvdve&vf'vg"
	optimizer
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î2ë
(__inference_model_8_layer_call_fn_708432
(__inference_model_8_layer_call_fn_708637
(__inference_model_8_layer_call_fn_708658
(__inference_model_8_layer_call_fn_708560À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
C__inference_model_8_layer_call_and_return_conditional_losses_708690
C__inference_model_8_layer_call_and_return_conditional_losses_708722
C__inference_model_8_layer_call_and_return_conditional_losses_708585
C__inference_model_8_layer_call_and_return_conditional_losses_708610À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÖBÓ
!__inference__wrapped_model_708337input_layer_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
8serving_default"
signature_map
$:"d2input_layer/kernel
:d2input_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_input_layer_layer_call_fn_708754¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_input_layer_layer_call_and_return_conditional_losses_708765¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
%:#d22hidden_layer/kernel
:22hidden_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_hidden_layer_layer_call_fn_708774¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708785¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
&:$2
2hidden_layer2/kernel
 :
2hidden_layer2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_hidden_layer2_layer_call_fn_708794¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708805¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
%:#
2output_layer/kernel
:2output_layer/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_output_layer_layer_call_fn_708814¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_output_layer_layer_call_and_return_conditional_losses_708824¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÕBÒ
$__inference_signature_wrapper_708745input_layer_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
	Ototal
	Pcount
Q	variables
R	keras_api"
_tf_keras_metric
^
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
O0
P1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
):'d2Adam/input_layer/kernel/m
#:!d2Adam/input_layer/bias/m
*:(d22Adam/hidden_layer/kernel/m
$:"22Adam/hidden_layer/bias/m
+:)2
2Adam/hidden_layer2/kernel/m
%:#
2Adam/hidden_layer2/bias/m
*:(
2Adam/output_layer/kernel/m
$:"2Adam/output_layer/bias/m
):'d2Adam/input_layer/kernel/v
#:!d2Adam/input_layer/bias/v
*:(d22Adam/hidden_layer/kernel/v
$:"22Adam/hidden_layer/bias/v
+:)2
2Adam/hidden_layer2/kernel/v
%:#
2Adam/hidden_layer2/bias/v
*:(
2Adam/output_layer/kernel/v
$:"2Adam/output_layer/bias/v©
!__inference__wrapped_model_708337&':¢7
0¢-
+(
input_layer_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ©
I__inference_hidden_layer2_layer_call_and_return_conditional_losses_708805\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
.__inference_hidden_layer2_layer_call_fn_708794O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ
¨
H__inference_hidden_layer_layer_call_and_return_conditional_losses_708785\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 
-__inference_hidden_layer_layer_call_fn_708774O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ2§
G__inference_input_layer_layer_call_and_return_conditional_losses_708765\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
,__inference_input_layer_layer_call_fn_708754O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd¼
C__inference_model_8_layer_call_and_return_conditional_losses_708585u&'B¢?
8¢5
+(
input_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
C__inference_model_8_layer_call_and_return_conditional_losses_708610u&'B¢?
8¢5
+(
input_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
C__inference_model_8_layer_call_and_return_conditional_losses_708690j&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
C__inference_model_8_layer_call_and_return_conditional_losses_708722j&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_model_8_layer_call_fn_708432h&'B¢?
8¢5
+(
input_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_8_layer_call_fn_708560h&'B¢?
8¢5
+(
input_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_8_layer_call_fn_708637]&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_8_layer_call_fn_708658]&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¨
H__inference_output_layer_layer_call_and_return_conditional_losses_708824\&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_output_layer_layer_call_fn_708814O&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÁ
$__inference_signature_wrapper_708745&'O¢L
¢ 
EªB
@
input_layer_input+(
input_layer_inputÿÿÿÿÿÿÿÿÿ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ