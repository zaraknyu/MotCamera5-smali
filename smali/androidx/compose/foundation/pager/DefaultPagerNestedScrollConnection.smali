.class public final Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# instance fields
.field public final state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    return-void
.end method


# virtual methods
.method public final onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {p3, p4, p0, p0, p1}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFI)J

    move-result-wide p0

    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p2
.end method

.method public final onPostScroll-DzOQY0M(IJJ)J
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    sget-object p0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/16 p0, 0x20

    shr-long p0, p4, p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Scroll cancelled"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final onPreScroll-OzD1aCk(IJ)J
    .locals 6

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p1, p1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v2

    iget v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v5, v1

    move v1, p1

    move p1, v5

    :cond_0
    const/16 v0, 0x20

    shr-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    neg-float p1, p1

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/Fsm;->dispatchRawDelta(F)F

    move-result p0

    neg-float p0, p0

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-wide v1, 0xffffffffL

    and-long p1, p2, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p2, v0

    and-long/2addr p0, v1

    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method
