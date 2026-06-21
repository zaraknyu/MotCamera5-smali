.class public final Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public final synthetic $targetPage:I

.field public final synthetic $targetPageOffsetToSnappedPosition:F

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    iput p3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    iget v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iget v2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/ScrollScope;

    new-instance v5, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {v5, v2, v6}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/pager/PagerState;)V

    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->label:I

    sget v2, Landroidx/compose/foundation/pager/PagerStateKt;->DefaultPositionThreshold:F

    new-instance v2, Ljava/lang/Integer;

    iget v7, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v2

    iget-object v8, v6, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget v2, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v8

    :goto_0
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v9, v9, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    iget v10, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v4

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v10

    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-gt v7, v10, :cond_4

    :cond_3
    if-nez v2, :cond_8

    iget v10, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    if-ge v7, v10, :cond_8

    :cond_4
    iget v10, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    sub-int v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    if-eqz v2, :cond_6

    sub-int v2, v7, v9

    iget v9, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    if-ge v2, v9, :cond_7

    :cond_5
    move v2, v9

    goto :goto_1

    :cond_6
    add-int/2addr v9, v7

    iget v2, v6, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    if-le v9, v2, :cond_5

    :cond_7
    :goto_1
    int-to-float v9, v8

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v6, v2, v9, v4}, Landroidx/compose/foundation/pager/PagerState;->snapToItem$foundation_release(IFZ)V

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    sub-int/2addr v7, v2

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v2

    mul-int/2addr v2, v7

    int-to-float v2, v2

    iget-object v4, v6, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v4, v4, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v4

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    sub-float/2addr v2, v4

    int-to-float v4, v8

    add-float/2addr v2, v4

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-static {v6}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    move-result-wide v7

    int-to-long v9, v2

    add-long v11, v7, v9

    iget-wide v13, v6, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    iget-wide v7, v6, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    move-wide v15, v7

    invoke-static/range {v11 .. v16}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v7

    invoke-static {v6}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v2, v7

    int-to-float v2, v2

    iget v4, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    add-float/2addr v2, v4

    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/4 v7, 0x7

    invoke-direct {v6, v7, v4, v5}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    invoke-static {v2, v5, v6, v0, v4}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    move-object v0, v3

    :goto_2
    if-ne v0, v1, :cond_a

    return-object v1

    :cond_a
    return-object v3
.end method
