.class public final Lc/u0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/u0;->f:Lc/s1;

    iget-object v0, p1, Lc/s1;->M:Lc/d0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->l:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/N0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lc/s0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/s0;

    iget v1, v0, Lc/s0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/s0;->e:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lc/s0;

    invoke-direct {v0, p0, p2}, Lc/s0;-><init>(Lc/u0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p2, v7, Lc/s0;->c:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    iget v1, v7, Lc/s0;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p0, v7, Lc/s0;->a:Lc/u0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object p1, v7, Lc/s0;->b:Lc/N0;

    iget-object p0, v7, Lc/s0;->a:Lc/u0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iget-object p2, p0, Lc/u0;->f:Lc/s1;

    invoke-virtual {p2}, Lc/s1;->u()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_5

    .line 17
    :cond_6
    iput-object p0, v7, Lc/s0;->a:Lc/u0;

    iput-object p1, v7, Lc/s0;->b:Lc/N0;

    iput v5, v7, Lc/s0;->e:I

    .line 18
    iget-object p2, p0, Lc/M0;->e:Lc/s1;

    .line 19
    iget-object p2, p2, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/P0;

    .line 21
    invoke-virtual {p0, p2, v7}, Lc/M0;->a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_7

    goto :goto_6

    .line 22
    :cond_7
    :goto_2
    check-cast p2, Lc/N0;

    if-eqz p2, :cond_8

    return-object p2

    .line 23
    :cond_8
    iget-object v1, p0, Lc/u0;->f:Lc/s1;

    invoke-virtual {v1}, Lc/s1;->b()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez p1, :cond_a

    .line 24
    iget-object p1, v1, Lc/s1;->M:Lc/d0;

    .line 25
    iput-object p0, v7, Lc/s0;->a:Lc/u0;

    iput-object v6, v7, Lc/s0;->b:Lc/N0;

    iput v4, v7, Lc/s0;->e:I

    .line 26
    invoke-virtual {p1, v5, v7}, Lc/d0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_9

    goto :goto_6

    .line 27
    :cond_9
    :goto_3
    move-object p1, p2

    check-cast p1, Lc/N0;

    :cond_a
    if-eqz p1, :cond_c

    iget-object v1, p0, Lc/u0;->f:Lc/s1;

    .line 28
    iget-object v2, p1, Lc/N0;->a:Lc/P0;

    .line 29
    iget-object p0, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    .line 30
    iget-object v5, v1, Lc/s1;->N:Lc/u0;

    .line 31
    iput-object v6, v7, Lc/s0;->a:Lc/u0;

    iput-object v6, v7, Lc/s0;->b:Lc/N0;

    iput v3, v7, Lc/s0;->e:I

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lc/s1;->a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_b

    goto :goto_6

    .line 33
    :cond_b
    :goto_4
    check-cast p2, Lc/N0;

    return-object p2

    :cond_c
    :goto_5
    return-object v6

    .line 34
    :cond_d
    invoke-virtual {v1}, Lc/s1;->m()Landroid/util/Size;

    move-result-object p0

    .line 35
    iget-object p1, v1, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/P0;

    .line 37
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 38
    iget-object v5, v1, Lc/s1;->N:Lc/u0;

    .line 39
    iput-object v6, v7, Lc/s0;->a:Lc/u0;

    iput-object v6, v7, Lc/s0;->b:Lc/N0;

    iput v2, v7, Lc/s0;->e:I

    const/4 v6, 0x0

    move-object v2, p1

    .line 40
    invoke-virtual/range {v1 .. v7}, Lc/s1;->a(Lc/P0;IILc/M0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    :goto_6
    return-object v0

    :cond_e
    return-object p0
.end method

.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of p1, p2, Lc/t0;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lc/t0;

    iget v0, p1, Lc/t0;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lc/t0;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Lc/t0;

    invoke-direct {p1, p0, p2}, Lc/t0;-><init>(Lc/u0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, p1, Lc/t0;->c:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    iget v1, p1, Lc/t0;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p1, Lc/t0;->a:Ljava/lang/Object;

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
    iget-object p0, p1, Lc/t0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p1, Lc/t0;->a:Ljava/lang/Object;

    check-cast v1, Lc/u0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lc/t0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p1, Lc/t0;->a:Ljava/lang/Object;

    check-cast v1, Lc/u0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    iput-object p0, p1, Lc/t0;->a:Ljava/lang/Object;

    iget-object p2, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p1, Lc/t0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, p1, Lc/t0;->e:I

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    :goto_1
    :try_start_2
    iput-object p0, p1, Lc/t0;->a:Ljava/lang/Object;

    iput-object p2, p1, Lc/t0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, p1, Lc/t0;->e:I

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

    .line 11
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 12
    :cond_7
    :try_start_4
    iput-object p0, p1, Lc/t0;->a:Ljava/lang/Object;

    iput-object v5, p1, Lc/t0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v2, p1, Lc/t0;->e:I

    .line 13
    invoke-virtual {v1, v5, p1}, Lc/u0;->a(Lc/N0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v0, :cond_8

    :goto_3
    return-object v0

    .line 14
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

    iget-object p0, p0, Lc/u0;->f:Lc/s1;

    invoke-virtual {p0}, Lc/s1;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    iget p0, p1, Lc/P0;->b:I

    iget v0, p2, Lc/P0;->b:I

    if-ne p0, v0, :cond_1

    .line 6
    :cond_0
    iget p0, p1, Lc/P0;->c:I

    iget v0, p2, Lc/P0;->c:I

    if-ne p0, v0, :cond_1

    .line 7
    iget p0, p1, Lc/P0;->d:I

    iget p1, p2, Lc/P0;->d:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
