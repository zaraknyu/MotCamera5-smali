.class public final Le/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/Q;


# instance fields
.field public final a:I

.field public final b:Le/A0;

.field public c:I


# direct methods
.method public constructor <init>(Le/A0;I)V
    .locals 1

    const-string v0, "imageExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le/F0;->a:I

    iput-object p1, p0, Le/F0;->b:Le/A0;

    return-void
.end method


# virtual methods
.method public final a(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 7

    .line 2
    iget v3, p0, Le/F0;->c:I

    new-instance v5, Le/B0;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {v5, v1, p1, v0}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p1, Le/A0;->f:Le/p0;

    .line 3
    iget-object v4, p0, Le/F0;->b:Le/A0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 5
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 6
    new-instance v0, Le/v0;

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v2, p0, Le/F0;->a:I

    invoke-direct/range {v0 .. v6}, Le/v0;-><init>(Lf/B;IILe/A0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/F0;->c:I

    return-void
.end method

.method public final b(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/s1;

    iget-object v3, v2, Lc/s1;->W:Lc/f0;

    iget-object v4, v3, Lc/M0;->e:Lc/s1;

    iget-object v4, v4, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/P0;

    const-string v5, "state"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v3, Lc/M0;->d:Lc/P0;

    invoke-virtual {v3, v6, v4}, Lc/f0;->a(Lc/P0;Lc/P0;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lc/M0;->a:Lc/G;

    invoke-virtual {v3}, Lc/G;->g()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lc/s1;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lc/s1;->N:Lc/u0;

    iget-object v3, v2, Lc/M0;->e:Lc/s1;

    iget-object v3, v3, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/P0;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lc/M0;->d:Lc/P0;

    invoke-virtual {v2, v4, v3}, Lc/u0;->a(Lc/P0;Lc/P0;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lc/M0;->a:Lc/G;

    invoke-virtual {v2}, Lc/G;->g()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, p1

    move-object v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v3, Lf/B;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x1

    const-class v6, Lc/X;

    const-string v7, "getCachedIndividualProcessedScreenResBitmapWithEraser"

    const-string v8, "getCachedIndividualProcessedScreenResBitmapWithEraser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v9, 0x0

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    :goto_2
    iget v7, p0, Le/F0;->c:I

    new-instance v9, Le/B0;

    const/4 p1, 0x1

    invoke-direct {v9, p1, v5, v1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    iget-object v8, p0, Le/F0;->b:Le/A0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Le/v0;

    const/4 v10, 0x0

    iget v6, p0, Le/F0;->a:I

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Le/v0;-><init>(Lf/B;IILe/A0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v4, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 7

    iget v3, p0, Le/F0;->c:I

    new-instance v5, Le/B0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v5, v1, p1, v0}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p1, Le/A0;->f:Le/p0;

    iget-object v4, p0, Le/F0;->b:Le/A0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Le/v0;

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v2, p0, Le/F0;->a:I

    invoke-direct/range {v0 .. v6}, Le/v0;-><init>(Lf/B;IILe/A0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
