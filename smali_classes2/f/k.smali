.class public final Lf/k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/lifecycle/Lifecycle;

.field public final synthetic c:Lf/v;

.field public final synthetic d:Lf/C;

.field public final synthetic e:Lf/u;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lf/k;->b:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lf/k;->c:Lf/v;

    iput-object p3, p0, Lf/k;->d:Lf/C;

    iput-object p4, p0, Lf/k;->e:Lf/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lf/k;

    iget-object v3, p0, Lf/k;->d:Lf/C;

    iget-object v4, p0, Lf/k;->e:Lf/u;

    iget-object v1, p0, Lf/k;->b:Landroidx/lifecycle/Lifecycle;

    iget-object v2, p0, Lf/k;->c:Lf/v;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lf/k;-><init>(Landroidx/lifecycle/Lifecycle;Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lf/k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lf/k;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lf/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lf/k;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    new-instance p1, Lf/j;

    iget-object v1, p0, Lf/k;->e:Lf/u;

    const/4 v3, 0x0

    iget-object v4, p0, Lf/k;->c:Lf/v;

    iget-object v5, p0, Lf/k;->d:Lf/C;

    invoke-direct {p1, v4, v5, v1, v3}, Lf/j;-><init>(Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lf/k;->a:I

    iget-object v1, p0, Lf/k;->b:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1, p1, p0}, Landroidx/lifecycle/LifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
