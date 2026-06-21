.class public final Lg/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;


# instance fields
.field public b:Ljava/util/List;

.field public final c:F

.field public d:Z

.field public final e:Lg/d0;

.field public f:Landroid/graphics/BitmapShader;

.field public g:Lg/H;

.field public h:Z

.field public final i:Lg/p;

.field public j:I

.field public final k:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lg/J;->l:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/J;->b:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/J;->c:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Lg/d0;

    invoke-direct {v0}, Lg/d0;-><init>()V

    iput-object v0, p0, Lg/J;->e:Lg/d0;

    const/16 v0, 0x8

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Lg/H;

    invoke-direct {v2, v0, v1}, Lg/H;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    iput-object v2, p0, Lg/J;->g:Lg/H;

    new-instance v0, Lg/p;

    invoke-direct {v0}, Lg/p;-><init>()V

    iput-object v0, p0, Lg/J;->i:Lg/p;

    const/4 v0, -0x1

    iput v0, p0, Lg/J;->j:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/J;->k:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a(Lg/T;)Lg/W;
    .locals 13

    const-string v0, "mark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/b;->a:Landroid/graphics/Matrix;

    iget v1, p1, Lg/T;->o:F

    iget v2, p1, Lg/T;->l:I

    iget-object v3, p1, Lg/T;->p:Ljava/util/ArrayList;

    .line 46
    iget v4, p1, Lg/T;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 47
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    if-nez v4, :cond_1

    const/4 v8, -0x1

    goto :goto_1

    .line 48
    :cond_1
    iget-object v8, p1, Lg/b;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 49
    :goto_1
    iget v9, p1, Lg/T;->n:F

    .line 50
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    if-ne v2, v6, :cond_2

    .line 51
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_2

    :cond_2
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_2
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez v2, :cond_3

    .line 52
    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_3
    sget-object v12, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_3
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v7, :cond_4

    .line 55
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_4
    if-nez v4, :cond_5

    .line 56
    iget-object v7, p0, Lg/J;->f:Landroid/graphics/BitmapShader;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    :cond_5
    iget-boolean v7, p0, Lg/J;->d:Z

    if-eqz v7, :cond_7

    .line 58
    iget v7, p0, Lg/J;->c:F

    cmpg-float v8, v7, v1

    if-nez v8, :cond_6

    goto :goto_4

    .line 59
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    div-float/2addr v7, v1

    mul-float/2addr v7, v8

    .line 60
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    :cond_7
    :goto_4
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    if-nez v2, :cond_a

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 64
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lg/J;->e:Lg/d0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v9, La/f;

    const/4 v12, 0x3

    invoke-direct {v9, v12, v1}, La/f;-><init>(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {v8, v6, v7, v9}, Lg/d0;->a(FFLa/f;)V

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v11, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    const-string v6, "subList(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 69
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 70
    iget-object v9, v8, Lg/d0;->f:La/f;

    if-eqz v9, :cond_8

    .line 71
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 72
    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v7, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v6, v7}, Lg/d0;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 73
    invoke-virtual {v8, v9, v2}, Lg/d0;->a(Landroid/graphics/PointF;Z)V

    goto :goto_5

    .line 74
    :cond_9
    invoke-virtual {v8}, Lg/d0;->c()V

    goto :goto_6

    .line 75
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v6, :cond_d

    .line 76
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 77
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 78
    const-string v8, "startPoint"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "endPoint"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v2, v11, :cond_c

    if-eq v2, v6, :cond_b

    goto :goto_6

    .line 79
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 80
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 81
    iget v6, v7, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 82
    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 83
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 84
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_6

    .line 89
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 90
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    :cond_d
    :goto_6
    iget-object v2, p0, Lg/J;->b:Ljava/util/List;

    .line 93
    iget p1, p1, Lg/b;->d:I

    .line 94
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    if-nez p1, :cond_e

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    :cond_e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 96
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 98
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 99
    iget-boolean p0, p0, Lg/J;->d:Z

    if-eqz p0, :cond_10

    .line 100
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_f
    move-object p0, v5

    goto :goto_7

    :cond_10
    if-nez v4, :cond_11

    .line 101
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 102
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_11
    move-object p0, v5

    move-object v5, v2

    .line 103
    :goto_7
    new-instance p1, Lg/W;

    invoke-direct {p1, v1, v10, v5, p0}, Lg/W;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public final a(Lg/e0;)Lg/f0;
    .locals 7

    const-string v0, "stamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/b;->a:Landroid/graphics/Matrix;

    .line 29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    iget-object p0, p0, Lg/J;->b:Ljava/util/List;

    .line 31
    iget v1, p1, Lg/b;->d:I

    .line 32
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 35
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 36
    :cond_1
    new-instance v1, Lg/f0;

    .line 37
    iget-object v2, p1, Lg/e0;->q:Ljava/util/ArrayList;

    .line 38
    iget-boolean p0, p1, Lg/e0;->m:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    move-object v3, v0

    goto :goto_0

    .line 39
    :cond_2
    iget-object p0, p1, Lg/b;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v3, p0

    .line 41
    :goto_0
    iget-boolean p0, p1, Lg/e0;->n:Z

    if-eqz p0, :cond_3

    :goto_1
    move-object v4, v0

    goto :goto_2

    .line 42
    :cond_3
    iget-object p0, p1, Lg/b;->c:Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 43
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    .line 44
    :goto_2
    iget-object v6, p1, Lg/e0;->o:Landroid/graphics/Matrix;

    .line 45
    invoke-direct/range {v1 .. v6}, Lg/f0;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/J;->i:Lg/p;

    iget-object v1, v0, Lg/p;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    iget v2, p0, Lg/J;->j:I

    const/4 v3, 0x0

    if-lt p1, v2, :cond_0

    if-ne v1, p1, :cond_1

    .line 5
    :cond_0
    iput v1, p0, Lg/J;->j:I

    .line 6
    iget-object v1, p0, Lg/J;->g:Lg/H;

    .line 7
    iget-object v1, v1, Lg/H;->b:Landroid/graphics/Canvas;

    .line 8
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    :cond_1
    iget-object v0, v0, Lg/p;->c:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    if-ltz v3, :cond_5

    check-cast v1, Lg/b;

    .line 11
    iget v4, p0, Lg/J;->j:I

    if-gt v4, v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 12
    const-string v3, "annotData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v3, v1, Lg/T;

    if-eqz v3, :cond_2

    .line 14
    move-object v3, v1

    check-cast v3, Lg/T;

    .line 15
    iget-object v4, v3, Lg/b;->g:Lg/c;

    if-nez v4, :cond_3

    .line 16
    invoke-virtual {p0, v3}, Lg/J;->a(Lg/T;)Lg/W;

    move-result-object v4

    .line 17
    iput-object v4, v3, Lg/b;->g:Lg/c;

    goto :goto_1

    .line 18
    :cond_2
    instance-of v3, v1, Lg/e0;

    if-eqz v3, :cond_3

    .line 19
    move-object v3, v1

    check-cast v3, Lg/e0;

    .line 20
    iget-object v4, v3, Lg/b;->g:Lg/c;

    if-nez v4, :cond_3

    .line 21
    invoke-virtual {p0, v3}, Lg/J;->a(Lg/e0;)Lg/f0;

    move-result-object v4

    .line 22
    iput-object v4, v3, Lg/b;->g:Lg/c;

    .line 23
    :cond_3
    :goto_1
    iget-object v1, v1, Lg/b;->g:Lg/c;

    if-eqz v1, :cond_4

    .line 24
    iget-object v3, p0, Lg/J;->g:Lg/H;

    .line 25
    iget-object v3, v3, Lg/H;->b:Landroid/graphics/Canvas;

    .line 26
    invoke-virtual {v1, v3}, Lg/c;->a(Landroid/graphics/Canvas;)V

    :cond_4
    move v3, v2

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    .line 28
    :cond_6
    iput p1, p0, Lg/J;->j:I

    return-void
.end method
