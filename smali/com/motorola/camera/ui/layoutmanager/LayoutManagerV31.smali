.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "SourceFile"


# instance fields
.field public mBottomMargin:I

.field public mComponentsMargin:I

.field public mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    instance-of v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iget-object v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget-object p2, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeLayout(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mTopMargin:I

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    return-void
.end method

.method public getCaptureBarGuideLine()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    const/high16 v0, 0x42100000    # 36.0f

    add-float/2addr p0, v0

    const/high16 v0, 0x42480000    # 50.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public final getIndicatorBarMarginHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mTopMargin:I

    int-to-float p0, p0

    return p0
.end method

.method public final getModeCarouselFromTop()F
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const v2, 0x3fe38e39

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Margin:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    sub-float/2addr p0, v1

    const/high16 v0, 0x40c00000    # 6.0f

    sub-float/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mBottomMargin:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const v2, 0x3faaaaab

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Margin:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    add-float/2addr p0, v1

    const/high16 v0, 0x40800000    # 4.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public getModeCarouselY()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getModeSliderY()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselY()F

    move-result p0

    return p0
.end method

.method public final getToggleBarGuideLine()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    const/high16 v0, 0x41e00000    # 28.0f

    :goto_0
    add-float/2addr p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    const/high16 v0, 0x42800000    # 64.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutManagerV31{, mComponentsMargin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateInsets(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateInsets(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    return-void
.end method
