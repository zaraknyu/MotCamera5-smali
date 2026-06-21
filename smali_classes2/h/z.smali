.class public final Lh/z;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lh/C;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;Lh/C;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lh/z;->d:Ljava/io/File;

    iput-object p2, p0, Lh/z;->e:Ljava/util/List;

    iput-object p3, p0, Lh/z;->f:Lh/C;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lh/z;

    iget-object v0, p0, Lh/z;->e:Ljava/util/List;

    iget-object v1, p0, Lh/z;->f:Lh/C;

    iget-object p0, p0, Lh/z;->d:Ljava/io/File;

    invoke-direct {p1, p0, v0, v1, p2}, Lh/z;-><init>(Ljava/io/File;Ljava/util/List;Lh/C;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lh/z;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lh/z;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lh/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lh/z;->c:I

    iget-object v2, p0, Lh/z;->e:Ljava/util/List;

    iget-object v6, p0, Lh/z;->d:Ljava/io/File;

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_0

    iget v3, p0, Lh/z;->b:I

    iget v4, p0, Lh/z;->a:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, p0

    :goto_0
    move p1, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p0

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v6}, Lg/x;->a(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, p1, :cond_4

    :try_start_1
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lc/X;

    iget-object v3, p0, Lh/z;->f:Lh/C;

    add-int/lit8 v0, v10, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput v10, p0, Lh/z;->a:I

    iput p1, p0, Lh/z;->b:I

    iput v9, p0, Lh/z;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, 0x1

    move-object v8, p0

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lh/C;->a(Lc/X;ZLjava/io/File;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move v4, v10

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    move-object p0, v0

    move v3, p1

    move v4, v10

    move-object p1, p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v8, p0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_4
    add-int/lit8 v10, v4, 0x1

    move-object p0, v8

    goto :goto_1

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
