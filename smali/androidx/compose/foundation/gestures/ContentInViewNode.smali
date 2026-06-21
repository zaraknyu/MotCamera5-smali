.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field public final bringIntoViewRequests:Lcom/google/android/gms/tasks/zzad;

.field public bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public childWasMaxVisibleBeforeViewportShrunk:Z

.field public focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

.field public isAnimationRunning:Z

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public reverseDirection:Z

.field public final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public trackingFocusedChild:Z

.field public viewportSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    new-instance p1, Lcom/google/android/gms/tasks/zzad;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/google/android/gms/tasks/zzad;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Lcom/google/android/gms/tasks/zzad;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    return-void
.end method

.method public static final access$calculateScrollDelta(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)F
    .locals 14

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Lcom/google/android/gms/tasks/zzad;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    array-length v3, v0

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    const/4 v7, 0x0

    if-ge v1, v3, :cond_5

    move-object v3, v7

    :goto_0
    if-ltz v1, :cond_6

    aget-object v8, v0, v1

    check-cast v8, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v8, v8, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    invoke-virtual {v8}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v9

    iget-wide v11, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v11

    iget-object v13, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_2

    if-ne v13, v2, :cond_1

    shr-long/2addr v9, v4

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    shr-long v10, v11, v4

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    and-long/2addr v9, v5

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    and-long v10, v11, v5

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    :goto_1
    if-gtz v9, :cond_3

    move-object v3, v8

    goto :goto_2

    :cond_3
    if-nez v3, :cond_6

    move-object v3, v8

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move-object v3, v7

    :cond_6
    :goto_3
    if-nez v3, :cond_9

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    :cond_7
    if-nez v7, :cond_8

    :goto_4
    const/4 p0, 0x0

    return p0

    :cond_8
    move-object v3, v7

    :cond_9
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_b

    if-ne p0, v2, :cond_a

    iget p0, v3, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v2, v3, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v2, p0

    shr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1, p0, v2, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    return p0

    :cond_a
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_b
    iget p0, v3, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v2, v3, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v2, p0

    and-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1, p0, v2, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long p2, p0, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final launchAnimation()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-eqz v1, :cond_1

    const-string v1, "launchAnimation called when previous animation was running"

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    sget-object v2, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultScrollAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v0, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v2, v5, v3, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 6

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    long-to-int p1, p1

    shr-long v4, v0, v2

    long-to-int p2, v4

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    and-long/2addr v4, v0

    long-to-int p2, v4

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->childWasMaxVisibleBeforeViewportShrunk:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J
    .locals 6

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr p1, p0

    shr-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-interface {v0, p0, p1, p2}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p0, v4

    and-long/2addr p2, v2

    :goto_0
    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_3
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr p1, p0

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-interface {v0, p0, p1, p2}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v4

    and-long p2, v0, v2

    goto :goto_0
.end method
