.class public final Lf/j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lf/v;

.field public final synthetic d:Lf/C;

.field public final synthetic e:Lf/u;


# direct methods
.method public constructor <init>(Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lf/j;->c:Lf/v;

    iput-object p2, p0, Lf/j;->d:Lf/C;

    iput-object p3, p0, Lf/j;->e:Lf/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lf/j;

    iget-object v1, p0, Lf/j;->d:Lf/C;

    iget-object v2, p0, Lf/j;->e:Lf/u;

    iget-object p0, p0, Lf/j;->c:Lf/v;

    invoke-direct {v0, p0, v1, v2, p2}, Lf/j;-><init>(Lf/v;Lf/C;Lf/u;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lf/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lf/j;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lf/j;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lf/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lf/j;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/j;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lf/j;->c:Lf/v;

    iget-object v1, v1, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v3, Lf/i;

    iget-object v4, p0, Lf/j;->d:Lf/C;

    iget-object v5, p0, Lf/j;->e:Lf/u;

    invoke-direct {v3, p1, v4, v5}, Lf/i;-><init>(Lkotlinx/coroutines/CoroutineScope;Lf/C;Lf/u;)V

    iput v2, p0, Lf/j;->a:I

    invoke-virtual {v1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-object v0
.end method
