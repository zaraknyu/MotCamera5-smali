.class public final Le/V;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/V;->b:Landroidx/compose/runtime/State;

    iput-object p2, p0, Le/V;->c:Ljava/util/List;

    iput-object p3, p0, Le/V;->d:Landroidx/compose/animation/core/SpringSpec;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Le/V;

    iget-object v1, p0, Le/V;->c:Ljava/util/List;

    iget-object v2, p0, Le/V;->d:Landroidx/compose/animation/core/SpringSpec;

    iget-object p0, p0, Le/V;->b:Landroidx/compose/runtime/State;

    invoke-direct {v0, p0, v1, v2, p2}, Le/V;-><init>(Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Le/V;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/V;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/V;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Le/V;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Le/V;->b:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/o0;

    iget-boolean v2, v0, Le/o0;->b:Z

    iget-object v0, v0, Le/o0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x0

    if-ltz v1, :cond_0

    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v4, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object v3, p0, Le/V;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/Z;

    new-instance v1, Le/U;

    const/4 v7, 0x0

    iget-object v6, p0, Le/V;->d:Landroidx/compose/animation/core/SpringSpec;

    invoke-direct/range {v1 .. v7}, Le/U;-><init>(ZLe/Z;JLandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {p1, v9, v9, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move v1, v8

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v9

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
