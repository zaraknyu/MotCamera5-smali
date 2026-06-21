.class public final Lcom/airbnb/lottie/utils/DropShadow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:I

.field public dx:F

.field public dy:F

.field public radius:F

.field public vecs:[F


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/utils/DropShadow;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iget v0, p1, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iget p1, p1, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    return-void
.end method


# virtual methods
.method public final applyWithAlpha(ILcom/airbnb/lottie/animation/LPaint;)V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(I)I

    move-result p1

    sget-object v1, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    iget p0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    invoke-virtual {p2, v0, v1, p0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method public final multiplyOpacity(I)V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(I)I

    move-result p1

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    return-void
.end method

.method public final transformBy(Landroid/graphics/Matrix;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->vecs:[F

    aget v1, v0, v2

    iput v1, p0, Lcom/airbnb/lottie/utils/DropShadow;->dx:F

    aget v0, v0, v3

    iput v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->dy:F

    iget v0, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/utils/DropShadow;->radius:F

    return-void
.end method
