.class public abstract Landroidx/compose/foundation/pager/PagerStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultPositionThreshold:F

.field public static final EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public static final UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x38

    int-to-float v0, v0

    sput v0, Landroidx/compose/foundation/pager/PagerStateKt;->DefaultPositionThreshold:F

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v9, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v10

    new-instance v1, Landroidx/compose/foundation/pager/PagerMeasureResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;)V

    sput-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    new-instance v0, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    return-void
.end method

.method public static final calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J
    .locals 7

    iget v0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    iget v1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    add-int/2addr v0, v1

    int-to-long v1, p1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    neg-int p1, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    int-to-long v3, p1

    sub-long/2addr v1, v3

    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v3

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20

    shr-long/2addr v3, p1

    :goto_0
    long-to-int p1, v3

    goto :goto_1

    :cond_0
    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    goto :goto_0

    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-long p0, p1

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x0

    cmp-long v0, v1, p0

    if-gez v0, :cond_1

    return-wide p0

    :cond_1
    return-wide v1
.end method

.method public static final rememberPagerState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/pager/DefaultPagerState;
    .locals 7

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    sget-object v1, Landroidx/compose/foundation/pager/DefaultPagerState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    and-int/lit8 v2, p3, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    and-int/lit8 v2, p3, 0x6

    if-ne v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, p4

    :goto_0
    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-le v3, v5, :cond_3

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v5, :cond_5

    :cond_4
    move p4, v4

    :cond_5
    or-int p3, v2, p4

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_6

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p4, p3, :cond_7

    :cond_6
    new-instance p4, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$1$1;

    invoke-direct {p4, p0, v6, p1}, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$1$1;-><init>(IFLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v2, p4

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/DefaultPagerState;

    iget-object p2, p0, Landroidx/compose/foundation/pager/DefaultPagerState;->pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object p0
.end method
