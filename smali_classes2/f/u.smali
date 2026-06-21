.class public final Lf/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf/v;

.field public final b:Landroidx/compose/foundation/pager/PagerState;

.field public final c:Landroidx/compose/foundation/pager/PagerState;

.field public d:Lf/D;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lf/v;Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/pager/DefaultPagerState;Lf/D;)V
    .locals 1

    const-string v0, "uiState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagePagerState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imagePagerState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/u;->a:Lf/v;

    iput-object p2, p0, Lf/u;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lf/u;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p4, p0, Lf/u;->d:Lf/D;

    new-instance p1, Lf/u$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf/u$$ExternalSyntheticLambda0;-><init>(Lf/u;I)V

    iput-object p1, p0, Lf/u;->e:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lf/u$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lf/u$$ExternalSyntheticLambda0;-><init>(Lf/u;I)V

    iput-object p1, p0, Lf/u;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final a(Lf/B;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lf/r;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf/r;

    iget v1, v0, Lf/r;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf/r;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf/r;

    invoke-direct {v0, p0, p2}, Lf/r;-><init>(Lf/u;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lf/r;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lf/r;->e:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v3

    :cond_3
    iget-object p1, v0, Lf/r;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lf/r;->a:Lf/u;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lf/u;->d:Lf/D;

    invoke-virtual {p1, p2}, Lf/B;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lf/u;->d:Lf/D;

    iget-object v2, p0, Lf/u;->a:Lf/v;

    invoke-virtual {v2, p2}, Lf/v;->a(Lf/D;)I

    move-result p2

    const/4 v7, -0x1

    if-eq p2, v7, :cond_6

    iget-object v2, v2, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lf/u;->c:Landroidx/compose/foundation/pager/PagerState;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lf/u;->b:Landroidx/compose/foundation/pager/PagerState;

    :goto_1
    iput-object p0, v0, Lf/r;->a:Lf/u;

    iput-object p1, v0, Lf/r;->b:Lkotlin/jvm/functions/Function1;

    iput v6, v0, Lf/r;->e:I

    invoke-static {v2, p2, v0}, Landroidx/compose/foundation/pager/PagerState;->scrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p2, p0, Lf/u;->a:Lf/v;

    iget-object p2, p2, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    new-instance p2, Lf/u$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {p2, p0, v4}, Lf/u$$ExternalSyntheticLambda2;-><init>(Lf/u;I)V

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v4, Lf/s;

    const/4 v6, 0x0

    invoke-direct {v4, v6, p0, p1}, Lf/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lf/r;->a:Lf/u;

    iput-object v2, v0, Lf/r;->b:Lkotlin/jvm/functions/Function1;

    iput v5, v0, Lf/r;->e:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_3

    :cond_7
    new-instance p2, Lf/u$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {p2, p0, v5}, Lf/u$$ExternalSyntheticLambda2;-><init>(Lf/u;I)V

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v5, Lf/s;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0, p1}, Lf/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lf/r;->a:Lf/u;

    iput-object v2, v0, Lf/r;->b:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Lf/r;->e:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    return-object v3
.end method
