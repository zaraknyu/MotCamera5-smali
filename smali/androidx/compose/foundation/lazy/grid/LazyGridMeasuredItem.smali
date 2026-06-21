.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# instance fields
.field public final afterContentPadding:I

.field public final animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final beforeContentPadding:I

.field public column:I

.field public final constraints:J

.field public final contentType:Ljava/lang/Object;

.field public final crossAxisSize:I

.field public final index:I

.field public final key:Ljava/lang/Object;

.field public final lane:I

.field public final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public mainAxisLayoutSize:I

.field public final mainAxisSize:I

.field public final mainAxisSizeWithSpacings:I

.field public maxMainAxisOffset:I

.field public minMainAxisOffset:I

.field public nonScrollableItem:Z

.field public offset:J

.field public final placeables:Ljava/util/List;

.field public row:I

.field public final size:J

.field public final span:I

.field public final visualOffset:J


# direct methods
.method public constructor <init>(ILjava/lang/Object;IILandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    iput p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    iput-wide p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->contentType:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iput-wide p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->constraints:J

    iput p15, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->lane:I

    move/from16 p1, p16

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->span:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    invoke-interface {p8}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    move p5, p3

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/compose/ui/layout/Placeable;

    iget p6, p6, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSize:I

    add-int/2addr p4, p5

    if-gez p4, :cond_1

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    int-to-long p3, p5

    const-wide p5, 0xffffffffL

    and-long/2addr p3, p5

    or-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    return-void
.end method


# virtual methods
.method public final getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->constraints:J

    return-wide v0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getLane()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->lane:I

    return p0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    return p0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 0

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    return-wide p0
.end method

.method public final getParentData(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPlaceablesCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->span:I

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "position() should be called first"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    iget v7, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    iget-wide v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v10, v4, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    if-eqz p2, :cond_1

    iput-wide v8, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    goto :goto_3

    :cond_1
    iget-wide v12, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    sget-wide v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v12

    if-nez v12, :cond_2

    iget-wide v12, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    goto :goto_2

    :cond_2
    move-wide v12, v8

    :goto_2
    iget-object v14, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v14, v14, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    and-long/2addr v8, v14

    long-to-int v8, v8

    move-wide/from16 v16, v14

    if-gt v8, v6, :cond_3

    and-long v14, v12, v16

    long-to-int v9, v14

    if-le v9, v6, :cond_4

    :cond_3
    if-lt v8, v7, :cond_5

    and-long v8, v12, v16

    long-to-int v6, v8

    if-lt v6, v7, :cond_5

    :cond_4
    iget-object v6, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$cancelPlacementAnimation$1;

    invoke-direct {v7, v10, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$cancelPlacementAnimation$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    invoke-static {v6, v11, v11, v7, v8}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_5
    move-wide v8, v12

    :goto_3
    iget-object v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_6
    iget-wide v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v6

    if-nez p2, :cond_8

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    iput-wide v6, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->finalOffset:J

    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v8, v5, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v11}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_5

    :cond_9
    invoke-static {v1, v5, v6, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public final position(IIII)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIIIII)V

    return-void
.end method

.method public final position(IIIIII)V
    .locals 4

    .line 2
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_0

    sub-int/2addr p3, p2

    .line 4
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->crossAxisSize:I

    sub-int p2, p3, p2

    :cond_0
    int-to-long p2, p2

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p1, p2, v0

    .line 5
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    .line 6
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    .line 7
    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    .line 8
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->beforeContentPadding:I

    neg-int p1, p1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    .line 9
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr p4, p1

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    return-void
.end method

.method public final setNonScrollableItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    return-void
.end method
