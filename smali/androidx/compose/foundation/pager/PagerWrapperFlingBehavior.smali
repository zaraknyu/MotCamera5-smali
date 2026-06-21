.class public final Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# instance fields
.field public final originalFlingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final pagerState:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->originalFlingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    return-void
.end method


# virtual methods
.method public final performFling(Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    iget v1, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->L$0:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p3, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    invoke-direct {p3, p0, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V

    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->L$0:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    iput v3, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->label:I

    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->originalFlingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-virtual {v2, p1, p2, p3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p2, v0, v2

    if-gez p2, :cond_6

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroidx/compose/foundation/pager/PagerState;->snapToItem$foundation_release(IFZ)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    :goto_3
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0
.end method
