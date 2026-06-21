.class public Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.source "SourceFile"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCaptureBarGuideLine()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getCaptureBarGuideLine()F

    move-result p0

    return p0
.end method

.method public getCaptureBarMarginDimen()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getCurrentDimen(I)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getDualCapturePIPHorizontalGuideline()F
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCapturePIPHorizontalGuideline()F

    move-result p0

    return p0
.end method

.method public getDualCapturePIPVerticalGuideline()F
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Portrait:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const v2, 0x7f07012f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3cf5c28f    # 0.03f

    if-ne p0, v1, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    add-float/2addr p0, v1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr p0, v0

    return p0

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    add-float/2addr p0, v1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result p0

    return p0
.end method

.method public final getDualCaptureSplitVerticalGuideline()F
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070130

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result p0

    return p0
.end method

.method public final getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->Fold:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->Normal:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-object p0
.end method

.method public getScanDetectOffset()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x43260000    # 166.0f

    return p0

    :cond_0
    const/high16 p0, 0x42400000    # 48.0f

    return p0
.end method

.method public getToggleBarMarginDimen()F
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070585

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getTrait()I
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FoldLayoutManager, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    return-void

    :cond_0
    new-instance p1, Landroid/content/res/Configuration;

    iget-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/16 p2, 0x12c

    iput p2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/FoldLayoutManager;->mResources:Landroid/content/res/Resources;

    return-void
.end method
