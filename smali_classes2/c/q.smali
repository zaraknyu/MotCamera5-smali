.class public final Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public static final c:Lkotlinx/coroutines/sync/SemaphoreImpl;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lc/q;->b:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;-><init>(II)V

    sput-object v0, Lc/q;->c:Lkotlinx/coroutines/sync/SemaphoreImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/q;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final a(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lc/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/j;

    iget v1, v0, Lc/j;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/j;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/j;

    invoke-direct {v0, p0, p1}, Lc/j;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lc/j;->a:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget p1, v0, Lc/j;->c:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final a(Lc/q;Lc/X;ZLjava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    move-object/from16 v0, p5

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v1, v0, Lc/m;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lc/m;

    iget v2, v1, Lc/m;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lc/m;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lc/m;

    invoke-direct {v1, p0, v0}, Lc/m;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lc/m;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    iget v3, v1, Lc/m;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-boolean p0, v1, Lc/m;->e:Z

    iget p1, v1, Lc/m;->f:I

    iget-boolean p2, v1, Lc/m;->d:Z

    iget-boolean p3, v1, Lc/m;->c:Z

    iget-object v3, v1, Lc/m;->b:Ljava/util/Iterator;

    iget-object v6, v1, Lc/m;->a:Lc/q;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, p0

    move v10, p2

    move v8, p3

    move-object v11, v1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 20
    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 21
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p0

    move-object v3, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move-object v11, v1

    move p1, v4

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lc/s1;

    .line 23
    iput-object v6, v11, Lc/m;->a:Lc/q;

    iput-object v3, v11, Lc/m;->b:Ljava/util/Iterator;

    iput-boolean v8, v11, Lc/m;->c:Z

    iput-boolean v10, v11, Lc/m;->d:Z

    iput p1, v11, Lc/m;->f:I

    iput-boolean v9, v11, Lc/m;->e:Z

    iput v5, v11, Lc/m;->i:I

    invoke-virtual/range {v6 .. v11}, Lc/q;->a(Lc/s1;ZZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    move p1, v5

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    move v4, v5

    .line 24
    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lc/q;Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p3, Lc/k;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc/k;

    iget v1, v0, Lc/k;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/k;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/k;

    invoke-direct {v0, p0, p3}, Lc/k;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lc/k;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 9
    iget v2, v0, Lc/k;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p0, v0, Lc/k;->c:Z

    iget-object p1, v0, Lc/k;->b:Ljava/util/Iterator;

    iget-object p2, v0, Lc/k;->a:Lc/q;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p2

    move p2, p0

    move-object p0, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/s1;

    .line 14
    iput-object p0, v0, Lc/k;->a:Lc/q;

    iput-object p1, v0, Lc/k;->b:Ljava/util/Iterator;

    iput-boolean p2, v0, Lc/k;->c:Z

    iput v3, v0, Lc/k;->f:I

    invoke-virtual {p0, p3, p2, v0}, Lc/q;->b(Lc/s1;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 15
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/s1;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lc/i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc/i;

    iget v1, v0, Lc/i;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/i;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/i;

    invoke-direct {v0, p0, p3}, Lc/i;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lc/i;->a:Ljava/lang/Object;

    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    iget v1, v0, Lc/i;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object p0, p1, Lc/s1;->F:Lc/j0;

    iget-object v1, p1, Lc/s1;->C:Lc/r0;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v1}, Lc/M0;->a(Lc/M0;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    iput v3, v0, Lc/i;->c:I

    invoke-virtual {v1, v0}, Lc/M0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_4

    goto :goto_2

    .line 49
    :cond_4
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-nez p2, :cond_7

    .line 50
    invoke-virtual {p1}, Lc/s1;->u()Z

    move-result p1

    if-nez p1, :cond_7

    .line 51
    invoke-static {p0}, Lc/M0;->a(Lc/M0;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 52
    iput v2, v0, Lc/i;->c:I

    invoke-virtual {p0, v0}, Lc/M0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_6

    :goto_2
    return-object p3

    .line 53
    :cond_6
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 54
    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(Lc/s1;ZZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p5, Lc/n;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lc/n;

    iget v1, v0, Lc/n;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/n;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/n;

    invoke-direct {v0, p0, p5}, Lc/n;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v0, Lc/n;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    iget v2, v0, Lc/n;->g:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p5

    :pswitch_1
    iget-boolean p0, v0, Lc/n;->c:Z

    iget-object p1, v0, Lc/n;->b:Lc/s1;

    iget-object p2, v0, Lc/n;->a:Ljava/lang/Object;

    check-cast p2, Lc/q;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-boolean p3, v0, Lc/n;->d:Z

    iget-boolean p2, v0, Lc/n;->c:Z

    iget-object p1, v0, Lc/n;->b:Lc/s1;

    iget-object p0, v0, Lc/n;->a:Ljava/lang/Object;

    check-cast p0, Lc/q;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-object p0, v0, Lc/n;->a:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lc/s1;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object p5, p1, Lc/s1;->T:Lc/D0;

    .line 27
    invoke-static {p5}, Lc/M0;->a(Lc/M0;)Z

    move-result p5

    if-nez p5, :cond_4

    .line 28
    iget-object p0, p1, Lc/s1;->F:Lc/j0;

    .line 29
    iput-object p1, v0, Lc/n;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, v0, Lc/n;->g:I

    invoke-virtual {p0, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 30
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 31
    :cond_2
    iget-object p0, p1, Lc/s1;->T:Lc/D0;

    .line 32
    iput-object v3, v0, Lc/n;->a:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lc/n;->g:I

    invoke-virtual {p0, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_6

    .line 33
    :cond_3
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    if-nez p4, :cond_6

    .line 34
    iget-object p4, p1, Lc/s1;->X:Lc/g1;

    .line 35
    iput-object p0, v0, Lc/n;->a:Ljava/lang/Object;

    iput-object p1, v0, Lc/n;->b:Lc/s1;

    iput-boolean p2, v0, Lc/n;->c:Z

    iput-boolean p3, v0, Lc/n;->d:Z

    const/4 p5, 0x3

    iput p5, v0, Lc/n;->g:I

    invoke-virtual {p4, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_3
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 36
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    if-eqz p2, :cond_7

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iput-object v3, v0, Lc/n;->a:Ljava/lang/Object;

    iput-object v3, v0, Lc/n;->b:Lc/s1;

    const/4 p0, 0x4

    iput p0, v0, Lc/n;->g:I

    invoke-virtual {p1, v0}, Lc/s1;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 39
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 40
    :cond_7
    iget-object p2, p1, Lc/s1;->W:Lc/f0;

    .line 41
    iput-object p0, v0, Lc/n;->a:Ljava/lang/Object;

    iput-object p1, v0, Lc/n;->b:Lc/s1;

    iput-boolean p3, v0, Lc/n;->c:Z

    const/4 p4, 0x5

    iput p4, v0, Lc/n;->g:I

    invoke-virtual {p2, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_8

    goto :goto_6

    :cond_8
    move-object p2, p0

    move p0, p3

    :goto_5
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 42
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 43
    :cond_9
    iput-object v3, v0, Lc/n;->a:Ljava/lang/Object;

    iput-object v3, v0, Lc/n;->b:Lc/s1;

    const/4 p3, 0x6

    iput p3, v0, Lc/n;->g:I

    invoke-virtual {p2, p1, p0, v0}, Lc/q;->a(Lc/s1;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_6
    return-object v1

    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc/s1;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lc/l;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc/l;

    iget v1, v0, Lc/l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/l;

    invoke-direct {v0, p0, p3}, Lc/l;-><init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lc/l;->c:Ljava/lang/Object;

    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lc/l;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p2, v0, Lc/l;->b:Z

    iget-object p1, v0, Lc/l;->a:Lc/s1;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p1, Lc/s1;->W:Lc/f0;

    iput-object p1, v0, Lc/l;->a:Lc/s1;

    iput-boolean p2, v0, Lc/l;->b:Z

    iput v3, v0, Lc/l;->e:I

    invoke-virtual {p0, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-nez p2, :cond_7

    iget-object p0, p1, Lc/s1;->X:Lc/g1;

    const/4 p1, 0x0

    iput-object p1, v0, Lc/l;->a:Lc/s1;

    iput v2, v0, Lc/l;->e:I

    invoke-virtual {p0, v0}, Lc/M0;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_6

    :goto_2
    return-object p3

    :cond_6
    :goto_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
