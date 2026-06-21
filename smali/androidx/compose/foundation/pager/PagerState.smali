.class public abstract Landroidx/compose/foundation/pager/PagerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# instance fields
.field public accumulator:F

.field public approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

.field public final canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

.field public density:Landroidx/compose/ui/unit/Density;

.field public firstVisiblePage:I

.field public firstVisiblePageOffset:I

.field public hasLookaheadOccurred:Z

.field public indexToPrefetch:I

.field public final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public maxScrollOffset:J

.field public final measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public minScrollOffset:J

.field public final pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final prefetchingEnabled:Z

.field public premeasureConstraints:J

.field public previousPassDelta:F

.field public final programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

.field public final scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

.field public final scrollableState:Lcom/motorola/camera/fsm/Fsm;

.field public final settledPage$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public wasPrefetchingForward:Z


# direct methods
.method public constructor <init>(FI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentPageOffsetFraction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not within the range -0.5 to 0.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-direct {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    iput-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    invoke-direct {p1, p2, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;-><init>(III)V

    iput-object p1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    new-instance p1, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    sget-object v0, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    sget-object v1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    new-instance v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    sget-object p1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance p2, Landroidx/compose/foundation/pager/PagerState$targetPage$2;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$targetPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-static {p1, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->settledPage$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p2, Landroidx/compose/foundation/pager/PagerState$targetPage$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$targetPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-static {p1, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance p2, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$prefetchState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance p1, Landroidx/room/ObservedTableVersions;

    const/16 p2, 0x8

    invoke-direct {p1, p2, v0}, Landroidx/room/ObservedTableVersions;-><init>(IB)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;I)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    const/16 p1, 0xf

    invoke-static {p2, p2, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method

.method public static synthetic animateScrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$scroll$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    move-object p3, p2

    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v5, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, v3

    :goto_1
    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p3

    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    :cond_6
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iput-object v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/motorola/camera/fsm/Fsm;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    const/4 p1, -0x1

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    return-object v3
.end method

.method public static scrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scrollToPage$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/pager/PagerState$scrollToPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/pager/PagerState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final animateScrollToPage(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    const/4 v3, 0x0

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    iget-object p2, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Landroidx/compose/animation/core/SpringSpec;

    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object v7, p0

    move-object v10, p2

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p3

    if-ne p1, p3, :cond_5

    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p3, p3, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p3

    cmpg-float p3, p3, v3

    if-nez p3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p3

    if-nez p3, :cond_6

    goto :goto_5

    :cond_6
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Landroidx/compose/animation/core/SpringSpec;

    iput p1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    iput v6, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_1

    :cond_7
    move-object p3, v4

    :goto_1
    if-ne p3, v1, :cond_3

    goto :goto_4

    :goto_2
    float-to-double p2, v3

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    cmpg-double p0, v8, p2

    if-gtz p0, :cond_8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p2, v8

    if-gtz p0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "pageOffsetFraction "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is not within the range -0.5 to 0.5"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v7, p1}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result p0

    int-to-float p0, p0

    mul-float v9, v3, p0

    new-instance v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Landroidx/compose/animation/core/SpringSpec;

    iput v5, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    sget-object p0, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    invoke-virtual {v7, p0, v6, v0}, Landroidx/compose/foundation/pager/PagerState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    :goto_5
    return-object v4
.end method

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V
    .locals 9

    iget-object v0, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    iget v1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    if-nez p2, :cond_0

    iget-boolean v2, p0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    if-eqz v2, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iput-boolean v2, p0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget-object p2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    iget-object v5, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v6, v0, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v6, v3

    :goto_0
    iput-object v6, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    iget-boolean v6, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    iput-boolean v2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v0, :cond_5

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    iget-object v6, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v6, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v6, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    iget-object p2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    :cond_6
    iget p2, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    if-eqz p2, :cond_7

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p2, p2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    add-int/2addr p2, p3

    add-int/2addr p2, v2

    goto :goto_2

    :cond_7
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p2, p2, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, v2

    :goto_2
    iget p3, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    if-eq p3, p2, :cond_9

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_8
    iput-object v3, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_9
    :goto_3
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean p2, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    iget p3, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    iget-object v0, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_a

    iget p2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    goto :goto_4

    :cond_a
    move p2, v4

    :goto_4
    if-nez p2, :cond_c

    if-eqz p3, :cond_b

    goto :goto_5

    :cond_b
    move p2, v4

    goto :goto_6

    :cond_c
    :goto_5
    move p2, v2

    :goto_6
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    iget p2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    :cond_d
    iput p3, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    :cond_e
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3

    :try_start_0
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/16 v1, 0x20

    const-wide v5, 0xffffffffL

    if-lez v0, :cond_12

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    if-eqz v0, :cond_12

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v7

    iget-object v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v7, v8, :cond_f

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    neg-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpg-float v0, v0, v7

    if-nez v0, :cond_10

    goto :goto_7

    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v7

    shr-long/2addr v7, v1

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    neg-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpg-float v0, v0, v7

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->isNotGestureAction$foundation_release()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_7

    :cond_11
    move v2, v4

    :goto_7
    if-eqz v2, :cond_12

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/pager/PagerState;->notifyPrefetch(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_b

    :cond_12
    :goto_8
    invoke-static {p2, p3, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/foundation/pager/PagerStateKt;->calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    iget-object p2, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, p3, :cond_13

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide p2

    shr-long/2addr p2, v1

    :goto_9
    long-to-int p2, p2

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide p2

    and-long/2addr p2, v5

    goto :goto_9

    :goto_a
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v4, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    return-void

    :goto_b
    invoke-static {p2, p3, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method

.method public final coerceInPageRange(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, v1, p0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/Fsm;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getCurrentPage()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    return-object p0
.end method

.method public abstract getPageCount()I
.end method

.method public final getPageSize$foundation_release()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    return p0
.end method

.method public final getPageSizeWithSpacing$foundation_release()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr p0, v0

    return p0
.end method

.method public final getUpDownDifference-F1C5BW0$foundation_release()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-wide v0
.end method

.method public final isNotGestureAction$foundation_release()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-int p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final notifyPrefetch(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 7

    iget v0, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    iget-object v1, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    iget-boolean v2, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_6

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    if-eq v4, v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_3
    iput-boolean v2, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    iput v4, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-wide v5, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    invoke-virtual {v0, v4, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v1, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    iget v2, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr v1, v2

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v0, v1

    iget p2, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_6

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget p2, p2, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    neg-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_6

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final snapToItem$foundation_release(IFZ)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object v1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    iget-object p1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    if-eqz p3, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
