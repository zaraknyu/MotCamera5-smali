.class public final Lg/f0;
.super Lg/c;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Integer;

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "pathDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationMatrix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {p0, v0, p4}, Lg/c;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lg/f0;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/f0;->d:Ljava/lang/Integer;

    iput-object p3, p0, Lg/f0;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lg/f0;->f:Landroid/graphics/Matrix;

    iput-object p5, p0, Lg/f0;->g:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    sget-object v1, Lg/x;->c:Landroid/app/ActivityManager;

    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lg/f0;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lg/f0;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lg/f0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/r;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, v2, Lg/r;->b:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget-boolean v4, v2, Lg/r;->e:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-boolean v4, v2, Lg/r;->d:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lg/f0;->d:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lg/f0;->e:Ljava/lang/Integer;

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v2, v2, Lg/r;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
