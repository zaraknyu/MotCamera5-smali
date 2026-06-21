.class public final Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceDetectedCallback;


# instance fields
.field public mAllowSwitchState:Z

.field public final mFaceFilter:[I

.field public mFaceIndex:I

.field public mForbidAutoSwitch:Z

.field public mLandscape:Z

.field public mMultiFace:Z

.field public mOrientation:I

.field public mPendingSwitch:Z

.field public mStartOrientation:I

.field public mStartRotationDegree:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mFaceFilter:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mFaceIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartRotationDegree:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    return-void
.end method


# virtual methods
.method public final facesDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    array-length v3, p1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v8, v8, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const/high16 v9, 0x40600000    # 3.5f

    div-float/2addr v8, v9

    float-to-int v8, v8

    const/16 v9, 0x50

    if-lt v5, v9, :cond_e

    if-lt v7, v8, :cond_e

    if-ge v6, v8, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mAllowSwitchState:Z

    if-nez p1, :cond_3

    goto/16 :goto_7

    :cond_3
    if-le v1, v2, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    const/4 v4, -0x1

    if-eq p1, v3, :cond_5

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    if-ne p1, v4, :cond_6

    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mLastRawOrientation:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mOrientation:I

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartRotationDegree:I

    rsub-int v3, p1, 0x168

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartRotationDegree:I

    goto :goto_3

    :cond_5
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    :cond_6
    :goto_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mFaceIndex:I

    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mFaceIndex:I

    rem-int/lit8 p1, p1, 0x1e

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mFaceFilter:[I

    aput v1, v3, p1

    array-length p1, v3

    move v1, v0

    move v5, v1

    :goto_4
    if-ge v1, p1, :cond_8

    aget v6, v3, v1

    if-le v6, v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    array-length p1, v3

    if-ne v5, p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    if-nez v5, :cond_a

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mLastRawOrientation:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int v1, p1, 0x168

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartRotationDegree:I

    add-int/2addr v1, p1

    const/16 v2, 0x2d

    if-le v1, v2, :cond_c

    const/4 v1, 0x5

    if-le p1, v1, :cond_c

    const/4 p1, 0x2

    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_6

    :cond_c
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->handleFovSwitch()V

    :goto_6
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    return-void

    :cond_d
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mStartOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->handleFovSwitch()V

    :cond_e
    :goto_7
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 5

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final handleFovSwitch()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mForbidAutoSwitch:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mAllowSwitchState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mPendingSwitch:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mLandscape:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    :goto_1
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleJump(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mAllowSwitchState:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final isMultiFace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mMultiFace:Z

    return p0
.end method

.method public final registerFaceDetectedListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceDetectedCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    monitor-enter v0

    :try_start_2
    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceDetectedCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "AutoFovSwitchViewModel"

    const-string/jumbo p1, "registerFaceDetectedListener: FaceUiComponent is null or not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mAllowSwitchState:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mPendingSwitch:Z

    if-eqz p1, :cond_4

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mPendingSwitch:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->handleFovSwitch()V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mAllowSwitchState:Z

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_FOV_SWITCH:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->registerFaceDetectedListener(Z)V

    :cond_2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->mForbidAutoSwitch:Z

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/AutoFovSwitchViewModel;->registerFaceDetectedListener(Z)V

    return-void
.end method
