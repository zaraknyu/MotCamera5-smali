.class public final Le/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lkotlinx/coroutines/DeferredCoroutine;

.field public final e:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(IIILkotlinx/coroutines/DeferredCoroutine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/s0;->a:I

    iput p2, p0, Le/s0;->b:I

    iput p3, p0, Le/s0;->c:I

    iput-object p4, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    iput-object p1, p0, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Le/q0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/q0;

    iget v1, v0, Le/q0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/q0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/q0;

    invoke-direct {v0, p0, p1}, Le/q0;-><init>(Le/s0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Le/q0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Le/q0;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Le/q0;->a:Le/s0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Le/q0;->a:Le/s0;

    iput v4, v0, Le/q0;->d:I

    iget-object p1, p0, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_6

    iput-object v2, v0, Le/q0;->a:Le/s0;

    iput v3, v0, Le/q0;->d:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    return-object v2
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Le/r0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/r0;

    iget v1, v0, Le/r0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/r0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/r0;

    invoke-direct {v0, p0, p1}, Le/r0;-><init>(Le/s0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Le/r0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Le/r0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/r0;->a:Le/s0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Le/r0;->a:Le/s0;

    iput v3, v0, Le/r0;->d:I

    iget-object p1, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Le/s0;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le/s0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Le/s0;

    iget v0, p0, Le/s0;->a:I

    iget v1, p1, Le/s0;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Le/s0;->b:I

    iget v1, p1, Le/s0;->b:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Le/s0;->c:I

    iget v1, p1, Le/s0;->c:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    iget-object p1, p1, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Le/s0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/s0;->b:I

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget v1, p0, Le/s0;->c:I

    invoke-static {v1, v0}, La/l;->a(II)I

    move-result v0

    iget-object p0, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageRequestImpl(priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le/s0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/s0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/s0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deferredJob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le/s0;->d:Lkotlinx/coroutines/DeferredCoroutine;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
