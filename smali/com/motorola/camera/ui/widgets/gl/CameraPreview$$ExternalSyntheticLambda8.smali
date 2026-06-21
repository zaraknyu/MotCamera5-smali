.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFirstFrame()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-nez p0, :cond_1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    :cond_2
    new-instance v2, Lcom/motorola/camera/CameraKpi;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    if-eqz p0, :cond_3

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-nez p0, :cond_5

    monitor-exit v0

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    :cond_6
    new-instance v2, Lcom/motorola/camera/CameraKpi;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/CameraKpi;Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_7
    if-eqz p0, :cond_8

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    if-eqz p0, :cond_9

    sget-object p0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnSmileCaptureDelay()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->turnOnGestureCaptureDelay()V

    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
