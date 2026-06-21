.class public final Le/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/X;

.field public final b:Lc/v1;

.field public final c:J

.field public final d:F

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final i:J

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:[F

.field public final n:[F


# direct methods
.method public constructor <init>(Lc/X;Lc/v1;JF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    const-string v6, "pageLayout"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/d0;->a:Lc/X;

    iput-object v2, v0, Le/d0;->b:Lc/v1;

    iput-wide v3, v0, Le/d0;->c:J

    iput v5, v0, Le/d0;->d:F

    iget v6, v2, Lc/v1;->a:F

    iget v7, v2, Lc/v1;->b:F

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    const-wide v13, 0xffffffffL

    and-long/2addr v10, v13

    or-long/2addr v8, v10

    iput-wide v8, v0, Le/d0;->e:J

    iget-object v10, v1, Lc/X;->r:Lc/z1;

    sget-object v11, Lc/z1;->a:Lc/z1;

    const/4 v15, 0x0

    move/from16 v16, v12

    const/4 v12, 0x1

    move-wide/from16 v17, v13

    if-eq v10, v11, :cond_1

    sget-object v13, Lc/z1;->l:Lc/z1;

    if-ne v10, v13, :cond_0

    goto :goto_0

    :cond_0
    move v13, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v12

    :goto_1
    iput-boolean v13, v0, Le/d0;->f:Z

    if-eq v10, v11, :cond_4

    sget-object v11, Lc/z1;->l:Lc/z1;

    if-ne v10, v11, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lc/X;->m:Lc/J;

    sget-object v10, Lc/J;->d:Lc/J;

    if-ne v1, v10, :cond_3

    goto :goto_2

    :cond_3
    move v15, v12

    :cond_4
    :goto_2
    iput-boolean v15, v0, Le/d0;->g:Z

    const/4 v1, 0x0

    if-eqz v13, :cond_5

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v1

    :goto_3
    if-nez v13, :cond_6

    move v1, v5

    :cond_6
    invoke-static {v3, v4, v8, v9}, La/l;->a(JJ)Le/W0;

    move-result-object v3

    invoke-virtual {v3, v10, v13}, Le/W0;->a(FZ)F

    move-result v4

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/geometry/Size;->times-7Ah8Wj8(FJ)J

    move-result-wide v8

    iput-wide v8, v0, Le/d0;->i:J

    iget-object v4, v2, Lc/v1;->c:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/x;

    invoke-virtual {v2}, Lc/v1;->d()Z

    move-result v2

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, v4, Lc/x;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v9, v6, v4

    div-float v11, v7, v2

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float v2, v6, v2

    div-float v4, v7, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v9

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v8

    :goto_5
    iput v2, v0, Le/d0;->j:F

    int-to-float v4, v12

    const/high16 v9, 0x43340000    # 180.0f

    rem-float/2addr v5, v9

    const/16 v9, 0x5a

    int-to-float v9, v9

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, v0, Le/d0;->k:F

    if-eqz v15, :cond_9

    invoke-static {v2, v8, v4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v8

    :cond_9
    iput v8, v0, Le/d0;->l:F

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v2

    invoke-virtual {v3, v10, v13}, Le/W0;->a(FZ)F

    move-result v4

    iget-wide v8, v3, Le/W0;->a:J

    iget-wide v11, v3, Le/W0;->b:J

    shr-long v13, v8, v16

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v3, v5

    and-long v8, v8, v17

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    div-float/2addr v8, v5

    invoke-static {v2, v3, v8}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    invoke-static {v2, v4, v4}, Landroidx/compose/ui/graphics/Brush;->scale-impl([FFF)V

    invoke-static {v2, v10}, Landroidx/compose/ui/graphics/Brush;->rotateZ-impl([FF)V

    shr-long v3, v11, v16

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v5

    and-long v8, v11, v17

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    iput-object v2, v0, Le/d0;->m:[F

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v2

    div-float/2addr v6, v5

    div-float/2addr v7, v5

    invoke-static {v2, v6, v7}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/Brush;->rotateZ-impl([FF)V

    neg-float v1, v6

    neg-float v3, v7

    invoke-static {v2, v1, v3}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    iput-object v2, v0, Le/d0;->n:[F

    return-void
.end method


# virtual methods
.method public final a(I)[F
    .locals 3

    iget-object v0, p0, Le/d0;->b:Lc/v1;

    iget-object v0, v0, Lc/v1;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/x;

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v0

    iget-object v1, p1, Lc/x;->e:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v1

    iget-object p1, p1, Lc/x;->f:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, p1}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    iget p0, p0, Le/d0;->l:F

    invoke-static {v1, p0, p0}, Landroidx/compose/ui/graphics/Brush;->scale-impl([FFF)V

    neg-float p0, v2

    neg-float p1, p1

    invoke-static {v1, p0, p1}, Landroidx/compose/ui/graphics/Brush;->translate-impl$default([FFF)V

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->timesAssign-58bKbWc([F[F)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le/d0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Le/d0;

    iget-object v0, p0, Le/d0;->a:Lc/X;

    iget-object v1, p1, Le/d0;->a:Lc/X;

    invoke-virtual {v0, v1}, Lc/X;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le/d0;->b:Lc/v1;

    iget-object v1, p1, Le/d0;->b:Lc/v1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Le/d0;->c:J

    iget-wide v2, p1, Le/d0;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget p0, p0, Le/d0;->d:F

    iget p1, p1, Le/d0;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Le/d0;->a:Lc/X;

    iget v0, v0, Lc/X;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/d0;->b:Lc/v1;

    invoke-virtual {v1}, Lc/v1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Le/d0;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Le/d0;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Le/d0;->c:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PageRenderingContext(page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le/d0;->a:Lc/X;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pageLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/d0;->b:Lc/v1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currentRotation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le/d0;->d:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
