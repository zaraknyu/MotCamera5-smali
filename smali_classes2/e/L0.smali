.class public final Le/L0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Le/J0;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Le/J0;ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/L0;->b:Le/J0;

    iput p2, p0, Le/L0;->c:I

    iput-object p3, p0, Le/L0;->d:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Le/L0;

    iget v0, p0, Le/L0;->c:I

    iget-object v1, p0, Le/L0;->d:Landroidx/compose/animation/core/Animatable;

    iget-object p0, p0, Le/L0;->b:Le/J0;

    invoke-direct {p1, p0, v0, v1, p2}, Le/L0;-><init>(Le/J0;ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/L0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/L0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/L0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Le/L0;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Le/L0;->b:Le/J0;

    iget-object p1, p1, Le/J0;->m:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p1

    iget v1, p0, Le/L0;->c:I

    if-le p1, v1, :cond_4

    new-instance p1, Ljava/lang/Float;

    const/high16 v1, -0x3c4c0000    # -360.0f

    invoke-direct {p1, v1}, Ljava/lang/Float;-><init>(F)V

    iput v2, p0, Le/L0;->a:I

    iget-object v1, p0, Le/L0;->d:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v1, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/Float;

    const/4 p1, 0x0

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Landroidx/compose/animation/core/CubicBezierEasing;

    const v2, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v6, p1, v2, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/16 p1, 0x1f4

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    iput v3, p0, Le/L0;->a:I

    const/4 v7, 0x0

    const/16 v9, 0xc

    iget-object v4, p0, Le/L0;->d:Landroidx/compose/animation/core/Animatable;

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
