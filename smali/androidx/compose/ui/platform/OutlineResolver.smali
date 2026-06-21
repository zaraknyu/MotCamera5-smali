.class public final Landroidx/compose/ui/platform/OutlineResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cacheIsDirty:Z

.field public final cachedOutline:Landroid/graphics/Outline;

.field public cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

.field public outline:Landroidx/compose/ui/graphics/Brush;

.field public outlineNeeded:Z

.field public outlinePath:Landroidx/compose/ui/graphics/Path;

.field public rectSize:J

.field public rectTopLeft:J

.field public roundedCornerRadius:F

.field public tmpPath:Landroidx/compose/ui/graphics/Path;

.field public tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

.field public usePathForClip:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    return-void
.end method


# virtual methods
.method public final clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-lez v1, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    iget-object v5, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    if-eqz v1, :cond_2

    iget-wide v6, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    if-eqz v5, :cond_2

    invoke-static {v5}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    iget v10, v5, Landroidx/compose/ui/geometry/RoundRect;->left:F

    shr-long v11, v6, v2

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    cmpg-float v10, v10, v12

    if-nez v10, :cond_2

    iget v10, v5, Landroidx/compose/ui/geometry/RoundRect;->top:F

    and-long/2addr v6, v3

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    cmpg-float v7, v10, v7

    if-nez v7, :cond_2

    iget v7, v5, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    shr-long v11, v8, v2

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-float/2addr v11, v10

    cmpg-float v7, v7, v11

    if-nez v7, :cond_2

    iget v7, v5, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    and-long/2addr v8, v3

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float/2addr v8, v6

    cmpg-float v6, v7, v8

    if-nez v6, :cond_2

    iget-wide v5, v5, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    shr-long/2addr v5, v2

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    cmpg-float v0, v5, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    iget-wide v5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v5, v2

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget-wide v6, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v6, v3

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    iget-wide v7, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v7, v2

    long-to-int v0, v7

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v7, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    shr-long/2addr v7, v2

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-float/2addr v7, v0

    iget-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v8, v3

    long-to-int v0, v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    and-long/2addr v8, v3

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float/2addr v8, v0

    iget v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v11, v0

    shl-long/2addr v9, v2

    and-long v2, v11, v3

    or-long/2addr v9, v2

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    :goto_1
    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    :goto_2
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V

    return-void

    :cond_4
    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    shr-long v1, v8, v2

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float v8, v1, v0

    iget-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    and-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float v9, p0, v0

    const/4 v10, 0x1

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    return-void
.end method

.method public final getAndroidOutline()Landroid/graphics/Outline;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isInOutline-k-4lQ0M(J)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Brush;

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/InvertMatrixKt;->isInOutline(Landroidx/compose/ui/graphics/Brush;FF)Z

    move-result p0

    return p0
.end method

.method public final update-S_szKao(Landroidx/compose/ui/graphics/Brush;FZFJ)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Brush;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Brush;

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_0
    iput-wide p5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_3
    return v0
.end method

.method public final updateCache()V
    .locals 14

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Brush;

    iget-object v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v3, :cond_4

    iget-wide v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_4

    iget-wide v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    shl-long/2addr v8, v5

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    iput-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float v8, v4, v1

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float v9, v0, v3

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v10, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v10, v5

    and-long v5, v8, v6

    or-long/2addr v5, v10

    iput-wide v5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    :cond_0
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    sget-object v3, Landroidx/compose/ui/platform/OutlineVerificationHelper;->INSTANCE:Landroidx/compose/ui/platform/OutlineVerificationHelper;

    if-eqz v0, :cond_3

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v8, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    shr-long/2addr v8, v5

    long-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    iget v1, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget v4, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v10, v10

    shl-long/2addr v8, v5

    and-long/2addr v10, v6

    or-long/2addr v8, v10

    iput-wide v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v8

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v10, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v10, v5

    and-long v5, v8, v6

    or-long/2addr v5, v10

    iput-wide v5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    invoke-static {v0}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v1, v0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v0, v0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget-object v8, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iput v13, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/AndroidPath;

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-virtual {v3, v2, v1}, Landroidx/compose/ui/platform/OutlineVerificationHelper;->setPath(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V

    invoke-virtual {v2}, Landroid/graphics/Outline;->canClip()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-void

    :cond_3
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_5

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroidx/compose/ui/platform/OutlineVerificationHelper;->setPath(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V

    invoke-virtual {v2}, Landroid/graphics/Outline;->canClip()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Outline;->setEmpty()V

    :cond_5
    return-void
.end method
