.class public final Lc/a1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lc/N0;

.field public b:Landroid/graphics/Bitmap;

.field public c:I

.field public final synthetic d:Lc/M0;

.field public final synthetic e:Lc/N0;

.field public final synthetic f:Lc/s1;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lc/M0;Lc/N0;Lc/s1;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/a1;->d:Lc/M0;

    iput-object p2, p0, Lc/a1;->e:Lc/N0;

    iput-object p3, p0, Lc/a1;->f:Lc/s1;

    iput-boolean p4, p0, Lc/a1;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lc/a1;

    iget-object v3, p0, Lc/a1;->f:Lc/s1;

    iget-boolean v4, p0, Lc/a1;->g:Z

    iget-object v1, p0, Lc/a1;->d:Lc/M0;

    iget-object v2, p0, Lc/a1;->e:Lc/N0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc/a1;-><init>(Lc/M0;Lc/N0;Lc/s1;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/a1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/a1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/a1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lc/a1;->e:Lc/N0;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lc/a1;->c:I

    const-string v3, "Page"

    const/4 v4, 0x0

    iget-object v5, p0, Lc/a1;->d:Lc/M0;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lc/a1;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lc/a1;->a:Lc/N0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    move-object v0, p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iput v7, p0, Lc/a1;->c:I

    invoke-static {v5, p0}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    iget-object p1, v0, Lc/N0;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    int-to-float v8, v8

    int-to-float v2, v2

    const v9, 0x3f866666    # 1.05f

    mul-float/2addr v9, v2

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    div-float/2addr v2, v8

    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-static {v9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v10, "<this>"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v10, v12, v12, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, p1, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v2

    :cond_5
    iget-boolean v2, p0, Lc/a1;->g:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lc/N0;->a:Lc/P0;

    iput-object v0, p0, Lc/a1;->a:Lc/N0;

    iput-object p1, p0, Lc/a1;->b:Landroid/graphics/Bitmap;

    iput v6, p0, Lc/a1;->c:I

    invoke-virtual {v5, v2, p1, v7, p0}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_1
    return-object v1

    :cond_6
    :goto_2
    new-instance p0, Lc/N0;

    iget-object v0, v0, Lc/N0;->a:Lc/P0;

    invoke-direct {p0, v0, p1}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_1
    :try_start_4
    const-string p0, "getScreenResBitmap out of memory"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v4

    :cond_7
    throw p0
.end method
