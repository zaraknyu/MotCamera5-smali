.class public final Landroidx/compose/ui/platform/LayerMatrixCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public androidMatrixCache:Ljava/lang/Object;

.field public final getMatrix:Ljava/lang/Object;

.field public final inverseMatrixCache:Ljava/lang/Object;

.field public isDirty:Z

.field public isIdentity:Z

.field public isInverseDirty:Z

.field public isInverseValid:Z

.field public final matrixCache:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 6
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    return-void
.end method


# virtual methods
.method public addHitPath-QJqDSyo(JLjava/util/List;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v4, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v4}, Landroidx/collection/MutableLongObjectMap;->clear()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    move-object v10, v3

    move v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_7

    move-object/from16 v11, p3

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    iget-boolean v13, v12, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v13, :cond_6

    new-instance v13, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v14, 0xc

    invoke-direct {v13, v14, v0, v12}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v12, Landroidx/compose/ui/Modifier$Node;->detachedListener:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    if-eqz v9, :cond_4

    iget-object v13, v10, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v14, v13, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v13, v13, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_1

    aget-object v16, v14, v15

    move-object/from16 v7, v16

    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    iget-object v7, v7, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v7, v16

    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    if-eqz v7, :cond_3

    iput-boolean v6, v7, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-object v10, v7, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v10, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    invoke-virtual {v4, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    new-instance v10, Landroidx/collection/MutableObjectList;

    invoke-direct {v10}, Landroidx/collection/MutableObjectList;-><init>()V

    invoke-virtual {v4, v1, v2, v10}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    :cond_2
    check-cast v10, Landroidx/collection/MutableObjectList;

    invoke-virtual {v10, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :goto_3
    move-object v10, v7

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :cond_4
    new-instance v7, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v7, v12}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    iget-object v12, v7, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/media3/common/util/LongArray;

    invoke-virtual {v12, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    invoke-virtual {v4, v1, v2}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    new-instance v12, Landroidx/collection/MutableObjectList;

    invoke-direct {v12}, Landroidx/collection/MutableObjectList;-><init>()V

    invoke-virtual {v4, v1, v2, v12}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    :cond_5
    check-cast v12, Landroidx/collection/MutableObjectList;

    invoke-virtual {v12, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    iget-object v10, v10, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_c

    iget-object v0, v4, Landroidx/collection/MutableLongObjectMap;->keys:[J

    iget-object v1, v4, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    iget-object v2, v4, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_c

    const/4 v5, 0x0

    :goto_5
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_a

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_9

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-wide v12, v0, v11

    aget-object v11, v1, v11

    check-cast v11, Landroidx/collection/MutableObjectList;

    iget-object v14, v3, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v15, v14, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v14, v14, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move/from16 p0, v9

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v14, :cond_8

    aget-object v16, v15, v9

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v0, v12, v13, v11}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    goto :goto_7

    :cond_8
    :goto_8
    move-object/from16 p1, v0

    goto :goto_9

    :cond_9
    move/from16 p0, v9

    goto :goto_8

    :goto_9
    shr-long v6, v6, p0

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p0

    move-object/from16 v0, p1

    goto :goto_6

    :cond_a
    move-object/from16 p1, v0

    move v0, v9

    if-ne v8, v0, :cond_c

    goto :goto_a

    :cond_b
    move-object/from16 p1, v0

    :goto_a
    if-eq v5, v4, :cond_c

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    goto :goto_5

    :cond_c
    return-void
.end method

.method public calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v0, [F

    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Lambda;

    invoke-interface {v2, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    invoke-static {v0}, Landroidx/compose/ui/graphics/Brush;->isIdentity-58bKbWc([F)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    return-object v0
.end method

.method public dispatchChanges(Lcom/google/android/gms/tasks/zzr;Z)Z
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableObjectList;

    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v2, p1, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/google/android/gms/tasks/zzr;Z)Z

    move-result v2

    iget-object v3, v1, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    iget-object v5, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v6, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v7, v4

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v9, v5, v7

    check-cast v9, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v9, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Lcom/google/android/gms/tasks/zzr;Z)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v5, v4

    move v6, v5

    :goto_3
    if-ge v5, v3, :cond_6

    aget-object v7, p2, v5

    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v7, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Lcom/google/android/gms/tasks/zzr;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v2

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Lcom/google/android/gms/tasks/zzr;)V

    if-nez v6, :cond_8

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move v2, v4

    :cond_8
    :goto_6
    iput-boolean v4, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    iget-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-eqz p1, :cond_a

    iput-boolean v4, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    iget p1, v0, Landroidx/collection/MutableObjectList;->_size:I

    move p2, v4

    :goto_7
    if-ge p2, p1, :cond_9

    invoke-virtual {v0, p2}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0, v3}, Landroidx/compose/ui/platform/LayerMatrixCache;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    :cond_a
    iget-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    if-eqz p1, :cond_b

    iput-boolean v4, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->processCancel()V

    :cond_b
    iget-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz p1, :cond_c

    iput-boolean v4, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    iget-object p0, v1, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_c
    return v2
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    return-void
.end method

.method public processCancel()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/NodeParent;

    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v3, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    return-void

    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method

.method public removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    iget-object p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->removeMatchingPointerInputModifierNodeList:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->clear()V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_1
    iget p0, v0, Landroidx/collection/MutableObjectList;->_size:I

    if-eqz p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/NodeParent;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    iget-object v3, v2, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
