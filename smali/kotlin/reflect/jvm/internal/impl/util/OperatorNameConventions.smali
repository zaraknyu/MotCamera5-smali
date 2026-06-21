.class public abstract Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASSIGNMENT_OPERATIONS:Ljava/util/Set;

.field public static final BINARY_OPERATION_NAMES:Ljava/util/Set;

.field public static final COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final COMPONENT_REGEX:Lkotlin/text/Regex;

.field public static final CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const-string v0, "getValue"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v1, "setValue"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v2, "provideDelegate"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "equals"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v4, "hashCode"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v4, "compareTo"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v5, "contains"

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v6, "invoke"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v6, "iterator"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v6, "get"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v6, "set"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v7, "next"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v7, "hasNext"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v7, "toString"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "component\\d+"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    const-string v7, "and"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    const-string v7, "or"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    const-string/jumbo v7, "xor"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    const-string v7, "inv"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v16

    const-string/jumbo v7, "shl"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    const-string/jumbo v11, "shr"

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v17

    const-string/jumbo v11, "ushr"

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v18

    const-string v11, "inc"

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v12, "dec"

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v13, "plus"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v20

    const-string v13, "minus"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v21

    const-string v13, "not"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v15

    const-string/jumbo v13, "unaryMinus"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v14

    const-string/jumbo v13, "unaryPlus"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v13

    const-string/jumbo v19, "times"

    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v19

    const-string v22, "div"

    invoke-static/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v22

    const-string/jumbo v23, "rem"

    invoke-static/range {v23 .. v23}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v23

    const-string/jumbo v24, "rangeTo"

    invoke-static/range {v24 .. v24}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v24

    sput-object v24, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v25, "rangeUntil"

    invoke-static/range {v25 .. v25}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v25

    sput-object v25, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string/jumbo v26, "timesAssign"

    move-object/from16 v27, v6

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    const-string v26, "divAssign"

    move-object/from16 v28, v7

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    const-string/jumbo v26, "remAssign"

    move-object/from16 v29, v0

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string/jumbo v26, "plusAssign"

    move-object/from16 v30, v1

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    const-string v26, "minusAssign"

    move-object/from16 v31, v2

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    const-string/jumbo v26, "toDouble"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v32

    const-string/jumbo v26, "toFloat"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v33

    const-string/jumbo v26, "toLong"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v34

    const-string/jumbo v26, "toInt"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v35

    const-string/jumbo v26, "toChar"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v38

    const-string/jumbo v26, "toShort"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v36

    const-string/jumbo v26, "toByte"

    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v37

    filled-new-array/range {v11 .. v16}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v26

    move-object/from16 v42, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v42

    move-object/from16 v42, v15

    move-object v15, v13

    move-object/from16 v13, v42

    invoke-static/range {v26 .. v26}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    filled-new-array {v15, v14, v13, v11}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v26

    sput-object v26, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    filled-new-array/range {v19 .. v25}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v26

    move-object/from16 v39, v15

    move-object/from16 v15, v20

    move-object/from16 v40, v24

    move-object/from16 v41, v25

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    invoke-static/range {v26 .. v26}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    filled-new-array {v1, v15, v0, v2, v6}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-object/from16 v24, v18

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v14, v24

    move-object/from16 v24, v17

    move-object/from16 v17, v2

    move-object v2, v13

    move-object/from16 v13, v24

    move-object/from16 v24, v6

    move-object v6, v12

    move-object/from16 v12, v28

    filled-new-array/range {v8 .. v14}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v25

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    filled-new-array/range {v8 .. v13}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-object/from16 v8, v25

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v7

    filled-new-array {v3, v5, v4}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v7, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    filled-new-array {v3, v4, v5, v7, v8}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v7, v31

    filled-new-array {v4, v5, v7}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    invoke-static/range {v27 .. v27}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v4, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    filled-new-array/range {v32 .. v38}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "++"

    move-object/from16 v11, v16

    invoke-direct {v3, v11, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v5, "--"

    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v6, "+"

    move-object/from16 v13, v39

    invoke-direct {v5, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    const-string v8, "-"

    invoke-direct {v7, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    const-string v9, "!"

    invoke-direct {v0, v2, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v9, "*"

    invoke-direct {v2, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v15, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v9, v18

    invoke-direct {v6, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lkotlin/Pair;

    const-string v9, "/"

    move-object/from16 v10, v17

    invoke-direct {v8, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lkotlin/Pair;

    const-string v10, "%"

    move-object/from16 v11, v24

    invoke-direct {v9, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lkotlin/Pair;

    const-string v11, ".."

    move-object/from16 v12, v40

    invoke-direct {v10, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/Pair;

    const-string v12, "..<"

    move-object/from16 v13, v41

    invoke-direct {v11, v13, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v29, v0

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v32, v6

    move-object/from16 v28, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    filled-new-array/range {v25 .. v36}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    return-void
.end method
