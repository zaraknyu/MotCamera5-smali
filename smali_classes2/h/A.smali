.class public final Lh/A;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/io/File;

.field public e:I

.field public final synthetic f:Lh/C;

.field public final synthetic g:Ljava/io/File;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic j:Ljava/io/File;


# direct methods
.method public constructor <init>(Lh/C;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lh/A;->f:Lh/C;

    iput-object p2, p0, Lh/A;->g:Ljava/io/File;

    iput-object p3, p0, Lh/A;->h:Ljava/lang/String;

    iput-object p4, p0, Lh/A;->j:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lh/A;

    iget-object v3, p0, Lh/A;->h:Ljava/lang/String;

    iget-object v4, p0, Lh/A;->j:Ljava/io/File;

    iget-object v1, p0, Lh/A;->f:Lh/C;

    iget-object v2, p0, Lh/A;->g:Ljava/io/File;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lh/A;-><init>(Lh/C;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lh/A;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lh/A;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lh/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lh/A;->f:Lh/C;

    iget-object v1, v0, Lh/C;->a:Lc/h;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lh/A;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lh/A;->c:Ljava/lang/Object;

    check-cast v0, Lg/a0;

    iget-object v1, p0, Lh/A;->b:Ljava/lang/Object;

    iget-object p0, p0, Lh/A;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lh/A;->d:Ljava/io/File;

    iget-object v1, p0, Lh/A;->c:Ljava/lang/Object;

    check-cast v1, Lh/C;

    iget-object v3, p0, Lh/A;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/AutoCloseable;

    iget-object v5, p0, Lh/A;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v1, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v3, La/s;

    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lh/A;->g:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v8, p0, Lh/A;->h:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, La/s;-><init>(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    iget-object v7, p0, Lh/A;->j:Ljava/io/File;

    :try_start_2
    new-instance v8, La/f;

    invoke-direct {v8, v1}, La/f;-><init>(Lc/h;)V

    iput-object p1, p0, Lh/A;->a:Ljava/lang/Object;

    iput-object v3, p0, Lh/A;->b:Ljava/lang/Object;

    iput-object v0, p0, Lh/A;->c:Ljava/lang/Object;

    iput-object v7, p0, Lh/A;->d:Ljava/io/File;

    iput v5, p0, Lh/A;->e:I

    invoke-virtual {v8, v3, p0}, La/f;->a(La/s;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    move-object v7, p1

    check-cast v7, La/c;

    instance-of v8, v7, La/b;

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    check-cast v7, La/b;

    iget-object v7, v7, La/b;->b:Lc/g;

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lg/a0;

    invoke-direct {v7}, Lg/a0;-><init>()V

    iput-object v3, p0, Lh/A;->a:Ljava/lang/Object;

    iput-object p1, p0, Lh/A;->b:Ljava/lang/Object;

    iput-object v7, p0, Lh/A;->c:Ljava/lang/Object;

    iput-object v6, p0, Lh/A;->d:Ljava/io/File;

    iput v4, p0, Lh/A;->e:I

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v8, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v9, Lh/z;

    invoke-direct {v9, v0, v5, v1, v6}, Lh/z;-><init>(Ljava/io/File;Ljava/util/List;Lh/C;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v4

    :goto_1
    if-ne p0, v2, :cond_5

    move-object v4, p0

    :cond_5
    if-ne v4, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    move-object v1, p1

    move-object p0, v3

    move-object v0, v7

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lg/a0;->b()J

    move-object p1, v1

    goto :goto_4

    :cond_7
    move-object p0, v3

    :goto_4
    check-cast p1, La/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0, v6}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_5
    move-object v3, p0

    move-object p0, p1

    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v3, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method
