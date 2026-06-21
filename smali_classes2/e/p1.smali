.class public final Le/p1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Le/n1;

.field public final synthetic d:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Le/n1;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/p1;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Le/p1;->c:Le/n1;

    iput-object p3, p0, Le/p1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Le/p1;

    iget-object v0, p0, Le/p1;->c:Le/n1;

    iget-object v1, p0, Le/p1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object p0, p0, Le/p1;->b:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, p0, v0, v1, p2}, Le/p1;-><init>(Landroidx/compose/runtime/MutableState;Le/n1;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/p1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/p1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Le/p1;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Le/p1;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Velocity;

    iget-wide v4, v4, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Velocity;

    iget-wide v4, v4, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v4

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Velocity;

    iget-wide v8, v2, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v8, v2

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v4, v8

    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-wide v6, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v13, Landroidx/compose/animation/core/Animatable;

    new-instance v9, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v9, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    sget-object v6, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 v7, 0x0

    const/16 v12, 0xc

    invoke-direct {v13, v9, v6, v7, v12}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    new-instance v14, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v14, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    new-instance v7, Landroidx/compose/animation/FlingCalculator;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroidx/compose/animation/FlingCalculator;-><init>(I)V

    new-instance v9, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-direct {v9, v7}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V

    new-instance v7, Le/D$$ExternalSyntheticLambda0;

    const/4 v12, 0x2

    iget-object v15, v0, Le/p1;->c:Le/n1;

    move/from16 p1, v2

    iget-object v2, v0, Le/p1;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-direct {v7, v8, v15, v2, v12}, Le/D$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v3, v0, Le/p1;->a:I

    invoke-virtual {v13}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Landroidx/compose/animation/core/AnimationVector2D;

    move-wide v15, v10

    shr-long v10, v4, p1

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    and-long/2addr v4, v15

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-direct {v3, v8, v4}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    new-instance v15, Landroidx/compose/animation/core/DecayAnimation;

    invoke-direct {v15, v9, v6, v2, v3}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v2, v13, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    iget-wide v2, v2, Landroidx/compose/animation/core/AnimationState;->lastFrameTimeNanos:J

    new-instance v12, Landroidx/compose/animation/core/Animatable$runAnimation$2;

    const/16 v19, 0x0

    move-wide/from16 v16, v2

    move-object/from16 v18, v7

    invoke-direct/range {v12 .. v19}, Landroidx/compose/animation/core/Animatable$runAnimation$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iget-object v2, v13, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    invoke-static {v2, v12, v0}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
