.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "SourceFile"


# instance fields
.field public coordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public hasExited:Z

.field public isIn:Z

.field public final modifierNode:Landroidx/compose/ui/Modifier$Node;

.field public pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

.field public final pointerIds:Landroidx/media3/common/util/LongArray;

.field public final relevantChanges:Landroidx/collection/LongSparseArray;

.field public wasIn:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    new-instance p1, Landroidx/media3/common/util/LongArray;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/LongArray;-><init>(IB)V

    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p1, Landroidx/media3/common/util/LongArray;->values:[J

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method


# virtual methods
.method public final buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/google/android/gms/tasks/zzr;Z)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/google/android/gms/tasks/zzr;Z)Z

    move-result v4

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v7, 0x1

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v5, :cond_8

    instance-of v10, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/16 v11, 0x10

    if-eqz v10, :cond_1

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-static {v5, v11}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_3

    :cond_1
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    instance-of v10, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v9, 0x0

    :goto_1
    if-eqz v10, :cond_6

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v12, v11

    if-eqz v12, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_2

    move-object v5, v10

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_6
    if-ne v9, v7, :cond_7

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_0

    :cond_8
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez v5, :cond_9

    :goto_4
    return v7

    :cond_9
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_5
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    if-ge v8, v5, :cond_12

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v11, v12, v13}, Landroidx/media3/common/util/LongArray;->contains(J)Z

    move-result v11

    if-eqz v11, :cond_11

    move v15, v7

    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    move-object/from16 v16, v10

    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    const-wide v17, 0x7fffffff7fffffffL

    and-long v19, v6, v17

    const-wide v21, 0x7fffff007fffffL

    add-long v19, v19, v21

    const-wide v23, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long v19, v19, v23

    const-wide/16 v25, 0x0

    cmp-long v11, v19, v25

    if-nez v11, :cond_10

    and-long v19, v9, v17

    add-long v19, v19, v21

    and-long v19, v19, v23

    cmp-long v11, v19, v25

    if-nez v11, :cond_10

    new-instance v11, Ljava/util/ArrayList;

    move/from16 v19, v15

    iget-object v15, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/ArrayList;

    sget-object v20, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez v15, :cond_a

    move-object/from16 v15, v20

    :cond_a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v15, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/ArrayList;

    if-nez v15, :cond_b

    move-object/from16 v15, v20

    :cond_b
    move/from16 v20, v4

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v47, v5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_d

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v4

    move-object/from16 v4, v27

    check-cast v4, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move-wide/from16 v48, v12

    iget-wide v12, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    and-long v29, v12, v17

    add-long v29, v29, v21

    and-long v29, v29, v23

    cmp-long v27, v29, v25

    if-nez v27, :cond_c

    new-instance v29, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move-object/from16 v50, v14

    move-object/from16 v27, v15

    iget-wide v14, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    move/from16 v36, v5

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v12, v13}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v32

    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    move-wide/from16 v34, v4

    move-wide/from16 v30, v14

    invoke-direct/range {v29 .. v35}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJJ)V

    move-object/from16 v4, v29

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move/from16 v36, v5

    move-object/from16 v50, v14

    move-object/from16 v27, v15

    :goto_7
    add-int/lit8 v5, v36, 0x1

    move-object/from16 v15, v27

    move/from16 v4, v28

    move-wide/from16 v12, v48

    move-object/from16 v14, v50

    goto :goto_6

    :cond_d
    move-wide/from16 v48, v12

    move-object/from16 v50, v14

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v38

    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v9, v10}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v32

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    iget-boolean v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    iget-wide v12, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    iget-boolean v10, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    iget v15, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    move-wide/from16 v28, v4

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    iget v2, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressure:F

    new-instance v27, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-wide/from16 v43, v4

    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->originalEventPosition:J

    move/from16 v35, v2

    move-wide/from16 v45, v4

    move-wide/from16 v30, v6

    move/from16 v34, v9

    move/from16 v40, v10

    move-object/from16 v42, v11

    move-wide/from16 v36, v12

    move/from16 v41, v15

    invoke-direct/range {v27 .. v46}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/ArrayList;JJ)V

    move-object/from16 v2, v27

    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v4, :cond_e

    move-object v4, v14

    :cond_e
    iput-object v4, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    move-object v14, v4

    :goto_8
    iput-object v14, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v6, v16

    move-wide/from16 v4, v48

    invoke-virtual {v6, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    :cond_10
    move/from16 v20, v4

    move/from16 v47, v5

    move/from16 v19, v15

    goto :goto_9

    :cond_11
    move/from16 v20, v4

    move/from16 v47, v5

    move/from16 v19, v7

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v7, v19

    move/from16 v4, v20

    move/from16 v5, v47

    goto/16 :goto_5

    :cond_12
    move/from16 v20, v4

    move/from16 v19, v7

    move-object v6, v10

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    iput v2, v11, Landroidx/media3/common/util/LongArray;->size:I

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return v19

    :cond_13
    iget v2, v11, Landroidx/media3/common/util/LongArray;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_a
    const/4 v4, -0x1

    if-ge v4, v2, :cond_17

    iget-object v5, v11, Landroidx/media3/common/util/LongArray;->values:[J

    aget-wide v7, v5, v2

    invoke-virtual {v1, v7, v8}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_14

    goto :goto_c

    :cond_14
    iget v5, v11, Landroidx/media3/common/util/LongArray;->size:I

    if-ge v2, v5, :cond_16

    add-int/lit8 v5, v5, -0x1

    move v7, v2

    :goto_b
    if-ge v7, v5, :cond_15

    iget-object v8, v11, Landroidx/media3/common/util/LongArray;->values:[J

    add-int/lit8 v9, v7, 0x1

    aget-wide v12, v8, v9

    aput-wide v12, v8, v7

    move v7, v9

    goto :goto_b

    :cond_15
    iget v5, v11, Landroidx/media3/common/util/LongArray;->size:I

    add-int/2addr v5, v4

    iput v5, v11, Landroidx/media3/common/util/LongArray;->size:I

    :cond_16
    :goto_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_18

    invoke-virtual {v6, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_18
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Lcom/google/android/gms/tasks/zzr;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_1a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/tasks/zzr;->activeHoverEvent-0FcD4WY(J)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_f

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v1, 0x3

    if-eqz v6, :cond_27

    iget-boolean v3, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-nez p4, :cond_1b

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v5, :cond_21

    if-nez v3, :cond_1c

    iget-boolean v5, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    if-eqz v5, :cond_21

    :cond_1c
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v7, v5, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    iget-wide v5, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    const/16 v9, 0x20

    shr-long v10, v5, v9

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const-wide v11, 0xffffffffL

    and-long/2addr v5, v11

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    shr-long v13, v7, v9

    long-to-int v6, v13

    and-long/2addr v7, v11

    long-to-int v7, v7

    const/4 v8, 0x0

    cmpg-float v9, v10, v8

    if-gez v9, :cond_1d

    move/from16 v9, v19

    goto :goto_10

    :cond_1d
    move v9, v4

    :goto_10
    int-to-float v6, v6

    cmpl-float v6, v10, v6

    if-lez v6, :cond_1e

    move/from16 v6, v19

    goto :goto_11

    :cond_1e
    move v6, v4

    :goto_11
    or-int/2addr v6, v9

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1f

    move/from16 v8, v19

    goto :goto_12

    :cond_1f
    move v8, v4

    :goto_12
    or-int/2addr v6, v8

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_20

    move/from16 v5, v19

    goto :goto_13

    :cond_20
    move v5, v4

    :goto_13
    or-int/2addr v5, v6

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    :cond_21
    :goto_14
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-boolean v6, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq v5, v6, :cond_25

    iget v9, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    if-ne v9, v1, :cond_22

    goto :goto_15

    :cond_22
    if-ne v9, v8, :cond_23

    goto :goto_15

    :cond_23
    if-ne v9, v7, :cond_25

    :goto_15
    if-eqz v5, :cond_24

    move v7, v8

    :cond_24
    iput v7, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_16

    :cond_25
    iget v9, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    if-ne v9, v8, :cond_26

    if-eqz v6, :cond_26

    iget-boolean v6, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    if-nez v6, :cond_26

    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_16

    :cond_26
    if-ne v9, v7, :cond_28

    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_16

    :cond_27
    const/4 v4, 0x0

    :cond_28
    :goto_16
    if-nez v20, :cond_2c

    iget v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    if-ne v3, v1, :cond_2c

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v3, v6, :cond_29

    goto :goto_18

    :cond_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    move v6, v4

    :goto_17
    if-ge v6, v3, :cond_2b

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v9, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    iget-wide v7, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_2a

    goto :goto_18

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2b
    move v7, v4

    goto :goto_19

    :cond_2c
    :goto_18
    move/from16 v7, v19

    :goto_19
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    return v7
.end method

.method public final cleanUpHits(Lcom/google/android/gms/tasks/zzr;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Lcom/google/android/gms/tasks/zzr;)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v6, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/tasks/zzr;->activeHoverEvent-0FcD4WY(J)Z

    move-result v5

    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-nez v6, :cond_3

    if-nez v9, :cond_3

    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v5, v7, v8}, Landroidx/media3/common/util/LongArray;->remove(J)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget p1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method

.method public final dispatchCancel()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_8

    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v3, :cond_1

    check-cast p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    goto :goto_4

    :cond_1
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    instance-of v3, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_7

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-eqz v3, :cond_6

    iget v7, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_2

    move-object p0, v3

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_6
    if-ne v5, v6, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final dispatchFinalEventPass(Lcom/google/android/gms/tasks/zzr;)Z
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v5, v5, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    move-object v7, v1

    move-object v8, v2

    :goto_0
    const/4 v9, 0x1

    if-eqz v7, :cond_9

    instance-of v10, v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_2

    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v7, v4, v9, v5, v6}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_3

    :cond_2
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eqz v10, :cond_8

    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_8

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v12, v3

    :goto_1
    if-eqz v10, :cond_7

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_3

    move-object v7, v10

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v2

    :cond_5
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_7
    if-ne v12, v9, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_0

    :cond_9
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_4
    if-ge v3, v1, :cond_a

    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Lcom/google/android/gms/tasks/zzr;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move v3, v9

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Lcom/google/android/gms/tasks/zzr;)V

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iput-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    return v3
.end method

.method public final dispatchMainEventPass(Lcom/google/android/gms/tasks/zzr;Z)Z
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, v3, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v5

    :goto_1
    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eqz v6, :cond_9

    instance-of v10, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_2

    check-cast v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v6, v2, v8, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_4

    :cond_2
    iget v10, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_8

    instance-of v10, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_8

    move-object v10, v6

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v11, v1

    :goto_2
    if-eqz v10, :cond_7

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_3

    move-object v6, v10

    goto :goto_3

    :cond_3
    if-nez v7, :cond_4

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_5
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_7
    if-ne v11, v9, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_1

    :cond_9
    iget-boolean v6, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v10, v1

    :goto_5
    if-ge v10, v6, :cond_a

    aget-object v11, v7, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    iget-object v12, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Lcom/google/android/gms/tasks/zzr;Z)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    iget-boolean p0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p0, :cond_12

    move-object p0, v5

    :goto_6
    if-eqz v0, :cond_12

    instance-of p1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz p1, :cond_b

    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v2, p1, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_9

    :cond_b
    iget p1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p1, v8

    if-eqz p1, :cond_11

    instance-of p1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz p1, :cond_11

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/node/DelegatingNode;

    iget-object p1, p1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move p2, v1

    :goto_7
    if-eqz p1, :cond_10

    iget v6, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_f

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v9, :cond_c

    move-object v0, p1

    goto :goto_8

    :cond_c
    if-nez p0, :cond_d

    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p0, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_e
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_f
    :goto_8
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_7

    :cond_10
    if-ne p2, v9, :cond_11

    goto :goto_6

    :cond_11
    :goto_9
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_6

    :cond_12
    return v9
.end method

.method public final removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArray;->contains(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, p0}, Landroidx/collection/MutableObjectList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArray;->remove(J)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node(modifierNode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
