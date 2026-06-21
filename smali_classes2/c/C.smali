.class public final Lc/C;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lc/G;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lc/G;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/C;->b:Lc/G;

    iput-object p2, p0, Lc/C;->c:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lc/C;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lc/C;

    iget-object v0, p0, Lc/C;->c:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lc/C;->d:Z

    iget-object p0, p0, Lc/C;->b:Lc/G;

    invoke-direct {p1, p0, v0, v1, p2}, Lc/C;-><init>(Lc/G;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/C;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/C;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "g.y"

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lc/C;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Lc/C;->b:Lc/G;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v6, Lc/G;->g:Z

    if-nez p1, :cond_2

    sget-object p0, Lc/G;->l:Ljava/lang/String;

    const-string p1, "ImageRendition.updateEncoded encountered unencoded instance"

    invoke-static {p0, p1}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    iput v3, p0, Lc/C;->a:I

    sget-object p1, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance p1, La/g;

    invoke-direct {p1, v6, v4, v4, v3}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {p1, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v5

    :goto_0
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p0, p0, Lc/C;->c:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    if-nez p0, :cond_5

    sget-object p0, Lc/G;->l:Ljava/lang/String;

    const-string v0, "ImageRendition.updateEncoded encountered bogus bitmap"

    invoke-static {p0, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, v6, Lc/G;->d:I

    iput p1, v6, Lc/G;->e:I

    return-object v5

    :cond_5
    iget-boolean v1, v6, Lc/G;->g:Z

    invoke-static {v1}, Lg/Z;->a(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object p0, Lc/G;->l:Ljava/lang/String;

    const-string v0, "ImageRendition.updateEncoded invalid output file"

    invoke-static {p0, v0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, v6, Lc/G;->d:I

    iput p1, v6, Lc/G;->e:I

    return-object v5

    :cond_6
    iget v2, v6, Lc/G;->h:I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v7, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto :goto_6

    :catch_0
    move-exception v7

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_5

    :catch_2
    move-exception v7

    move v2, p1

    goto :goto_3

    :catch_3
    move-exception v7

    move v2, p1

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v7, v2

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v7, v2

    goto :goto_4

    :goto_2
    move v2, p1

    move-object v3, v4

    :goto_3
    const-string v8, "compress OutOfMemoryError: "

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_4
    move v2, p1

    move-object v3, v4

    :goto_5
    const-string v8, "compress exception: "

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_7

    :catch_6
    move-exception v3

    const-string v7, "encodeStream.close error:"

    invoke-static {v0, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    invoke-virtual {v6, v1}, Lc/G;->a(Ljava/io/File;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, v6, Lc/G;->d:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iput p0, v6, Lc/G;->e:I

    goto :goto_8

    :cond_9
    invoke-virtual {v6, v4}, Lc/G;->a(Ljava/io/File;)V

    iput p1, v6, Lc/G;->d:I

    iput p1, v6, Lc/G;->e:I

    :goto_8
    return-object v5
.end method
