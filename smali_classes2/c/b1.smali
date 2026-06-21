.class public final Lc/b1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field public final synthetic c:Lc/R0;

.field public final synthetic d:Lc/e1;

.field public final synthetic e:Lc/s1;


# direct methods
.method public constructor <init>(Lc/R0;Lc/e1;Lc/s1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/b1;->c:Lc/R0;

    iput-object p2, p0, Lc/b1;->d:Lc/e1;

    iput-object p3, p0, Lc/b1;->e:Lc/s1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lc/b1;

    iget-object v0, p0, Lc/b1;->d:Lc/e1;

    iget-object v1, p0, Lc/b1;->e:Lc/s1;

    iget-object p0, p0, Lc/b1;->c:Lc/R0;

    invoke-direct {p1, p0, v0, v1, p2}, Lc/b1;-><init>(Lc/R0;Lc/e1;Lc/s1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/b1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/b1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/b1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/b1;->b:I

    const/4 v2, 0x3

    const-string v3, "Page"

    iget-object v4, p0, Lc/b1;->d:Lc/e1;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lc/b1;->a:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v6, p0, Lc/b1;->b:I

    iget-object v1, p0, Lc/b1;->c:Lc/R0;

    invoke-static {v1, p0}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_0
    check-cast v1, Lc/N0;

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    invoke-static {v4}, Lc/M0;->a(Lc/M0;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string p0, "getScreenResBitmap encountered invalid sourceRendition"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_6
    iget-object v1, v4, Lc/M0;->a:Lc/G;

    :try_start_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v9, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v9

    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    iget v9, v1, Lc/G;->e:I

    iget v10, v1, Lc/G;->d:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    if-le v9, v8, :cond_7

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v6, v5

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v9, v9, 0x2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_7
    :try_start_3
    iput v5, p0, Lc/b1;->b:I

    sget-object v5, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v5, Lc/A;

    invoke-direct {v5, v10, v1, v7}, Lc/A;-><init>(Landroid/graphics/BitmapFactory$Options;Lc/G;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_2
    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_1
    :try_start_4
    const-string v1, "getScreenResBitmap out of memory"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_c

    iget-object v11, p0, Lc/b1;->e:Lc/s1;

    new-instance v10, Lc/N0;

    iget-object v4, v4, Lc/M0;->d:Lc/P0;

    invoke-direct {v10, v4, v1}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lc/b1;->c:Lc/R0;

    iput-object v1, p0, Lc/b1;->a:Landroid/graphics/Bitmap;

    iput v2, p0, Lc/b1;->b:I

    sget-object v2, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    sget-object v2, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v8, Lc/a1;

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v8 .. v13}, Lc/a1;-><init>(Lc/M0;Lc/N0;Lc/s1;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v8, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_4
    return-object v0

    :cond_9
    move-object v0, p0

    move-object p0, v1

    :goto_5
    move-object v1, v0

    check-cast v1, Lc/N0;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v7, v1, Lc/N0;->b:Landroid/graphics/Bitmap;

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v7, v1

    goto :goto_7

    :cond_a
    :goto_6
    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    move-object v7, v1

    goto :goto_8

    :goto_7
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_8
    return-object v7

    :cond_d
    throw p0
.end method
