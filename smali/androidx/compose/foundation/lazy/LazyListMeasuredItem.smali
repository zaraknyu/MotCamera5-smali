.class public final Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# instance fields
.field public final afterContentPadding:I

.field public final animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final beforeContentPadding:I

.field public final constraints:J

.field public final contentType:Ljava/lang/Object;

.field public final crossAxisSize:I

.field public final horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final index:I

.field public final isVertical:Z

.field public final key:Ljava/lang/Object;

.field public final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public mainAxisLayoutSize:I

.field public final mainAxisSizeWithSpacings:I

.field public maxMainAxisOffset:I

.field public minMainAxisOffset:I

.field public nonScrollableItem:Z

.field public offset:I

.field public final placeableOffsets:[I

.field public final placeables:Ljava/util/List;

.field public final size:I

.field public final spacing:I

.field public final verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final visualOffset:J


# direct methods
.method public constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    iput-wide p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    move-object/from16 p1, p13

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->contentType:Ljava/lang/Object;

    move-object/from16 p1, p14

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-wide/from16 p3, p15

    iput-wide p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->constraints:J

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move p6, p5

    :goto_0
    if-ge p4, p1, :cond_2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v1, :cond_0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_1

    :cond_0
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_1
    add-int/2addr p5, v2

    if-nez v1, :cond_1

    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_2

    :cond_1
    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_2
    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->spacing:I

    add-int/2addr p5, p1

    if-gez p5, :cond_3

    goto :goto_3

    :cond_3
    move p3, p5

    :goto_3
    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    return-void
.end method


# virtual methods
.method public final getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->constraints:J

    return-wide v0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getLane()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getMainAxis--gyyYBs(J)I
    .locals 2

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz p0, :cond_0

    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_0
    const/16 p0, 0x20

    shr-long p0, p1, p0

    goto :goto_0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    return p0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    aget v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    int-to-long v0, v0

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaceablesCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getSpan()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    return p0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "position() should be called first"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v7, :cond_1

    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_2

    :cond_1
    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_2
    sub-int/2addr v6, v8

    iget v8, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v9

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v11, v4, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_7

    if-eqz p2, :cond_2

    iput-wide v9, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    move-object v15, v2

    move/from16 v16, v3

    goto :goto_3

    :cond_2
    iget-wide v13, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    move-object v15, v2

    move/from16 v16, v3

    sget-wide v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    invoke-static {v13, v14, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v9, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    :cond_3
    iget-object v2, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v2, v2, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v9, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-gt v13, v6, :cond_4

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v13

    if-le v13, v6, :cond_5

    :cond_4
    invoke-virtual {v0, v9, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v6

    if-lt v6, v8, :cond_6

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxis--gyyYBs(J)I

    move-result v6

    if-lt v6, v8, :cond_6

    :cond_5
    iget-object v6, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$cancelPlacementAnimation$1;

    invoke-direct {v8, v11, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$cancelPlacementAnimation$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    invoke-static {v6, v12, v12, v8, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_6
    move-wide v9, v2

    :goto_3
    iget-object v12, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_4

    :cond_7
    move-object v15, v2

    move/from16 v16, v3

    :goto_4
    iget-wide v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->visualOffset:J

    invoke-static {v9, v10, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    if-nez p2, :cond_9

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    iput-wide v2, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->finalOffset:J

    :cond_9
    :goto_5
    if-eqz v7, :cond_b

    if-eqz v12, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v6, v5, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v6, v12}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_7

    :cond_a
    invoke-static {v1, v5, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_e

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v8, 0x0

    if-eq v6, v7, :cond_d

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result v6

    iget v7, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v6, v7

    const/16 v7, 0x20

    shr-long v9, v2, v7

    long-to-int v9, v9

    sub-int/2addr v6, v9

    const-wide v9, 0xffffffffL

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-long v13, v6

    shl-long v6, v13, v7

    int-to-long v2, v2

    and-long/2addr v2, v9

    or-long/2addr v2, v6

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v6, v5, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3, v8, v12}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_7

    :cond_d
    :goto_6
    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v6, v5, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3, v8, v12}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_7

    :cond_e
    invoke-static {v1, v5, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method public final position(III)V
    .locals 10

    .line 2
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 3
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-eqz v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    mul-int/lit8 v5, v3, 0x2

    .line 7
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    if-eqz v0, :cond_2

    .line 8
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    if-eqz v7, :cond_1

    .line 9
    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 10
    iget-object v9, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v7, v8, p2, v9}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 11
    aput p1, v6, v5

    .line 12
    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    :goto_2
    add-int/2addr p1, v4

    goto :goto_3

    .line 13
    :cond_1
    const-string p0, "null horizontalAlignment when isVertical == true"

    .line 14
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 15
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    throw p0

    .line 17
    :cond_2
    aput p1, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 18
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    if-eqz v7, :cond_3

    .line 19
    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 20
    invoke-virtual {v7, v8, p3}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v7

    aput v7, v6, v5

    .line 21
    iget v4, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_3
    const-string p0, "null verticalAlignment when isVertical == false"

    .line 23
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    throw p0

    .line 26
    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->beforeContentPadding:I

    neg-int p1, p1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->minMainAxisOffset:I

    .line 27
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    return-void
.end method

.method public final position(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    return-void
.end method

.method public final setNonScrollableItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    return-void
.end method
