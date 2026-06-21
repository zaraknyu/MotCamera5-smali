.class public final Landroidx/compose/animation/core/Animatable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final internalState:Landroidx/compose/animation/core/AnimationState;

.field public final isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

.field public final mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

.field public final negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

.field public final positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

.field public final targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public final upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

.field public final visibilityThreshold:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 3
    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->visibilityThreshold:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-direct {v0, p2, p1, v1, v2}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;I)V

    iput-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 6
    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 7
    new-instance p1, Landroidx/compose/animation/core/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/animation/core/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 8
    new-instance p1, Landroidx/compose/animation/core/SpringSpec;

    const/high16 p2, 0x3f800000    # 1.0f

    const v1, 0x44bb8000    # 1500.0f

    .line 9
    invoke-direct {p1, p2, v1, p3}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    .line 10
    iget-object p1, v0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 11
    instance-of p2, p1, Landroidx/compose/animation/core/AnimationVector1D;

    if-eqz p2, :cond_0

    sget-object p3, Landroidx/compose/animation/core/ArcSplineKt;->negativeInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

    goto :goto_0

    .line 12
    :cond_0
    instance-of p3, p1, Landroidx/compose/animation/core/AnimationVector2D;

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/compose/animation/core/ArcSplineKt;->negativeInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

    goto :goto_0

    .line 13
    :cond_1
    instance-of p3, p1, Landroidx/compose/animation/core/AnimationVector3D;

    if-eqz p3, :cond_2

    sget-object p3, Landroidx/compose/animation/core/ArcSplineKt;->negativeInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Landroidx/compose/animation/core/ArcSplineKt;->negativeInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;

    .line 15
    :goto_0
    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    if-eqz p2, :cond_3

    .line 16
    sget-object p1, Landroidx/compose/animation/core/ArcSplineKt;->positiveInfinityBounds1D:Landroidx/compose/animation/core/AnimationVector1D;

    goto :goto_1

    .line 17
    :cond_3
    instance-of p2, p1, Landroidx/compose/animation/core/AnimationVector2D;

    if-eqz p2, :cond_4

    sget-object p1, Landroidx/compose/animation/core/ArcSplineKt;->positiveInfinityBounds2D:Landroidx/compose/animation/core/AnimationVector2D;

    goto :goto_1

    .line 18
    :cond_4
    instance-of p1, p1, Landroidx/compose/animation/core/AnimationVector3D;

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/animation/core/ArcSplineKt;->positiveInfinityBounds3D:Landroidx/compose/animation/core/AnimationVector3D;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p1, Landroidx/compose/animation/core/ArcSplineKt;->positiveInfinityBounds4D:Landroidx/compose/animation/core/AnimationVector4D;

    .line 20
    :goto_1
    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    .line 21
    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 22
    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public static final access$clampToBounds(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v2, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v3, p0, Landroidx/compose/animation/core/Animatable;->negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v6

    invoke-virtual {v2, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    invoke-virtual {p0, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v5

    invoke-virtual {v2, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v7

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    invoke-virtual {p0, v5, v4}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(FI)V

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget-object p1, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final access$endAnimation(Landroidx/compose/animation/core/Animatable;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object v1, v0, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->reset$animation_core_release()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v9, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    new-instance v3, Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v0, v9, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/compose/animation/core/AnimationVector;

    move-object v11, p1

    move-object v8, p2

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-wide v4, v0, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    iget-object v8, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    new-instance v0, Landroidx/compose/animation/core/Animatable$runAnimation$2;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable$runAnimation$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    move-object/from16 v0, p4

    invoke-static {v8, v1, v0}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final snapTo(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/Animatable$snapTo$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/animation/core/Animatable$snapTo$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    invoke-static {p0, v0, p2}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final stop(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/Animatable$stop$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/animation/core/Animatable$stop$2;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    invoke-static {p0, v0, p1}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
