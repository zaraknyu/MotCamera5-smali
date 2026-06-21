.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureScope;
.implements Landroidx/compose/ui/node/MotionReferencePlacementDelegate;


# instance fields
.field public isPlacedUnderMotionFrameOfReference:Z

.field public isPlacingForAlignment:Z

.field public isShallowPlacing:Z

.field public final placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

.field public rulerValues:Landroidx/collection/MutableObjectFloatMap;

.field public rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    new-instance v0, Landroidx/compose/ui/layout/OuterPlacementScope;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/layout/OuterPlacementScope;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

    return-void
.end method

.method public static invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->onAlignmentsChanged()V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->onAlignmentsChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
.end method

.method public final captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectFloatMap;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    :cond_2
    iget-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v3, :cond_3

    new-instance v3, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v3}, Landroidx/collection/MutableObjectFloatMap;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    :cond_3
    iget-object v4, v3, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v5, v3, Landroidx/collection/MutableObjectFloatMap;->values:[F

    iget-object v6, v3, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x0

    if-ltz v7, :cond_1a

    move/from16 v9, v17

    const-wide/16 v18, 0xff

    const-wide/16 v20, 0x80

    :goto_1
    aget-wide v11, v6, v9

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long v13, v13, v16

    and-long/2addr v13, v11

    and-long v13, v13, v22

    cmp-long v10, v13, v22

    if-eqz v10, :cond_19

    sub-int v10, v9, v7

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    move/from16 v13, v17

    :goto_2
    if-ge v13, v10, :cond_18

    and-long v24, v11, v18

    cmp-long v14, v24, v20

    if-gez v14, :cond_17

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    const/16 v24, 0x0

    aget-object v8, v4, v14

    aget v14, v5, v14

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v25

    goto :goto_3

    :cond_4
    move/from16 v25, v17

    :goto_3
    const v26, -0x3361d2af    # -8.293031E7f

    mul-int v25, v25, v26

    shl-int/lit8 v27, v25, 0x10

    xor-int v25, v25, v27

    ushr-int/lit8 v15, v25, 0x7

    move-object/from16 v28, v4

    and-int/lit8 v4, v25, 0x7f

    move-object/from16 v25, v5

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    and-int v29, v15, v5

    move/from16 v31, v5

    move/from16 v30, v17

    :goto_4
    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v32, v29, 0x3

    and-int/lit8 v33, v29, 0x7

    move-object/from16 v34, v5

    shl-int/lit8 v5, v33, 0x3

    aget-wide v35, v34, v32

    ushr-long v35, v35, v5

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    aget-wide v37, v34, v32

    rsub-int/lit8 v32, v5, 0x40

    shl-long v37, v37, v32

    move-object/from16 v32, v6

    int-to-long v5, v5

    neg-long v5, v5

    const/16 v34, 0x3f

    shr-long v5, v5, v34

    and-long v5, v37, v5

    or-long v5, v35, v5

    move-wide/from16 v34, v11

    int-to-long v11, v4

    const-wide v36, 0x101010101010101L

    mul-long v38, v11, v36

    move-wide/from16 v40, v11

    xor-long v11, v5, v38

    sub-long v36, v11, v36

    not-long v11, v11

    and-long v11, v36, v11

    and-long v11, v11, v22

    :goto_5
    const-wide/16 v36, 0x0

    cmp-long v38, v11, v36

    if-eqz v38, :cond_6

    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v36

    shr-int/lit8 v36, v36, 0x3

    add-int v36, v29, v36

    and-int v36, v36, v31

    move/from16 v38, v4

    iget-object v4, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v36

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move/from16 v37, v14

    move/from16 v4, v36

    move/from16 v36, v13

    goto/16 :goto_12

    :cond_5
    const-wide/16 v36, 0x1

    sub-long v36, v11, v36

    and-long v11, v11, v36

    move/from16 v4, v38

    goto :goto_5

    :cond_6
    move/from16 v38, v4

    not-long v11, v5

    const/4 v4, 0x6

    shl-long/2addr v11, v4

    and-long v4, v5, v11

    and-long v4, v4, v22

    cmp-long v4, v4, v36

    if-eqz v4, :cond_16

    invoke-virtual {v2, v15}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v4

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    if-nez v5, :cond_7

    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v6, v4, 0x3

    aget-wide v5, v5, v6

    and-int/lit8 v11, v4, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long/2addr v5, v11

    and-long v5, v5, v18

    const-wide/16 v11, 0xfe

    cmp-long v5, v5, v11

    if-nez v5, :cond_8

    :cond_7
    move/from16 v36, v13

    move/from16 v37, v14

    goto/16 :goto_10

    :cond_8
    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_10

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    int-to-long v5, v5

    const-wide/16 v29, 0x20

    mul-long v5, v5, v29

    move-wide/from16 v29, v11

    int-to-long v11, v4

    const-wide/16 v36, 0x19

    mul-long v11, v11, v36

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gtz v4, :cond_10

    iget-object v4, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    iget-object v6, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v11, v2, Landroidx/collection/MutableObjectFloatMap;->values:[F

    add-int/lit8 v12, v5, 0x7

    shr-int/lit8 v12, v12, 0x3

    move-object/from16 v31, v6

    move/from16 v6, v17

    :goto_6
    if-ge v6, v12, :cond_9

    aget-wide v36, v4, v6

    move-object/from16 v38, v11

    move/from16 v39, v12

    and-long v11, v36, v22

    move/from16 v36, v13

    move/from16 v37, v14

    not-long v13, v11

    ushr-long v11, v11, v16

    add-long/2addr v13, v11

    const-wide v11, -0x101010101010102L

    and-long/2addr v11, v13

    aput-wide v11, v4, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v36

    move/from16 v14, v37

    move-object/from16 v11, v38

    move/from16 v12, v39

    goto :goto_6

    :cond_9
    move-object/from16 v38, v11

    move/from16 v36, v13

    move/from16 v37, v14

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v6

    add-int/lit8 v11, v6, -0x1

    aget-wide v12, v4, v11

    const-wide v42, 0xffffffffffffffL

    and-long v12, v12, v42

    const-wide/high16 v44, -0x100000000000000L

    or-long v12, v12, v44

    aput-wide v12, v4, v11

    aget-wide v11, v4, v17

    aput-wide v11, v4, v6

    move/from16 v6, v17

    :goto_7
    if-eq v6, v5, :cond_f

    shr-int/lit8 v11, v6, 0x3

    aget-wide v12, v4, v11

    and-int/lit8 v14, v6, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long/2addr v12, v14

    and-long v12, v12, v18

    cmp-long v39, v12, v20

    if-nez v39, :cond_a

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    cmp-long v12, v12, v29

    if-eqz v12, :cond_b

    goto :goto_8

    :cond_b
    aget-object v12, v31, v6

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    goto :goto_9

    :cond_c
    move/from16 v12, v17

    :goto_9
    mul-int v12, v12, v26

    shl-int/lit8 v13, v12, 0x10

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v12, 0x7

    invoke-virtual {v2, v13}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v39

    and-int/2addr v13, v5

    sub-int v44, v39, v13

    and-int v44, v44, v5

    move/from16 v45, v5

    const/16 v27, 0x8

    div-int/lit8 v5, v44, 0x8

    sub-int v13, v6, v13

    and-int v13, v13, v45

    div-int/lit8 v13, v13, 0x8

    const-wide/high16 v46, -0x8000000000000000L

    if-ne v5, v13, :cond_d

    and-int/lit8 v5, v12, 0x7f

    int-to-long v12, v5

    aget-wide v48, v4, v11

    move/from16 v44, v6

    shl-long v5, v18, v14

    not-long v5, v5

    and-long v5, v48, v5

    shl-long/2addr v12, v14

    or-long/2addr v5, v12

    aput-wide v5, v4, v11

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v11, v4, v17

    and-long v11, v11, v42

    or-long v11, v11, v46

    aput-wide v11, v4, v5

    add-int/lit8 v6, v44, 0x1

    :goto_a
    move/from16 v5, v45

    goto :goto_7

    :cond_d
    move/from16 v44, v6

    shr-int/lit8 v5, v39, 0x3

    aget-wide v48, v4, v5

    and-int/lit8 v6, v39, 0x7

    shl-int/lit8 v6, v6, 0x3

    shr-long v50, v48, v6

    and-long v50, v50, v18

    cmp-long v13, v50, v20

    if-nez v13, :cond_e

    and-int/lit8 v12, v12, 0x7f

    int-to-long v12, v12

    move/from16 v50, v5

    move/from16 v51, v6

    shl-long v5, v18, v51

    not-long v5, v5

    and-long v5, v48, v5

    shl-long v12, v12, v51

    or-long/2addr v5, v12

    aput-wide v5, v4, v50

    aget-wide v5, v4, v11

    shl-long v12, v18, v14

    not-long v12, v12

    and-long/2addr v5, v12

    shl-long v12, v20, v14

    or-long/2addr v5, v12

    aput-wide v5, v4, v11

    aget-object v5, v31, v44

    aput-object v5, v31, v39

    aput-object v24, v31, v44

    aget v5, v38, v44

    aput v5, v38, v39

    const/4 v5, 0x0

    aput v5, v38, v44

    move/from16 v6, v44

    goto :goto_b

    :cond_e
    move/from16 v50, v5

    move/from16 v51, v6

    and-int/lit8 v5, v12, 0x7f

    int-to-long v5, v5

    shl-long v11, v18, v51

    not-long v11, v11

    and-long v11, v48, v11

    shl-long v5, v5, v51

    or-long/2addr v5, v11

    aput-wide v5, v4, v50

    aget-object v5, v31, v39

    aget-object v6, v31, v44

    aput-object v6, v31, v39

    aput-object v5, v31, v44

    aget v5, v38, v39

    aget v6, v38, v44

    aput v6, v38, v39

    aput v5, v38, v44

    add-int/lit8 v6, v44, -0x1

    :goto_b
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-wide v11, v4, v17

    and-long v11, v11, v42

    or-long v11, v11, v46

    aput-wide v11, v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    invoke-static {v4}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v4

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    goto/16 :goto_f

    :cond_10
    move/from16 v36, v13

    move/from16 v37, v14

    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    invoke-static {v4}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v4

    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    iget-object v6, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v11, v2, Landroidx/collection/MutableObjectFloatMap;->values:[F

    iget v12, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectFloatMap;->initializeStorage(I)V

    iget-object v4, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    iget-object v13, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v14, v2, Landroidx/collection/MutableObjectFloatMap;->values:[F

    move-object/from16 v29, v4

    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    move/from16 v30, v4

    move/from16 v4, v17

    :goto_c
    if-ge v4, v12, :cond_13

    shr-int/lit8 v31, v4, 0x3

    aget-wide v38, v5, v31

    and-int/lit8 v31, v4, 0x7

    shl-int/lit8 v31, v31, 0x3

    shr-long v38, v38, v31

    and-long v38, v38, v18

    cmp-long v31, v38, v20

    if-gez v31, :cond_12

    aget-object v31, v6, v4

    if-eqz v31, :cond_11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->hashCode()I

    move-result v38

    goto :goto_d

    :cond_11
    move/from16 v38, v17

    :goto_d
    mul-int v38, v38, v26

    shl-int/lit8 v39, v38, 0x10

    xor-int v38, v38, v39

    move/from16 v39, v4

    ushr-int/lit8 v4, v38, 0x7

    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v4

    move/from16 v42, v4

    and-int/lit8 v4, v38, 0x7f

    move-object/from16 v38, v5

    int-to-long v4, v4

    shr-int/lit8 v43, v42, 0x3

    and-int/lit8 v44, v42, 0x7

    shl-int/lit8 v44, v44, 0x3

    aget-wide v45, v29, v43

    move-wide/from16 v47, v4

    shl-long v4, v18, v44

    not-long v4, v4

    and-long v4, v45, v4

    shl-long v44, v47, v44

    or-long v4, v4, v44

    aput-wide v4, v29, v43

    add-int/lit8 v43, v42, -0x7

    and-int v43, v43, v30

    and-int/lit8 v44, v30, 0x7

    add-int v43, v43, v44

    shr-int/lit8 v43, v43, 0x3

    aput-wide v4, v29, v43

    aput-object v31, v13, v42

    aget v4, v11, v39

    aput v4, v14, v42

    goto :goto_e

    :cond_12
    move/from16 v39, v4

    move-object/from16 v38, v5

    :goto_e
    add-int/lit8 v4, v39, 0x1

    move-object/from16 v5, v38

    goto :goto_c

    :cond_13
    :goto_f
    invoke-virtual {v2, v15}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v4

    :goto_10
    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    iget-object v6, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v11, v4, 0x3

    aget-wide v12, v6, v11

    and-int/lit8 v14, v4, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long v29, v12, v14

    and-long v29, v29, v18

    cmp-long v15, v29, v20

    if-nez v15, :cond_14

    goto :goto_11

    :cond_14
    move/from16 v33, v17

    :goto_11
    sub-int v5, v5, v33

    iput v5, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    move/from16 v26, v5

    move-object v15, v6

    shl-long v5, v18, v14

    not-long v5, v5

    and-long/2addr v5, v12

    shl-long v12, v40, v14

    or-long/2addr v5, v12

    aput-wide v5, v15, v11

    add-int/lit8 v11, v4, -0x7

    and-int v11, v11, v26

    and-int/lit8 v12, v26, 0x7

    add-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x3

    aput-wide v5, v15, v11

    not-int v4, v4

    :goto_12
    if-gez v4, :cond_15

    not-int v4, v4

    :cond_15
    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    aput-object v8, v5, v4

    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->values:[F

    aput v37, v5, v4

    const/16 v5, 0x8

    goto :goto_13

    :cond_16
    move/from16 v36, v13

    move/from16 v37, v14

    const/16 v5, 0x8

    add-int/lit8 v30, v30, 0x8

    add-int v29, v29, v30

    and-int v29, v29, v31

    move-object/from16 v6, v32

    move-wide/from16 v11, v34

    move/from16 v4, v38

    goto/16 :goto_4

    :cond_17
    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object/from16 v32, v6

    move-wide/from16 v34, v11

    move/from16 v36, v13

    move v5, v15

    const/16 v24, 0x0

    :goto_13
    shr-long v11, v34, v5

    add-int/lit8 v13, v36, 0x1

    move v15, v5

    move-object/from16 v5, v25

    move-object/from16 v4, v28

    move-object/from16 v6, v32

    goto/16 :goto_2

    :cond_18
    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object/from16 v32, v6

    move v5, v15

    const/16 v24, 0x0

    if-ne v10, v5, :cond_1b

    goto :goto_14

    :cond_19
    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move-object/from16 v32, v6

    const/16 v24, 0x0

    :goto_14
    if-eq v9, v7, :cond_1b

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v25

    move-object/from16 v4, v28

    move-object/from16 v6, v32

    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_1a
    const-wide/16 v18, 0xff

    const-wide/16 v20, 0x80

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v24, 0x0

    :cond_1b
    invoke-virtual {v3}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v4, :cond_1c

    check-cast v4, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v4

    if-eqz v4, :cond_1c

    sget-object v5, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$2:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    new-instance v6, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v7, 0xe

    invoke-direct {v6, v7, v1, v0}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5, v6}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_1c
    iget-object v1, v3, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_25

    move/from16 v5, v17

    :goto_15
    aget-wide v6, v3, v5

    not-long v8, v6

    shl-long v8, v8, v16

    and-long/2addr v8, v6

    and-long v8, v8, v22

    cmp-long v8, v8, v22

    if-eqz v8, :cond_24

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v27, 0x8

    rsub-int/lit8 v15, v8, 0x8

    move/from16 v8, v17

    :goto_16
    if-ge v8, v15, :cond_23

    and-long v9, v6, v18

    cmp-long v9, v9, v20

    if-gez v9, :cond_22

    shl-int/lit8 v9, v5, 0x3

    add-int/2addr v9, v8

    aget-object v9, v1, v9

    if-nez v9, :cond_21

    move-object/from16 v9, v24

    invoke-virtual {v2, v9}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_1d

    goto :goto_17

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v10

    if-eqz v10, :cond_20

    :cond_1e
    iget-object v11, v10, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-eqz v11, :cond_1f

    invoke-virtual {v11, v9}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual {v10}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v10

    if-nez v10, :cond_1e

    :cond_20
    :goto_17
    const/16 v10, 0x8

    goto :goto_18

    :cond_21
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_22
    move-object/from16 v9, v24

    goto :goto_17

    :goto_18
    shr-long/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v24, v9

    goto :goto_16

    :cond_23
    move-object/from16 v9, v24

    const/16 v10, 0x8

    if-ne v15, v10, :cond_25

    goto :goto_19

    :cond_24
    move-object/from16 v9, v24

    const/16 v10, 0x8

    :goto_19
    if-eq v5, v4, :cond_25

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v24, v9

    goto :goto_15

    :cond_25
    invoke-virtual {v2}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    return-void
.end method

.method public final get(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getHasMeasureResult()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result p1

    if-ne p1, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public abstract getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract getHasMeasureResult()Z
.end method

.method public abstract getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public abstract getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
.end method

.method public abstract getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract getPosition-nOcc-ac()J
.end method

.method public isLookingAhead()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;

    move-object v6, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    return-object v1
.end method

.method public abstract replace$ui_release()V
.end method

.method public final updatePlacedUnderMotionFrameOfReference(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, v3, :cond_5

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    :cond_3
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    return-void
.end method
