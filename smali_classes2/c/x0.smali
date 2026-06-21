.class public final Lc/x0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/x0;->f:Lc/s1;

    iget-object v0, p1, Lc/s1;->F:Lc/j0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->m:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/N0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of p1, p2, Lc/v0;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lc/v0;

    iget v0, p1, Lc/v0;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lc/v0;->d:I

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    new-instance p1, Lc/v0;

    invoke-direct {p1, p0, p2}, Lc/v0;-><init>(Lc/x0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lc/v0;->b:Ljava/lang/Object;

    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    iget v0, v6, Lc/v0;->d:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object p0, v6, Lc/v0;->a:Lc/x0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object p0, v6, Lc/v0;->a:Lc/x0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lc/x0;->f:Lc/s1;

    invoke-virtual {p1}, Lc/s1;->u()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    .line 15
    :cond_6
    iput-object p0, v6, Lc/v0;->a:Lc/x0;

    iput v4, v6, Lc/v0;->d:I

    .line 16
    iget-object p1, p0, Lc/M0;->e:Lc/s1;

    .line 17
    iget-object p1, p1, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/P0;

    .line 19
    invoke-virtual {p0, p1, v6}, Lc/M0;->a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_7

    goto :goto_6

    .line 20
    :cond_7
    :goto_2
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_8

    return-object p1

    .line 21
    :cond_8
    iget-object v0, p0, Lc/x0;->f:Lc/s1;

    invoke-virtual {v0}, Lc/s1;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 22
    iget-object p1, v0, Lc/s1;->F:Lc/j0;

    .line 23
    iput-object p0, v6, Lc/v0;->a:Lc/x0;

    iput v3, v6, Lc/v0;->d:I

    .line 24
    invoke-virtual {p1, v4, v6}, Lc/j0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_9

    goto :goto_6

    .line 25
    :cond_9
    :goto_3
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lc/x0;->f:Lc/s1;

    .line 26
    iget-object v1, p1, Lc/N0;->a:Lc/P0;

    .line 27
    iget-object p0, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    .line 28
    iget-object v4, v0, Lc/s1;->O:Lc/x0;

    .line 29
    iput-object v5, v6, Lc/v0;->a:Lc/x0;

    iput v2, v6, Lc/v0;->d:I

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lc/s1;->a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_a

    goto :goto_6

    .line 31
    :cond_a
    :goto_4
    check-cast p1, Lc/N0;

    return-object p1

    :cond_b
    :goto_5
    return-object v5

    .line 32
    :cond_c
    invoke-virtual {v0}, Lc/s1;->m()Landroid/util/Size;

    move-result-object p0

    .line 33
    iget-object p1, v0, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/P0;

    .line 35
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 36
    iget-object v4, v0, Lc/s1;->O:Lc/x0;

    .line 37
    iput-object v5, v6, Lc/v0;->a:Lc/x0;

    iput v1, v6, Lc/v0;->d:I

    const/4 v5, 0x0

    move-object v1, p1

    .line 38
    invoke-virtual/range {v0 .. v6}, Lc/s1;->a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_d

    :goto_6
    return-object p2

    :cond_d
    return-object p0
.end method

.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of p1, p2, Lc/w0;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lc/w0;

    iget v0, p1, Lc/w0;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lc/w0;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Lc/w0;

    invoke-direct {p1, p0, p2}, Lc/w0;-><init>(Lc/x0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, p1, Lc/w0;->c:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    iget v1, p1, Lc/w0;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p1, Lc/w0;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p1, Lc/w0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p1, Lc/w0;->a:Ljava/lang/Object;

    check-cast v1, Lc/x0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lc/w0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p1, Lc/w0;->a:Ljava/lang/Object;

    check-cast v1, Lc/x0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    iput-object p0, p1, Lc/w0;->a:Ljava/lang/Object;

    iget-object p2, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p1, Lc/w0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, p1, Lc/w0;->e:I

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    :goto_1
    :try_start_2
    iput-object p0, p1, Lc/w0;->a:Ljava/lang/Object;

    iput-object p2, p1, Lc/w0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, p1, Lc/w0;->e:I

    invoke-static {p0, p1}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v1

    move-object v1, p0

    move-object p0, p2

    move-object p2, v6

    :goto_2
    :try_start_3
    check-cast p2, Lc/N0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_7

    .line 9
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 10
    :cond_7
    :try_start_4
    iput-object p0, p1, Lc/w0;->a:Ljava/lang/Object;

    iput-object v5, p1, Lc/w0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v2, p1, Lc/w0;->e:I

    .line 11
    invoke-virtual {v1, v5, p1}, Lc/x0;->a(Lc/N0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v0, :cond_8

    :goto_3
    return-object v0

    .line 12
    :cond_8
    :goto_4
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_5
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 5

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lc/P0;->a:Lc/a;

    .line 1
    iget-wide v1, p1, Lc/P0;->e:J

    iget-wide v3, p2, Lc/P0;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p1, Lc/P0;->a:Lc/a;

    .line 3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lc/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lc/x0;->f:Lc/s1;

    invoke-virtual {p0}, Lc/s1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    iget p0, p1, Lc/P0;->b:I

    iget p1, p2, Lc/P0;->b:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
