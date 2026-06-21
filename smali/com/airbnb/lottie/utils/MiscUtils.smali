.class public abstract Lcom/airbnb/lottie/utils/MiscUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final pathFromDataCurrentPoint:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 2
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(I)I
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static floorMod(FF)I
    .locals 3

    float-to-int p0, p0

    float-to-int p1, p1

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    rem-int v2, p0, p1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sget-object v3, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v4, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v5, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v4, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v6, p1

    goto :goto_1

    :cond_0
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1
    iget p1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, p1, v2}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v6

    goto :goto_0

    :cond_1
    move-object v6, p1

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-eqz p0, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method public static lerp(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p0

    return p0
.end method

.method public static resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V
    .locals 1

    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/Content;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/Content;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {p1, p3}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iget-object p3, p1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    iput-object p4, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
