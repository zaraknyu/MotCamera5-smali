.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "SourceFile"


# instance fields
.field public mFillAlpha:F

.field public mFillColor:Lcom/google/common/base/Splitter;

.field public mStrokeAlpha:F

.field public mStrokeColor:Lcom/google/common/base/Splitter;

.field public mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field public mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field public mStrokeMiterlimit:F

.field public mStrokeWidth:F

.field public mTrimPathEnd:F

.field public mTrimPathOffset:F

.field public mTrimPathStart:F


# virtual methods
.method public getFillAlpha()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return p0
.end method

.method public getFillColor()I
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return p0
.end method

.method public getTrimPathEnd()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return p0
.end method

.method public getTrimPathOffset()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return p0
.end method

.method public getTrimPathStart()F
    .locals 0

    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return p0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChanged([I)Z
    .locals 5

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->isStateful()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v4, v0, Lcom/google/common/base/Splitter;->limit:I

    if-eq v1, v4, :cond_0

    iput v1, v0, Lcom/google/common/base/Splitter;->limit:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v1, p0, Lcom/google/common/base/Splitter;->limit:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int p0, v0, v2

    return p0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Lcom/google/common/base/Splitter;

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Lcom/google/common/base/Splitter;

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return-void
.end method
