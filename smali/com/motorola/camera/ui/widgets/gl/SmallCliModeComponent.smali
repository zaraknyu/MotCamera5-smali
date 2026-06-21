.class public final Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;
.super Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;


# instance fields
.field public final mMcfStateListener:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;

.field public mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

.field public mVideoRecording:Z

.field public mcfAutoNV:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mcfAutoNV:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mVideoRecording:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mMcfStateListener:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;

    return-void
.end method


# virtual methods
.method public final dirty()V
    .locals 0

    return-void
.end method

.method public final enableClick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 23

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->SECOND_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v22}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SmallCliModeComponent"

    return-object p0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadTextures()Z
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-direct {v3, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->loadTexture()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v5, v4

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLeftIgnoreArea:F

    int-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mRightIgnoreArea:F

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->setDisplayOrientation(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    invoke-direct {v4, v3}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v3, v4}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->setBarKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "loadTexture dur:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SmallCliModeComponent"

    invoke-static {v1, v2, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->onPreDraw([F[F[F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onRotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p2, p1

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLeftIgnoreArea:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mRightIgnoreArea:F

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mVideoRecording:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mMcfStateListener:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_20

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_9

    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-eqz p1, :cond_24

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_1
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_7

    :cond_8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_6

    :cond_9
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->animateModeFadeOut()V

    :cond_b
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mVideoRecording:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_9

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v5, v6, v7}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v0, v1, :cond_24

    :cond_d
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->animateModeFadeIn(ILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    :catchall_3
    move-exception p1

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1

    :cond_e
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-object v2, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PERMISSIONS_GRANTED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-eqz v0, :cond_24

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->animateModeFadeIn(ILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_9

    :catchall_4
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p1

    :cond_11
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    monitor-enter p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iput v4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    monitor-exit p1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0

    :cond_13
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->SECOND_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_14
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3

    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_24

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mcfAutoNV:Z

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mMcfStateListener:Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_18
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_19

    goto :goto_5

    :cond_19
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_5
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_1a

    goto :goto_9

    :cond_1a
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    goto :goto_9

    :cond_1b
    :goto_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_1c

    goto :goto_9

    :cond_1c
    monitor-enter p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v0, 0x3

    :try_start_15
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_9

    :catchall_6
    move-exception v0

    :try_start_17
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    throw v0

    :cond_1d
    :goto_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mVideoRecording:Z

    :cond_1e
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_1f

    goto :goto_9

    :cond_1f
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_9

    :cond_20
    :goto_8
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->enableClick(Z)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_21
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mVideoRecording:Z

    :cond_22
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    if-nez p1, :cond_23

    goto :goto_9

    :cond_23
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_24
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->unloadTexture()V

    return-void
.end method
