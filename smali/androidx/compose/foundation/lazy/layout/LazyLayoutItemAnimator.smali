.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final disappearingItems:Ljava/util/ArrayList;

.field public displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

.field public firstVisibleIndex:I

.field public keyIndexMap:Lcom/google/common/base/Splitter;

.field public final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

.field public final modifier:Landroidx/compose/ui/Modifier;

.field public final movingAwayKeys:Landroidx/collection/MutableScatterSet;

.field public final movingAwayToEndBound:Ljava/util/ArrayList;

.field public final movingAwayToStartBound:Ljava/util/ArrayList;

.field public final movingInFromEndBound:Ljava/util/ArrayList;

.field public final movingInFromStartBound:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance v0, Landroidx/collection/MutableScatterMap;

    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    sget v0, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v0, Landroidx/collection/MutableScatterSet;

    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V
    .locals 10

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v1

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(IIIJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(IIIJ)J

    move-result-wide v3

    :goto_0
    iget-object p1, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length p2, p1

    move v5, v0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v6, p1, v0

    add-int/lit8 v7, v5, 0x1

    if-eqz v6, :cond_1

    invoke-interface {p0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v8

    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v8

    iput-wide v8, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I
    .locals 5

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getLane()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getSpan()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v4

    add-int/2addr v4, v3

    aput v4, p0, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public final getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMinSizeToFitDisappearingItems-YbymL2g()J
    .locals 12

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v5, :cond_0

    const/16 v6, 0x20

    shr-long v7, v1, v6

    long-to-int v7, v7

    iget-wide v8, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    shr-long/2addr v8, v6

    long-to-int v8, v8

    iget-wide v9, v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    shr-long/2addr v9, v6

    long-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const-wide v8, 0xffffffffL

    and-long/2addr v1, v8

    long-to-int v1, v1

    iget-wide v10, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    and-long/2addr v10, v8

    long-to-int v2, v10

    iget-wide v4, v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    and-long/2addr v4, v8

    long-to-int v4, v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v4, v7

    shl-long/2addr v4, v6

    int-to-long v1, v1

    and-long/2addr v1, v8

    or-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final onMeasured(IIILjava/util/ArrayList;Lcom/google/common/base/Splitter;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 45

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p9

    iget-object v7, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lcom/google/common/base/Splitter;

    iput-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lcom/google/common/base/Splitter;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    if-ge v10, v8, :cond_3

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_2

    const/16 v16, 0x0

    invoke-interface {v13, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v9, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    if-eqz v9, :cond_0

    move-object v9, v11

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    goto :goto_2

    :cond_0
    move-object/from16 v9, v16

    :goto_2
    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    return-void

    :cond_4
    :goto_3
    iget v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v9

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    iput v9, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    const/16 v11, 0x20

    if-eqz p7, :cond_6

    const/4 v13, 0x0

    int-to-long v14, v13

    shl-long/2addr v14, v11

    const-wide v17, 0xffffffffL

    int-to-long v9, v1

    and-long v9, v9, v17

    or-long/2addr v9, v14

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    const-wide v17, 0xffffffffL

    int-to-long v9, v1

    shl-long/2addr v9, v11

    int-to-long v14, v13

    and-long v13, v14, v17

    or-long/2addr v9, v13

    :goto_5
    if-nez p8, :cond_8

    if-nez p10, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v1, 0x1

    :goto_7
    iget-object v14, v12, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v15, v12, Landroidx/collection/MutableScatterMap;->metadata:[J

    move/from16 v19, v11

    array-length v11, v15

    add-int/lit8 v11, v11, -0x2

    const-wide/16 v20, 0x80

    const-wide/16 v22, 0xff

    const/16 v24, 0x7

    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 p7, v1

    if-ltz v11, :cond_c

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    const/4 v1, 0x0

    :goto_8
    const/16 p10, 0x8

    aget-wide v14, v28, v1

    not-long v2, v14

    shl-long v2, v2, v24

    and-long/2addr v2, v14

    and-long v2, v2, v25

    cmp-long v2, v2, v25

    if-eqz v2, :cond_b

    sub-int v2, v1, v11

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_a

    and-long v29, v14, v22

    cmp-long v29, v29, v20

    if-gez v29, :cond_9

    shl-int/lit8 v29, v1, 0x3

    add-int v29, v29, v3

    move/from16 v30, v3

    aget-object v3, v27, v29

    invoke-virtual {v13, v3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_9
    move/from16 v30, v3

    :goto_a
    shr-long v14, v14, p10

    add-int/lit8 v3, v30, 0x1

    goto :goto_9

    :cond_a
    move/from16 v3, p10

    if-ne v2, v3, :cond_c

    :cond_b
    if-eq v1, v11, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    iget-object v15, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    if-ge v2, v1, :cond_1d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    move/from16 v27, v1

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getPlaceablesCount()I

    move-result v1

    move/from16 v34, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1b

    move/from16 v28, v1

    invoke-interface {v11, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v1

    move/from16 v29, v2

    instance-of v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    if-eqz v2, :cond_d

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    goto :goto_d

    :cond_d
    move-object/from16 v1, v16

    :goto_d
    if-eqz v1, :cond_1a

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz v7, :cond_e

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/common/base/Splitter;->getIndex(Ljava/lang/Object;)I

    move-result v1

    :goto_e
    const/4 v2, -0x1

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    goto :goto_e

    :goto_f
    if-ne v1, v2, :cond_f

    if-eqz v7, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-nez v28, :cond_14

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    move/from16 v32, p11

    move/from16 v33, p12

    move-object/from16 v30, p13

    move-object/from16 v31, p14

    move-object/from16 v28, v3

    move-object/from16 v29, v11

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    move/from16 v35, v2

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    move-result v2

    if-eq v2, v1, :cond_11

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    if-ge v1, v8, :cond_10

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_10
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_12

    and-long v1, v14, v17

    :goto_11
    long-to-int v1, v1

    goto :goto_12

    :cond_12
    shr-long v1, v14, v19

    goto :goto_11

    :goto_12
    invoke-static {v11, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    if-eqz v35, :cond_1c

    iget-object v1, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1c

    aget-object v11, v1, v3

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_14
    move/from16 v35, v2

    if-eqz p7, :cond_1c

    move/from16 v32, p11

    move/from16 v33, p12

    move-object/from16 v30, p13

    move-object/from16 v31, p14

    move-object/from16 v29, v11

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;II)V

    move-object/from16 v1, v28

    iget-object v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v14, v2

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v14, :cond_16

    move-object/from16 v28, v2

    aget-object v2, v28, v15

    move/from16 v29, v14

    move/from16 v30, v15

    if-eqz v2, :cond_15

    iget-wide v14, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    sget-wide v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_15

    iget-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    :cond_15
    add-int/lit8 v15, v30, 0x1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v2, v28

    move/from16 v14, v29

    goto :goto_14

    :cond_16
    if-eqz v35, :cond_19

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_19

    aget-object v5, v1, v4

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    if-eqz v14, :cond_17

    invoke-static {v14}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_17
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->animateAppearance()V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    goto :goto_16

    :cond_1a
    add-int/lit8 v2, v29, 0x1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v1, v28

    goto/16 :goto_c

    :cond_1b
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    :cond_1c
    :goto_16
    add-int/lit8 v2, v34, 0x1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v1, v27

    goto/16 :goto_b

    :cond_1d
    new-array v1, v6, [I

    if-eqz p7, :cond_23

    if-eqz v7, :cond_23

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1e

    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    const/4 v4, 0x2

    invoke-direct {v2, v7, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/google/common/base/Splitter;I)V

    invoke-static {v15, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_1f

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-static {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v8

    sub-int v8, p11, v8

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-static {v5, v8, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1f
    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8}, Ljava/util/Arrays;->fill([IIII)V

    :cond_20
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_21

    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    const/4 v4, 0x0

    invoke-direct {v2, v7, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/google/common/base/Splitter;I)V

    invoke-static {v14, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v2, :cond_22

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-static {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v8

    add-int v8, v8, p12

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-static {v5, v8, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->initializeAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_22
    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8}, Ljava/util/Arrays;->fill([IIII)V

    :cond_23
    iget-object v2, v13, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v4, v13, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    if-ltz v5, :cond_38

    move-object v11, v13

    move-object/from16 v27, v14

    const/4 v10, 0x0

    :goto_19
    aget-wide v13, v4, v10

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    not-long v1, v13

    shl-long v1, v1, v24

    and-long/2addr v1, v13

    and-long v1, v1, v25

    cmp-long v1, v1, v25

    if-eqz v1, :cond_37

    sub-int v1, v10, v5

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_36

    and-long v30, v13, v22

    cmp-long v30, v30, v20

    if-gez v30, :cond_35

    shl-int/lit8 v30, v10, 0x3

    add-int v30, v30, v2

    move/from16 v31, v2

    aget-object v2, v29, v30

    invoke-virtual {v12, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v32, v4

    move-object/from16 v4, v30

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-nez v4, :cond_24

    goto/16 :goto_23

    :cond_24
    move-object/from16 v30, v11

    move-wide/from16 v42, v13

    move-object/from16 v11, p5

    invoke-virtual {v11, v2}, Lcom/google/common/base/Splitter;->getIndex(Ljava/lang/Object;)I

    move-result v13

    iget v14, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    sub-int v14, v6, v14

    move-object/from16 v33, v15

    iget v15, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2f

    iget-object v13, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v15, v13

    const/4 v14, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_1b
    if-ge v14, v15, :cond_2e

    move-object/from16 v36, v13

    aget-object v13, v36, v14

    add-int/lit8 v37, v35, 0x1

    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v38

    if-eqz v38, :cond_25

    move-object/from16 v44, v12

    move/from16 v38, v14

    move/from16 v39, v15

    :goto_1c
    const/16 v34, 0x1

    goto/16 :goto_1f

    :cond_25
    move/from16 v38, v14

    iget-object v14, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    iget-object v14, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    aput-object v16, v14, v35

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    if-eqz v13, :cond_26

    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_26
    move-object/from16 v44, v12

    :goto_1d
    move/from16 v39, v15

    goto :goto_1f

    :cond_27
    iget-object v14, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v14, :cond_2a

    move/from16 v39, v15

    iget-object v15, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v40

    if-nez v40, :cond_28

    if-nez v15, :cond_29

    :cond_28
    move-object/from16 v44, v12

    goto :goto_1e

    :cond_29
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setDisappearanceAnimationInProgress(Z)V

    iget-object v6, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v44, v12

    new-instance v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateDisappearance$1;

    move-object/from16 v11, v16

    invoke-direct {v12, v13, v15, v14, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateDisappearance$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    invoke-static {v6, v11, v11, v12, v14}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1e

    :cond_2a
    move-object/from16 v44, v12

    move/from16 v39, v15

    :goto_1e
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->displayingNode:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;

    if-eqz v6, :cond_2b

    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_2b
    const/16 v16, 0x0

    goto :goto_1c

    :cond_2c
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    iget-object v6, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    const/16 v16, 0x0

    aput-object v16, v6, v35

    goto :goto_1f

    :cond_2d
    move-object/from16 v44, v12

    move/from16 v38, v14

    goto :goto_1d

    :goto_1f
    add-int/lit8 v14, v38, 0x1

    move-object/from16 v11, p5

    move/from16 v6, p9

    move-object/from16 v13, v36

    move/from16 v35, v37

    move/from16 v15, v39

    move-object/from16 v12, v44

    goto/16 :goto_1b

    :cond_2e
    move-object/from16 v44, v12

    if-nez v34, :cond_34

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    goto/16 :goto_22

    :cond_2f
    move-object/from16 v44, v12

    iget-object v6, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->constraints:Landroidx/compose/ui/unit/Constraints;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v11, v6, Landroidx/compose/ui/unit/Constraints;->value:J

    iget v6, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->lane:I

    iget v14, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->span:I

    move-object/from16 v34, p6

    move/from16 v36, v6

    move-wide/from16 v38, v11

    move/from16 v35, v13

    move/from16 v37, v14

    invoke-interface/range {v34 .. v39}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    move-result-object v36

    move/from16 v6, v35

    invoke-interface/range {v36 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->setNonScrollableItem()V

    iget-object v11, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_20
    if-ge v13, v12, :cond_31

    aget-object v14, v11, v13

    if-eqz v14, :cond_30

    iget-object v14, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_30

    goto :goto_21

    :cond_30
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_31
    if-eqz v7, :cond_32

    invoke-virtual {v7, v2}, Lcom/google/common/base/Splitter;->getIndex(Ljava/lang/Object;)I

    move-result v11

    if-ne v6, v11, :cond_32

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->removeInfoForKey(Ljava/lang/Object;)V

    goto :goto_22

    :cond_32
    :goto_21
    iget v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    move/from16 v39, p11

    move/from16 v40, p12

    move-object/from16 v37, p13

    move-object/from16 v38, p14

    move/from16 v41, v2

    move-object/from16 v35, v4

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->updateAnimation(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;III)V

    move-object/from16 v2, v36

    iget v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    if-ge v6, v4, :cond_33

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_33
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_22
    const/16 v2, 0x8

    goto :goto_24

    :cond_35
    move/from16 v31, v2

    move-object/from16 v32, v4

    :goto_23
    move-object/from16 v30, v11

    move-object/from16 v44, v12

    move-wide/from16 v42, v13

    move-object/from16 v33, v15

    goto :goto_22

    :goto_24
    shr-long v13, v42, v2

    add-int/lit8 v4, v31, 0x1

    move/from16 v6, p9

    move v2, v4

    move-object/from16 v11, v30

    move-object/from16 v4, v32

    move-object/from16 v15, v33

    move-object/from16 v12, v44

    goto/16 :goto_1a

    :cond_36
    move-object/from16 v32, v4

    move-object/from16 v30, v11

    move-object/from16 v44, v12

    move-object/from16 v33, v15

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    goto :goto_25

    :cond_37
    move-object/from16 v32, v4

    move-object/from16 v30, v11

    move-object/from16 v44, v12

    move-object/from16 v33, v15

    const/16 v2, 0x8

    :goto_25
    if-eq v10, v5, :cond_39

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, p9

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v11, v30

    move-object/from16 v4, v32

    move-object/from16 v15, v33

    move-object/from16 v12, v44

    goto/16 :goto_19

    :cond_38
    move-object/from16 v28, v1

    move-object/from16 v44, v12

    move-object/from16 v30, v13

    move-object/from16 v27, v14

    move-object/from16 v33, v15

    :cond_39
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_3a

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    const/4 v2, 0x3

    move-object/from16 v5, p5

    invoke-direct {v1, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/google/common/base/Splitter;I)V

    invoke-static {v9, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_26

    :cond_3a
    move-object/from16 v5, p5

    :goto_26
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_3e

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v6, v44

    invoke-virtual {v6, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    move-object/from16 v7, v28

    invoke-static {v7, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v10

    if-eqz p8, :cond_3c

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v11

    if-eqz v11, :cond_3b

    and-long v11, v14, v17

    :goto_28
    long-to-int v11, v11

    goto :goto_29

    :cond_3b
    shr-long v11, v14, v19

    goto :goto_28

    :cond_3c
    iget v11, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMinOffset:I

    :goto_29
    sub-int/2addr v11, v10

    iget v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    move/from16 v10, p2

    move/from16 v12, p3

    invoke-interface {v3, v11, v4, v10, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    if-eqz p7, :cond_3d

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v44, v6

    move-object/from16 v28, v7

    goto :goto_27

    :cond_3e
    move/from16 v10, p2

    move/from16 v12, p3

    move/from16 v2, p9

    move-object/from16 v7, v28

    move-object/from16 v6, v44

    const/4 v13, 0x0

    invoke-static {v7, v13, v2, v13}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2a

    :cond_3f
    move/from16 v10, p2

    move/from16 v12, p3

    move-object/from16 v5, p5

    move-object/from16 v7, v28

    move-object/from16 v6, v44

    :goto_2a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_40

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    const/4 v2, 0x1

    invoke-direct {v1, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/google/common/base/Splitter;I)V

    invoke-static {v8, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_40
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v13, 0x0

    :goto_2b
    if-ge v13, v1, :cond_44

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    invoke-static {v7, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;)I

    move-result v4

    if-eqz p8, :cond_42

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v14

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->isVertical()Z

    move-result v11

    if-eqz v11, :cond_41

    and-long v14, v14, v17

    :goto_2c
    long-to-int v11, v14

    goto :goto_2d

    :cond_41
    shr-long v14, v14, v19

    goto :goto_2c

    :goto_2d
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v5, v11

    goto :goto_2e

    :cond_42
    iget v5, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->layoutMaxOffset:I

    :goto_2e
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v11

    sub-int/2addr v5, v11

    add-int/2addr v5, v4

    iget v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->crossAxisOffset:I

    invoke-interface {v2, v5, v3, v10, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->position(IIII)V

    const/4 v4, 0x1

    if-eqz p7, :cond_43

    invoke-virtual {v0, v2, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V

    :cond_43
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    :cond_44
    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object/from16 v4, p4

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v30 .. v30}, Landroidx/collection/MutableScatterSet;->clear()V

    return-void
.end method

.method public final releaseAnimations()V
    .locals 14

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    iget v0, p0, Landroidx/collection/MutableScatterMap;->_size:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v0, v10

    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    iget-object v10, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v11, v10

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_4

    :cond_3
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    :cond_5
    return-void
.end method

.method public final removeInfoForKey(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;Z)V
    .locals 12

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;->animations:[Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p0, v1

    add-int/lit8 v9, v2, 0x1

    if-eqz v4, :cond_2

    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v10

    iget-wide v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    sget-wide v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v10, v11, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v2

    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v6, v6, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementDelta--gyyYBs(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementAnimationInProgress(Z)V

    iput-boolean p2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z

    iget-object v2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v6, v6, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    :goto_1
    iput-wide v10, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v9

    goto :goto_0

    :cond_3
    return-void
.end method
