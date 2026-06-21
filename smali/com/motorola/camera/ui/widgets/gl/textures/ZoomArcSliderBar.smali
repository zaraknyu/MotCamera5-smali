.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;


# instance fields
.field public final mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

.field public final mCallback:Lcom/motorola/camera/PermissionCallback;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public final mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

.field public final mDensity:F

.field public mDownPressed:Z

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

.field public mLayoutHeight:I

.field public mLayoutNeeded:Z

.field public mLayoutWidth:I

.field public mOrientation:F

.field public final mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

.field public mPreHalfWidth:F

.field public final mRtl:Z

.field public mShortcutBottomYOffset:F

.field public final mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

.field public mZoomSegmentValueList:Ljava/util/ArrayList;

.field public final mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PermissionCallback;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, p4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result p4

    invoke-static {v0, p2, v1, p4}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarGaugeSize(IFZZ)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p4, p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;-><init>(ILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p4

    iget p4, p4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    invoke-direct {p1, p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p4

    iget p4, p4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const-string v1, "1.0x"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p1, p2, v1, v2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p2, 0x2

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mRtl:Z

    return-void
.end method


# virtual methods
.method public final applyToZoomSegmentValueList(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutNeeded:Z

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearRotation()V
    .locals 0

    return-void
.end method

.method public final getHideDelay()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSegmentRatios()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 0

    return-object p0
.end method

.method public final getUnitSegWidth()I
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v0

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarTotalDegree(II)F

    move-result v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    int-to-float p0, v2

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x6c

    return p0
.end method

.method public final loadTexture()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v1, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateCursorPostTranslation()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v2, v4

    sub-float/2addr v2, v4

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updatePostTranslation(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v3, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    monitor-enter v3

    :try_start_0
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateOutlineSize()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f060482

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    monitor-enter v4

    :try_start_1
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    aput v6, v5, v0

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    aput v5, v0, v2

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    const/4 v6, 0x2

    aput v5, v0, v6

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mBgColor:[F

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    const/4 v5, 0x3

    aput v3, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {p4, p2, p3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V
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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    invoke-static {v5, v8, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v6, v5

    if-gez v5, :cond_2

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_2

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDownPressed:Z

    if-eqz v4, :cond_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDownPressed:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDownPressed:Z

    :cond_4
    :goto_0
    invoke-super {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v2
.end method

.method public final resetActiveSegment()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
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

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setLensText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSegmentRatios(IIII)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez p2, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez p3, :cond_2

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez p4, :cond_3

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->applyToZoomSegmentValueList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setSegmentRatios(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->applyToZoomSegmentValueList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setSegmentWidth([Landroid/util/Range;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSegmentWidth([Landroid/util/Range;ZF)V
    .locals 0

    .line 2
    return-void
.end method

.method public final setValue(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v0, 0x16

    invoke-direct {p2, p1, v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized setVisibility$3(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
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

.method public final setZoomCompStyle(Z)V
    .locals 0

    return-void
.end method

.method public final setZoomShortcutBottomYOffset(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutBottomYOffset:F

    return-void
.end method

.method public final setZoomShortcutCb(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mShortcutCallback:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final updateCursorPostTranslation()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateCutoutRect(Z)V
    .locals 10

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOrientation:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpl-float v3, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/high16 v3, -0x3c790000    # -270.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v6

    :goto_2
    div-float/2addr v6, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledWidth()F

    move-result v6

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledWidth()F

    move-result v1

    :goto_4
    div-float/2addr v1, v3

    goto :goto_5

    :cond_3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v1

    goto :goto_4

    :goto_5
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mPreHalfWidth:F

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_4
    iget p1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v2, p1, v6

    add-float/2addr p1, v6

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v7, v0, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v3

    div-float/2addr v2, v9

    aput v2, v8, v5

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v0, v1

    aput v0, v8, v4

    const/4 v0, 0x2

    div-float/2addr p1, v9

    aput p1, v8, v0

    const/4 p1, 0x3

    div-float/2addr v7, v1

    aput v7, v8, p1

    iput v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mPreHalfWidth:F

    return-void
.end method

.method public final updateLayoutSize(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    invoke-static {v1, v2, p1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarGaugeSize(IFZZ)I

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateCursorPostTranslation()V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr p1, v0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateOutlineSize()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutNeeded:Z

    :cond_0
    return-void
.end method

.method public final updateOutlineSize()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/motorola/camera/SecureDataHelper;

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v0, v4

    invoke-direct {v2, v3, v0, v0, v3}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setRect(Lcom/motorola/camera/SecureDataHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->mRadius:F

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updatePostTranslation(Z)V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mLayoutHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr v0, v2

    sub-float/2addr v0, v2

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v0, v3

    const/high16 v3, 0x42000000    # 32.0f

    sub-float/2addr v0, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mDensity:F

    mul-float/2addr v0, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v5

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v7, v4, p1, v5}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarGaugeSize(IFZZ)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v8

    if-eqz v8, :cond_0

    div-float/2addr v7, v1

    :cond_0
    mul-float v8, v4, v1

    div-float/2addr v7, v8

    float-to-double v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v12, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v8}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAspectRatioSquare()Z

    move-result v9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isSplitScreen()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v2, v6

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v0

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    if-eqz v0, :cond_3

    const p1, 0x3e99999a    # 0.3f

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityBottom:F

    goto :goto_0

    :cond_3
    sub-float v0, v7, v2

    div-float/2addr v0, p1

    iget-object p1, v9, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityBottom:F

    :goto_0
    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    div-float/2addr p1, v1

    sub-float/2addr v7, p1

    sub-float/2addr v7, v3

    mul-float/2addr v7, v4

    if-eqz v5, :cond_4

    add-float/2addr p1, v3

    mul-float v7, p1, v4

    goto :goto_1

    :cond_4
    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAspectRatioSquare()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutBottomYOffset:F

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v7, p1, v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/high16 p1, 0x42880000    # 68.0f

    mul-float/2addr v4, p1

    sub-float/2addr v7, v4

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {p0, v6, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method
