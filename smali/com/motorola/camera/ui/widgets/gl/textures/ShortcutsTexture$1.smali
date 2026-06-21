.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static ITEM_SIZE:F = 40.0f


# instance fields
.field public final mDensity:F

.field public final mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSelected:Z

.field public final mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mZoomValue:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;I)V
    .locals 7

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mDensity:F

    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    sput p1, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-boolean p1, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    const/4 p1, 0x2

    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mZoomValue:I

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

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

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->offset(FF)V
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

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public final isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mSelected:Z

    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->ITEM_SIZE:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mDensity:F

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    monitor-enter v1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public final declared-synchronized onPreDraw([F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z
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

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mSelected:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->mShortcutCallback:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mZoomValue:I

    int-to-float p0, p0

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->zoomingHapticFeedback()V

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    if-eqz p3, :cond_4

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/motorola/camera/utility/ZoomSegment;->T_E:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    filled-new-array {p3, v0, v1, v2, v3}, [Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/compose/runtime/Latch;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v0

    move v1, p5

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez v3, :cond_1

    move-object v3, p4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-virtual {p1, p2, p0, p5, p3}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/utility/ZoomSegment;FZLcom/motorola/camera/settings/CameraType;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/IZoomSliderBar;->getHideDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, p5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(JZ)V

    return-void

    :cond_5
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture$1;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
