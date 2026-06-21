.class public final Le/U;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Le/Z;

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method public constructor <init>(ZLe/Z;JLandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Le/U;->b:Z

    iput-object p2, p0, Le/U;->c:Le/Z;

    iput-wide p3, p0, Le/U;->d:J

    iput-object p5, p0, Le/U;->e:Landroidx/compose/animation/core/SpringSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Le/U;

    iget-wide v3, p0, Le/U;->d:J

    iget-object v5, p0, Le/U;->e:Landroidx/compose/animation/core/SpringSpec;

    iget-boolean v1, p0, Le/U;->b:Z

    iget-object v2, p0, Le/U;->c:Le/Z;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/U;-><init>(ZLe/Z;JLandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/U;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/U;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/U;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Le/U;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/U;->b:Z

    iget-wide v4, p0, Le/U;->d:J

    iget-object v1, p0, Le/U;->c:Le/Z;

    if-eqz p1, :cond_3

    iget-object v6, v1, Le/Z;->a:Landroidx/compose/animation/core/Animatable;

    new-instance v7, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iput v3, p0, Le/U;->a:I

    const/4 v9, 0x0

    const/16 v11, 0xc

    iget-object v8, p0, Le/U;->e:Landroidx/compose/animation/core/SpringSpec;

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_3
    move-object v10, p0

    iget-object p0, v1, Le/Z;->a:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p1, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iput v2, v10, Le/U;->a:I

    invoke-virtual {p0, p1, v10}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
