.class public final Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public final audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

.field public final audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

.field public final mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

.field public mAudioLensSwitchSetup:Z

.field public final mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

.field public mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

.field public mIsDrawMaster:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p2, p0, v0, v1}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    new-instance p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p2, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 9

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->loadTexture()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->registerListener$9(Z)V

    return v0
.end method

.method public final onDraw([F[F[F)V
    .locals 6

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-wide v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->makeCurrent()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v2, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v3, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    iget-object p2, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide v3, p2, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/utility/EGLHelper;->swapBuffers(J)Z

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit p3

    return-void

    :goto_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mIsDrawMaster:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p1, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onStatus(I)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "MediaCodecComponent"

    const-string/jumbo v0, "unknown audio lens switch status:"

    invoke-static {v0, p1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLandscapeLayout()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v7, p1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p0, p2}, Lcom/motorola/camera/VideoHelper;->isDVPreviewSize(Lcom/motorola/camera/PreviewSize;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, -0x3d4c0000    # -90.0f

    const/4 p2, 0x0

    invoke-static {v1, p0, p2, p2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v2, v1

    rem-int/lit16 p0, p4, 0xb4

    if-nez p0, :cond_5

    add-int/lit16 p4, p4, 0xb4

    rem-int/lit16 p4, p4, 0x168

    :cond_5
    move v3, p4

    new-instance v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-object p0, p3

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v5, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;

    move-object v7, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;-><init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    const-string p0, "MediaCodecComponent"

    const-string p1, "Capture failed due to invalid bitmap"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final registerListener$9(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda3;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final declared-synchronized setupAudioLensSwitch()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/utility/ColorUtil;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->initAudioLensSwitch(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->setupAudioRecord(Lcom/motorola/camera/PreviewSize;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "MediaCodecComponent"

    const-string v2, "Failed to get CameraPreview component, skip to update audio lens switch flag"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final setupPreviewSize$1(Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCLICodecVideoSize(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_2
    return-void
.end method

.method public final startAudioLensSwitchAnimation(FZ)V
    .locals 24

    move/from16 v5, p1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_0

    const-string v0, "MediaCodecComponent"

    const-string v1, "Failed to get CameraPreview component, skip to update dual capture texture alpha"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$3;

    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v11, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v12, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p2, :cond_1

    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    const v13, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    cmpl-float v14, v5, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    if-nez v14, :cond_2

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_2
    cmpl-float v0, v5, v0

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v15, v1, v0

    invoke-virtual {v11, v15}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;FI)V

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v7, 0x0

    const-wide/16 v2, 0x12c

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v11, v0, v15}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    filled-new-array {v10, v12}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget v2, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    if-nez v14, :cond_4

    move/from16 v20, v13

    goto :goto_0

    :cond_4
    move/from16 v20, v5

    :goto_0
    if-nez v14, :cond_5

    move v13, v5

    :cond_5
    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v13, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;FI)V

    const-wide/16 v18, 0x12c

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move/from16 v22, v6

    move/from16 v21, v13

    invoke-direct/range {v16 .. v23}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    move-object/from16 v2, v16

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v11, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget v1, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void

    :cond_6
    invoke-virtual {v12, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    sub-float v2, v1, v5

    invoke-virtual {v10, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    cmpl-float v0, v5, v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v8, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAudioLensSwitchTextureVisibility(ZZ)V

    cmpl-float v0, v5, v1

    if-nez v0, :cond_8

    move v13, v5

    :cond_8
    invoke-virtual {v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_9
    :goto_2
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInOverlayState()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupPreviewSize$1(Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupAudioLensSwitch()V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupPreviewSize$1(Lcom/motorola/camera/PreviewSize;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->setSelfieFlip(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTimestamp:J

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;

    move-result-object v0

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    sget-object v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v7, "MediaCodecEngine"

    iget-object v8, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v9, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v9}, Lcom/motorola/camera/utility/Flags;->clear()V

    invoke-static {v5}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Setup media codec with invalid preview size: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v8, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_3

    :cond_3
    iput-object v5, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-boolean v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {}, Lcom/motorola/camera/Util;->stopBluetoothSco()V

    :cond_4
    iput-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_5
    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_6

    iget v0, v5, Lcom/motorola/camera/PreviewSize;->width:I

    iget v10, v5, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, v10}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_6
    :try_start_0
    new-instance v0, Landroidx/room/RoomConnectionManager;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;

    move-result-object v10

    new-instance v11, Landroidx/compose/ui/graphics/vector/DrawCache;

    invoke-direct {v11, v4, v1}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V

    invoke-direct {v0, v10, v11, v2}, Landroidx/room/RoomConnectionManager;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;I)V

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    iput-boolean v3, v0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v10, "createInputSurface(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/motorola/camera/Util;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioCodecHelper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_8
    :goto_0
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    new-instance v10, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v10, v4, v5, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Lcom/motorola/camera/PreviewSize;I)V

    invoke-direct {v0, v3, v10}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureTime:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mUUID:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    goto :goto_1

    :cond_9
    move-object v3, v1

    :goto_1
    iput-object v3, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    iput v3, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureMode:I

    iput-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {v3, v0, v10, v11}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v1

    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iput p0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    iput-object v3, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    iput-object v1, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    new-instance p0, Landroid/media/MediaMuxer;

    iget-object v0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v9, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v8, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "setup failed,filename:%s,message:%s"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v8, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create encoder:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    iput-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    iput-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v8, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_3
    const-string p0, "KEY_CODE"

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v2

    int-to-long v2, v2

    new-instance v5, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    long-to-int v2, v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v5, p1}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v6, "SEQ_ID"

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v0, "ANALYTICS_SEQID"

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "SEQID"

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    sget-object v0, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v0

    iget-object v1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {p0, v5, v0, v1}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v0, p0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    iput-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    goto/16 :goto_d

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter v4

    :try_start_2
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_b

    monitor-exit v4

    goto/16 :goto_d

    :cond_b
    :try_start_3
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz p0, :cond_c

    iget-object p1, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/EGLHelper;->createWindowSurface(Landroid/view/Surface;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->startEngine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_4
    const-string p1, "MediaCodecEngine"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f12017f

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit v4

    goto/16 :goto_d

    :goto_7
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter v4

    :try_start_6
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez p0, :cond_e

    monitor-exit v4

    return-void

    :cond_e
    :try_start_7
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseTime:J

    iget p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseCount:I

    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz p0, :cond_f

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_f
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz p0, :cond_10

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_10
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v4

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter v4

    :try_start_9
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez p0, :cond_12

    monitor-exit v4

    return-void

    :cond_12
    :try_start_a
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz p0, :cond_13

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_13
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz p0, :cond_14

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_14
    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object p0, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v4

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_16
    move-object v4, v1

    goto :goto_9

    :cond_17
    :goto_8
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    :goto_9
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result v9

    if-eqz v9, :cond_18

    sget-object v9, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    goto :goto_a

    :cond_18
    sget-object v9, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    :goto_a
    invoke-direct {v7, v5, v2, v4, v9}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v4, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    sget-object v2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v2, v1}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v7, v6}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;II)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, v4}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    move-object v5, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-virtual {v7, v6}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez p1, :cond_1c

    move-object v0, v1

    goto :goto_b

    :cond_1c
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :goto_b
    if-eqz v0, :cond_1e

    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_MIRROR_EFFECT_NAME"

    if-nez p1, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :goto_c
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, v4}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result p0

    if-eqz p0, :cond_20

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_20
    invoke-virtual {v7, v6}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p0, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :cond_21
    move-object v5, p0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, v5, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw p1

    :cond_22
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->stopAudioLensSwitch()V

    iget-object p0, v5, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    monitor-enter p0

    :try_start_e
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    move-object p1, v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw p1

    :cond_23
    :goto_d
    return-void
.end method

.method public final declared-synchronized stopAudioLensSwitch()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopAudioRecordAndAudioCodecHelper()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    sget-object v0, Lcom/motorola/camera/utility/ColorUtil;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->stopAudioLensSwitch()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_1

    const-string v0, "MediaCodecComponent"

    const-string v2, "Failed to get CameraPreview component, skip to reset audio lens switch textures"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->resetAudioLensSwitchTextures()V

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final unloadTextures()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->unloadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->registerListener$9(Z)V

    return-void
.end method
