.class public final Lg/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lkotlin/SynchronizedLazyImpl;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public d:Landroid/graphics/PointF;

.field public e:Landroid/graphics/PointF;

.field public f:La/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lg/d0;->g:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/d0;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/d0;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lg/d0;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lg/d0;->e:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lg/d0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/d0;->a:Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lg/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    iput-object v2, p0, Lg/d0;->f:La/f;

    .line 7
    iput-boolean v1, p0, Lg/d0;->c:Z

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lg/d0;->d:Landroid/graphics/PointF;

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lg/d0;->e:Landroid/graphics/PointF;

    return-void
.end method

.method public final a(FFLa/f;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lg/d0;->f:La/f;

    if-nez v0, :cond_1

    .line 11
    iput-object p3, p0, Lg/d0;->f:La/f;

    .line 12
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2}, Lg/d0;->a(FF)Z

    .line 14
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lg/d0;->e:Landroid/graphics/PointF;

    .line 15
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lg/d0;->d:Landroid/graphics/PointF;

    .line 16
    iget-object p1, p0, Lg/d0;->b:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lg/d0;->f:La/f;

    if-eqz p1, :cond_0

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p3}, La/f;->moveTo(FF)V

    .line 20
    :cond_0
    iput-boolean p2, p0, Lg/d0;->c:Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/PointF;Z)V
    .locals 13

    .line 27
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lg/d0;->d:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lg/d0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_4

    .line 28
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 29
    new-instance v1, Landroid/graphics/PointF;

    .line 30
    iget v5, p1, Landroid/graphics/PointF;->x:F

    if-eqz v0, :cond_1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    sub-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    .line 31
    iget v7, p1, Landroid/graphics/PointF;->y:F

    if-eqz v0, :cond_2

    iget v8, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    .line 32
    invoke-direct {v1, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 33
    new-instance v5, Landroid/graphics/PointF;

    .line 34
    iget-object v7, p0, Lg/d0;->e:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    mul-float/2addr v8, v6

    .line 35
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    mul-float/2addr v7, v6

    .line 36
    invoke-direct {v5, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    if-eqz v0, :cond_3

    .line 38
    iget v7, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    iget v8, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    if-eqz v0, :cond_4

    .line 39
    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v8

    .line 40
    invoke-direct {v1, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    .line 42
    iget v7, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v6

    .line 43
    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    .line 44
    invoke-direct {v0, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lg/d0;->e:Landroid/graphics/PointF;

    .line 45
    :goto_4
    iput-object p1, p0, Lg/d0;->d:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Landroid/graphics/PointF;

    .line 50
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :cond_5
    move v5, v3

    :goto_5
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    if-eqz v8, :cond_6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    goto :goto_6

    :cond_6
    move v8, v3

    :goto_6
    add-float/2addr v5, v8

    const v8, 0x3eaaaaab

    mul-float/2addr v5, v8

    .line 51
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    if-eqz v9, :cond_7

    iget v9, v9, Landroid/graphics/PointF;->y:F

    goto :goto_7

    :cond_7
    move v9, v3

    :goto_7
    mul-float/2addr v9, v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    if-eqz v10, :cond_8

    iget v10, v10, Landroid/graphics/PointF;->y:F

    goto :goto_8

    :cond_8
    move v10, v3

    :goto_8
    add-float/2addr v9, v10

    mul-float/2addr v9, v8

    .line 52
    invoke-direct {v1, v5, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 53
    new-instance v5, Landroid/graphics/PointF;

    .line 54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    if-eqz v9, :cond_9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    goto :goto_9

    :cond_9
    move v9, v3

    :goto_9
    mul-float/2addr v9, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    if-eqz v10, :cond_a

    iget v10, v10, Landroid/graphics/PointF;->x:F

    goto :goto_a

    :cond_a
    move v10, v3

    :goto_a
    add-float/2addr v9, v10

    mul-float/2addr v9, v8

    .line 55
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    if-eqz v10, :cond_b

    iget v10, v10, Landroid/graphics/PointF;->y:F

    goto :goto_b

    :cond_b
    move v10, v3

    :goto_b
    mul-float/2addr v10, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    if-eqz v7, :cond_c

    iget v7, v7, Landroid/graphics/PointF;->y:F

    goto :goto_c

    :cond_c
    move v7, v3

    :goto_c
    add-float/2addr v10, v7

    mul-float/2addr v10, v8

    .line 56
    invoke-direct {v5, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 57
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    if-eqz v7, :cond_d

    iget v7, v7, Landroid/graphics/PointF;->x:F

    goto :goto_d

    :cond_d
    move v7, v3

    :goto_d
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    if-eqz v8, :cond_e

    iget v8, v8, Landroid/graphics/PointF;->x:F

    goto :goto_e

    :cond_e
    move v8, v3

    :goto_e
    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    if-eqz v7, :cond_f

    iget v7, v7, Landroid/graphics/PointF;->x:F

    goto :goto_f

    :cond_f
    move v7, v3

    :goto_f
    add-float/2addr v8, v7

    const v7, 0x3e2aaaab

    mul-float/2addr v8, v7

    .line 58
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    if-eqz v6, :cond_10

    iget v6, v6, Landroid/graphics/PointF;->y:F

    goto :goto_10

    :cond_10
    move v6, v3

    :goto_10
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_11

    :cond_11
    move v0, v3

    :goto_11
    mul-float/2addr v0, v9

    add-float/2addr v0, v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_12

    iget v3, v2, Landroid/graphics/PointF;->y:F

    :cond_12
    add-float/2addr v0, v3

    mul-float/2addr v0, v7

    if-eqz p2, :cond_13

    goto :goto_12

    .line 59
    :cond_13
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v8, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 60
    :goto_12
    iget-object v6, p0, Lg/d0;->f:La/f;

    if-eqz v6, :cond_14

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget v11, p1, Landroid/graphics/PointF;->x:F

    iget v12, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v6 .. v12}, La/f;->cubicTo(FFFFFF)V

    :cond_14
    if-eqz p2, :cond_15

    .line 61
    iget-object p0, p0, Lg/d0;->f:La/f;

    if-eqz p0, :cond_15

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, La/f;->a(Landroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method public final a(FF)Z
    .locals 3

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 22
    iget-object p1, p0, Lg/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 23
    iget-object p1, p0, Lg/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "get(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/PointF;

    .line 24
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 25
    :cond_0
    iput-boolean p2, p0, Lg/d0;->c:Z

    :cond_1
    if-eqz p2, :cond_2

    .line 26
    iget-object p0, p0, Lg/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return p2
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lg/d0;->f:La/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    if-eqz v0, :cond_3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-boolean v0, p0, Lg/d0;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/d0;->f:La/f;

    if-eqz v0, :cond_1

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, La/f;->lineTo(FF)V

    :cond_1
    iget-object v0, p0, Lg/d0;->f:La/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, La/f;->a(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v1}, Lg/d0;->a(Landroid/graphics/PointF;Z)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lg/d0;->a()V

    :cond_4
    return-void
.end method
