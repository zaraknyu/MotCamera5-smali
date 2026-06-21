.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mCapturing:Z

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

.field public final mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

.field public final mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mHandler:Landroid/os/Handler;

.field public mOrientation:I

.field public final mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

.field public mShowFadeAnim:Z

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public final mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V
    .locals 9

    invoke-direct/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-direct {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v5, ""

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v5, ""

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setAlpha(F)V

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    monitor-enter v2

    :try_start_0
    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v5}, Lcom/tinder/StateMachine;->getDrawList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    monitor-exit v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v3

    monitor-enter v4

    :try_start_1
    iput v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    iget-object v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/tinder/StateMachine;

    invoke-virtual {v3}, Lcom/tinder/StateMachine;->getDrawList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit v4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    return-void

    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getPreviewDisplayRect$1()Lcom/motorola/camera/SecureDataHelper;
    .locals 9

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v1

    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    invoke-direct {v1, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    sget v2, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr p0, v3

    new-instance v2, Lcom/motorola/camera/SecureDataHelper;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float v7, v6, v3

    sub-float/2addr v5, v7

    add-float/2addr v5, p0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float v4, v4

    add-float v7, v1, v4

    iget v8, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float v8, v1, v3

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v3

    sub-float/2addr v8, v6

    sub-float/2addr v8, p0

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float p0, v1, p0

    sub-float/2addr p0, v4

    div-float/2addr v1, v3

    sub-float/2addr p0, v1

    invoke-direct {v2, v5, v7, v8, p0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    return-object v2
.end method

.method public final getThumbnailHeight()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    return p0
.end method

.method public final hide()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final loadTexture()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x7f000000

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    const v6, 0x3e3851ec    # 0.18f

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f12015f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final placeGuideIdleText()V
    .locals 9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v1, 0x43700000    # 240.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v5, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object p0

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    invoke-virtual {v5, v3, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v1

    const/high16 v7, 0x43180000    # 152.0f

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    mul-float/2addr v8, v7

    sub-float/2addr v1, v8

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz p0, :cond_4

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p0

    neg-float v0, v0

    div-float/2addr v0, v7

    add-float/2addr v0, v6

    invoke-virtual {v5, v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_2
    div-float/2addr v0, v7

    add-float/2addr v0, v3

    sub-float/2addr v0, v6

    invoke-virtual {v5, v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_3
    iget-object p0, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p0

    div-float/2addr v0, v7

    sub-float/2addr v0, v6

    invoke-virtual {v5, v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_4
    div-float/2addr v0, v7

    sub-float p0, v3, v0

    add-float/2addr p0, v1

    invoke-virtual {v5, v3, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float v0, p1

    invoke-virtual {v3, v0, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iput p1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float p1, p1

    invoke-virtual {v5, p1, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float p1, p1

    invoke-virtual {v4, p1, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    int-to-float v0, p1

    invoke-virtual {v3, v0, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iput p1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {v5, v0, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    invoke-virtual {v4, v0, v7, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    iput p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setGuideIdleTextVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final stopCapture()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->unloadTexture()V

    return-void
.end method

.method public final update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p10

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v1, v9, :cond_5

    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    const v9, 0x7f120163

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p12, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v9, 0x7f120162

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const-wide/16 v14, 0xbb8

    invoke-virtual {v7, v6, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f120161

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_3
    if-eqz p12, :cond_4

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    :cond_6
    :goto_1
    if-eqz p12, :cond_7

    goto/16 :goto_1c

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    sub-float v9, v9, p11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    if-eq v2, v13, :cond_9

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    sget v15, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    goto :goto_3

    :cond_9
    :goto_2
    sget v15, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v16

    const/high16 v17, 0x437a0000    # 250.0f

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    :goto_3
    add-float v15, p13, v15

    move/from16 p1, v14

    iget-boolean v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v14, :cond_a

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getPreviewDisplayRect$1()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/RectF;

    monitor-enter v1

    if-eqz v14, :cond_c

    :try_start_0
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    if-ne v14, v10, :cond_b

    goto :goto_4

    :cond_b
    iput-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    :goto_4
    monitor-exit v1

    :goto_5
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v17, 0x42340000    # 45.0f

    if-eqz v10, :cond_d

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v14

    :goto_6
    move/from16 p12, v14

    goto :goto_7

    :cond_d
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    div-float v10, v10, p1

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v18

    mul-float v18, v18, v17

    sub-float v10, v10, v18

    goto :goto_6

    :goto_7
    new-instance v14, Landroid/graphics/Rect;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v11, v11, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v14, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v11, v14, Landroid/graphics/Rect;->right:I

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v14

    int-to-float v11, v11

    div-float v11, v11, p1

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v14

    mul-float v14, v14, v17

    sub-float/2addr v11, v14

    const/4 v14, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x40400000    # 3.0f

    if-eqz v2, :cond_20

    if-eq v2, v13, :cond_1b

    const v20, 0x3f0ccccd    # 0.55f

    if-eq v2, v12, :cond_15

    const/4 v13, 0x3

    if-eq v2, v13, :cond_e

    goto/16 :goto_f

    :cond_e
    if-eqz p9, :cond_10

    :cond_f
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_10

    :cond_10
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v13

    if-eqz v13, :cond_11

    move v10, v11

    :cond_11
    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    if-eqz p8, :cond_12

    invoke-virtual {v7, v10, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_9

    :cond_12
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v11, v11

    int-to-float v11, v11

    div-float v11, v11, p1

    add-float/2addr v11, v9

    mul-float v9, p11, p7

    add-float/2addr v9, v11

    add-float/2addr v9, v15

    invoke-virtual {v7, v10, v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v9

    cmpl-float v9, v9, p11

    if-eqz v9, :cond_14

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    div-float v9, v4, p1

    div-float v11, p11, p1

    invoke-virtual {v7, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-boolean v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v11, :cond_13

    sget v11, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v11, v11

    div-float v11, v11, p1

    mul-float v11, v11, v20

    invoke-virtual {v6, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_a

    :cond_13
    sget v11, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v11, v11

    div-float v11, v11, p1

    invoke-virtual {v6, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_14
    :goto_a
    invoke-virtual {v6, v10, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_f

    :cond_15
    if-eqz p9, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v13

    if-eqz v13, :cond_17

    move v10, v11

    :cond_17
    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    if-eqz p8, :cond_18

    invoke-virtual {v7, v10, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_b

    :cond_18
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v11, v11

    div-float v11, v11, p1

    sub-float/2addr v11, v9

    sub-float v9, v17, p7

    mul-float v9, v9, p11

    sub-float/2addr v11, v9

    add-float/2addr v11, v15

    invoke-virtual {v7, v10, v11, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v9

    cmpl-float v9, v9, p11

    if-eqz v9, :cond_1a

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    div-float v9, v4, p1

    div-float v11, p11, p1

    invoke-virtual {v7, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-boolean v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v11, :cond_19

    sget v11, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v11, v11

    div-float v11, v11, p1

    mul-float v11, v11, v20

    invoke-virtual {v6, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_c

    :cond_19
    sget v11, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v11, v11

    div-float v11, v11, p1

    invoke-virtual {v6, v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_1a
    :goto_c
    invoke-virtual {v6, v10, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_f

    :cond_1b
    if-eqz p9, :cond_1c

    goto/16 :goto_8

    :cond_1c
    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v9, :cond_1d

    div-float v15, p13, v19

    :cond_1d
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    if-eqz p8, :cond_1e

    invoke-virtual {v7, v14, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_d

    :cond_1e
    move/from16 v9, p5

    neg-float v9, v9

    invoke-virtual {v7, v9, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v9

    cmpl-float v9, v9, p11

    if-eqz v9, :cond_1f

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    div-float v9, p11, p1

    invoke-virtual {v7, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    div-float v10, v4, p1

    invoke-virtual {v6, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_1f
    invoke-virtual {v6, v14, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_f

    :cond_20
    if-eqz p9, :cond_21

    goto/16 :goto_8

    :cond_21
    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz v9, :cond_22

    div-float v15, p13, v19

    :cond_22
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    if-eqz p8, :cond_23

    invoke-virtual {v7, v14, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_e

    :cond_23
    move/from16 v9, p4

    neg-float v9, v9

    invoke-virtual {v7, v9, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_e
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getThumbnailHeight()F

    move-result v9

    cmpl-float v9, v9, p11

    if-eqz v9, :cond_24

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    div-float v9, p11, p1

    invoke-virtual {v7, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    div-float v10, v4, p1

    invoke-virtual {v6, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :cond_24
    invoke-virtual {v6, v14, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_f
    if-eqz v3, :cond_f

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v21, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(ILjava/lang/Object;)V

    const/16 v27, 0x2

    const/16 v28, 0x0

    const-wide/16 v23, 0xc8

    const/high16 v25, 0x3f000000    # 0.5f

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v22, v9

    invoke-direct/range {v21 .. v28}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    move-object/from16 v9, v21

    filled-new-array {v1, v7, v6}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v9, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    const/4 v1, 0x1

    invoke-virtual {v3, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    :goto_10
    const/16 v3, 0x10e

    if-eqz v2, :cond_2e

    if-eq v2, v1, :cond_2b

    if-eq v2, v12, :cond_28

    const/4 v13, 0x3

    if-eq v2, v13, :cond_25

    goto/16 :goto_19

    :cond_25
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v1, :cond_27

    if-ne v1, v3, :cond_26

    goto :goto_11

    :cond_26
    sub-float v1, v17, p7

    goto :goto_12

    :cond_27
    :goto_11
    move/from16 v1, p7

    :goto_12
    mul-float v1, v1, p11

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    div-float v4, v4, p1

    add-float/2addr v4, v1

    cmpl-float v1, v4, p11

    if-ltz v1, :cond_31

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_19

    :cond_28
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v1, :cond_2a

    if-ne v1, v3, :cond_29

    goto :goto_13

    :cond_29
    move/from16 v1, p7

    goto :goto_14

    :cond_2a
    :goto_13
    sub-float v1, v17, p7

    :goto_14
    mul-float v1, v1, p11

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    div-float v4, v4, p1

    add-float/2addr v4, v1

    cmpl-float v1, v4, p11

    if-ltz v1, :cond_31

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_19

    :cond_2b
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v1, :cond_2d

    if-ne v1, v3, :cond_2c

    goto :goto_15

    :cond_2c
    sub-float v1, v17, p6

    goto :goto_16

    :cond_2d
    :goto_15
    move/from16 v1, p6

    :goto_16
    mul-float/2addr v1, v4

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    div-float v6, v6, p1

    add-float/2addr v6, v1

    cmpl-float v1, v6, v4

    if-ltz v1, :cond_31

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    goto :goto_19

    :cond_2e
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v1, :cond_30

    if-ne v1, v3, :cond_2f

    goto :goto_17

    :cond_2f
    move/from16 v1, p6

    goto :goto_18

    :cond_30
    :goto_17
    sub-float v1, v17, p6

    :goto_18
    mul-float/2addr v1, v4

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    div-float v6, v6, p1

    add-float/2addr v6, v1

    cmpl-float v1, v6, v4

    if-ltz v1, :cond_31

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->stopCapture()V

    :cond_31
    :goto_19
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v6, 0x43700000    # 240.0f

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v1, :cond_32

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v6

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float v0, v0, p1

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    mul-float v2, v2, v19

    sub-float/2addr v0, v2

    invoke-virtual {v8, v14, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v1

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_32
    sget v1, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    add-float v1, p13, v1

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v9, v9, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v9

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v9

    const/high16 v10, 0x43180000    # 152.0f

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v10

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledWidth()F

    move-result v11

    const/high16 v13, 0x43200000    # 160.0f

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v15

    mul-float/2addr v15, v13

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v13

    mul-float/2addr v13, v4

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v6

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float v6, v6, p12

    const/16 v12, 0xb4

    const/16 v14, 0x5a

    if-eqz v2, :cond_39

    const/4 v7, 0x1

    if-ne v2, v7, :cond_33

    goto :goto_1b

    :cond_33
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v0, :cond_37

    if-eq v0, v14, :cond_36

    if-eq v0, v12, :cond_35

    if-eq v0, v3, :cond_34

    goto :goto_1c

    :cond_34
    neg-float v0, v10

    div-float v0, v0, p1

    add-float/2addr v0, v6

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v8, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_35
    const/high16 v2, -0x40800000    # -1.0f

    sub-float/2addr v1, v15

    div-float v10, v10, p1

    add-float/2addr v10, v1

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v5

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_36
    const/high16 v2, -0x40800000    # -1.0f

    div-float v10, v10, p1

    sub-float/2addr v10, v6

    invoke-virtual {v8, v10, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_37
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, p12

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v8, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1a

    :cond_38
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v1, v0

    invoke-virtual {v8, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_1a
    float-to-int v0, v5

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_39
    :goto_1b
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    if-eqz v0, :cond_3d

    if-eq v0, v14, :cond_3b

    if-eq v0, v12, :cond_3a

    if-eq v0, v3, :cond_3b

    :goto_1c
    return-void

    :cond_3a
    sub-float/2addr v1, v15

    div-float v10, v10, p1

    add-float/2addr v10, v1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v8, v2, v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_3b
    cmpl-float v0, v11, v5

    if-lez v0, :cond_3c

    move v11, v5

    :cond_3c
    div-float v11, v11, p1

    add-float/2addr v11, v1

    add-float/2addr v11, v13

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v8, v2, v11, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v5

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void

    :cond_3d
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v8, v2, v9, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    float-to-int v0, v4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    return-void
.end method

.method public final updatePanoGuideIdleText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const p1, 0x7f120160

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-eqz p1, :cond_1

    const p1, 0x7f1205ea

    goto :goto_0

    :cond_1
    const p1, 0x7f12015f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final updateTranslation(ZFFLcom/motorola/camera/PreviewSize;Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideIdleText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mThumbnailTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->placeGuideIdleText()V

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSplitMode:Z

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    if-nez p3, :cond_2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_2
    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    goto :goto_2

    :cond_3
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    if-nez p3, :cond_6

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/4 p3, 0x3

    invoke-virtual {v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->getPreviewDisplayRect$1()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/RectF;

    monitor-enter v1

    if-eqz p3, :cond_5

    :try_start_0
    iget-object p4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    if-ne p3, p4, :cond_4

    goto :goto_0

    :cond_4
    iput-object p3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    monitor-exit v1

    :cond_6
    :goto_1
    const/high16 p3, 0x41700000    # 15.0f

    invoke-virtual {v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    :goto_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mShowFadeAnim:Z

    :goto_3
    if-eqz p1, :cond_7

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    :cond_7
    return-void
.end method
