.class public final Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mDensity:F

.field public mEnabledFastCaptureUITimer:Z

.field public final mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ModeSliderComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mDensity:F

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f120143

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mDensity:F

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineWidth:F

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mOutlineColor:I

    const/4 v2, 0x1

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mDensity:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "loadTexture dur:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ModeSliderComponent"

    invoke-static {v0, v1, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onRotate(I)V
    .locals 2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    :cond_1
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f120143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mFastCaptureUIRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method
