.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;


# instance fields
.field public mActiveSegment:I

.field public final mCallback:Lcom/motorola/camera/PermissionCallback;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public final mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

.field public final mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

.field public final mRtl:Z

.field public mSegmentMeterRange:[Landroid/util/Range;

.field public mSliderScale:F

.field public mStaggeredMeter:Z

.field public final mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

.field public mZoomSegmentValueList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PermissionCallback;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSliderScale:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/PermissionCallback;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, p4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mRtl:Z

    return-void
.end method

.method public static zoomReflect(F)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final getHideDelay()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getLayoutSize()Landroid/graphics/PointF;

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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTexture()Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 0

    return-object p0
.end method

.method public final getUnitSegWidth()I
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    array-length v5, v4

    sub-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v5, v2, v5

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v5, :cond_1

    cmpg-float v5, v0, v6

    if-gez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v5, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v0

    mul-float/2addr v0, v6

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_4
    move v2, v6

    :cond_5
    float-to-double v0, v0

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p0, v0

    int-to-float v0, v4

    div-float/2addr v0, p0

    const/high16 p0, 0x40e00000    # 7.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public final loadTexture()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v1, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    mul-float v6, v5, v2

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    invoke-virtual {v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float/2addr v0, v5

    invoke-virtual {v4, v5, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->loadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->updatePostTranslation(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

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

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method public final resetActiveSegment()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->setAlpha(F)V
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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

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
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 8
    :cond_4
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0, v0}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSegmentRatios(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSegmentWidth([Landroid/util/Range;Z)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setSegmentWidth([Landroid/util/Range;ZF)V

    return-void
.end method

.method public final setSegmentWidth([Landroid/util/Range;ZF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    goto :goto_1

    .line 3
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Range;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSegmentMeterRange:[Landroid/util/Range;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, p1, v0

    .line 6
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    .line 9
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mSliderScale:F

    .line 10
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 p3, 0x15

    invoke-direct {p1, p0, p2, p3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setValue(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/16 v0, 0x17

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
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mStyle:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->layout$4()V

    return-void
.end method

.method public final setZoomShortcutBottomYOffset(F)V
    .locals 0

    return-void
.end method

.method public final setZoomShortcutCb(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;)V
    .locals 0

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCursorTexture:Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->unloadTexture()V

    return-void
.end method

.method public final updateLayoutSize(Z)V
    .locals 0

    return-void
.end method

.method public final updatePostTranslation(Z)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomCombTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, p1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float p0, p0

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p0

    sub-float/2addr v2, p1

    iget p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mTexHeight:F

    div-float/2addr p0, v3

    add-float/2addr p0, v2

    const/high16 p1, 0x41c00000    # 24.0f

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42bc0000    # 94.0f

    mul-float/2addr v0, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method
