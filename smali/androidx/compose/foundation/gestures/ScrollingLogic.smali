.class public final Landroidx/compose/foundation/gestures/ScrollingLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public isFlinging:Z

.field public final isScrollableNodeAttached:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

.field public latestScrollSource:I

.field public nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public final nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

.field public overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final performScrollForOverscroll:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

.field public reverseDirection:Z

.field public scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->isScrollableNodeAttached:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableKt;->NoOpScrollScope:Landroidx/compose/foundation/gestures/ScrollableKt$NoOpScrollScope$1;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    new-instance p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    new-instance p1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScrollForOverscroll:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    return-void
.end method

.method public static final access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J
    .locals 14

    move-wide/from16 v0, p2

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object v2, v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->nestedScrollNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-wide/16 v4, 0x0

    move/from16 v7, p4

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7, v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->onPreScroll-OzD1aCk(IJ)J

    move-result-wide v8

    move-wide v12, v8

    goto :goto_1

    :cond_1
    move-wide v12, v4

    :goto_1
    invoke-static {v0, v1, v12, v13}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(IJ)J

    move-result-wide v8

    goto :goto_3

    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    :goto_3
    invoke-virtual {p0, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v2

    invoke-interface {p1, v2}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v10

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->nestedScrollNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    :cond_3
    move-object v6, v3

    if-eqz v6, :cond_4

    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->onPostScroll-DzOQY0M(IJJ)J

    move-result-wide v4

    :cond_4
    invoke-static {v12, v13, v8, v9}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final doFlingAnimation-QWom1Mo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$1:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iput-boolean v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->isFlinging:Z

    sget-object p3, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    new-instance v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;

    const/4 v9, 0x0

    move-object v5, p0

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/coroutines/Continuation;)V

    iput-object v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->L$1:Lkotlin/jvm/internal/Ref$LongRef;

    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->label:I

    invoke-virtual {v5, p3, v4, v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, v5

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->isFlinging:Z

    iget-wide p0, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p2
.end method

.method public final reverseIfNeeded(F)F
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final reverseIfNeeded-MK-Hz9U(J)J
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollingLogic$scroll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic$scroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, p1, v1, p3}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final toFloat-k-4lQ0M(J)F
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    :goto_0
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    goto :goto_0
.end method

.method public final toOffset-tuRUvjQ(F)J
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-ne p0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, v4

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, v4

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
