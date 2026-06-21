.class public final La/h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:La/i;

.field public final synthetic d:[B

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Lh/b;


# direct methods
.method public constructor <init>(La/i;[BIIIZLh/b;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, La/h;->c:La/i;

    iput-object p2, p0, La/h;->d:[B

    iput p3, p0, La/h;->e:I

    iput p4, p0, La/h;->f:I

    iput p5, p0, La/h;->g:I

    iput-boolean p6, p0, La/h;->h:Z

    iput-object p7, p0, La/h;->i:Lh/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, La/h;

    iget-boolean v6, p0, La/h;->h:Z

    iget-object v7, p0, La/h;->i:Lh/b;

    iget-object v1, p0, La/h;->c:La/i;

    iget-object v2, p0, La/h;->d:[B

    iget v3, p0, La/h;->e:I

    iget v4, p0, La/h;->f:I

    iget v5, p0, La/h;->g:I

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, La/h;-><init>(La/i;[BIIIZLh/b;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, La/h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, La/h;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, La/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, La/h;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, La/h;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, La/h;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, La/h;->c:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, La/h;->c:La/i;

    iget-object v4, p0, La/h;->d:[B

    iput-object v4, v1, La/i;->l:[B

    iget v4, p0, La/h;->e:I

    iput v4, v1, La/i;->m:I

    iget v4, p0, La/h;->f:I

    iput v4, v1, La/i;->n:I

    iget v4, p0, La/h;->g:I

    iput v4, v1, La/i;->o:I

    iget-boolean v4, p0, La/h;->h:Z

    iput-boolean v4, v1, La/i;->p:Z

    const-string v4, "off"

    iput-object v4, v1, La/i;->g:Ljava/lang/String;

    const/high16 v4, 0x42480000    # 50.0f

    iput v4, v1, La/i;->h:F

    sget-object v4, Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;->kDocSelectorTypeDocument:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iput-object v4, v1, La/i;->i:Lcom/adobe/magic_clean/CameraCleanUtils$DocSelectorType;

    iget-object v4, p0, La/h;->i:Lh/b;

    iput-object v4, v1, La/i;->j:Lh/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_1
    sget-object v1, Lb/o;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v4, La/g;

    iget-object v5, p0, La/h;->c:La/i;

    invoke-direct {v4, v5, v3}, La/g;-><init>(La/i;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, La/h;->b:Ljava/lang/Object;

    iput v2, p0, La/h;->a:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;

    iget-object v1, p0, La/h;->c:La/i;

    invoke-virtual {v1, v0, p1}, La/i;->a(Lkotlinx/coroutines/CoroutineScope;Lcom/adobe/magic_clean/CameraCleanLiveEdgeDetectionAndroidShim$CCameraCleanLiveBoundaryOutput;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, La/h;->c:La/i;

    iget-object v0, p0, La/h;->i:Lh/b;

    iget-object p0, p0, La/h;->d:[B

    monitor-enter p1

    :try_start_2
    iget-object v0, v0, Lh/b;->a:Lh/d;

    iget-object v0, v0, Lh/d;->d:La/f;

    invoke-virtual {v0, p0}, La/f;->a([B)V

    iput-object v3, p1, La/i;->l:[B

    iput-object v3, p1, La/i;->f:Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
