.class public final synthetic Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeCallback:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveCallback:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Landroidx/compose/runtime/Latch;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/VideoFormat;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    invoke-static {v3, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    iget-object v4, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4, v2, v1, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->syncVideoFormat(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/VideoFormat;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Latch;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->refreshZoomLimit()V

    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->refreshZoomLimit()V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->consistZoomBlendingWithMain(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)V

    iget-object v4, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4, v1, v0, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v1

    sget-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v4, "SETTING_UPDATE_TYPE"

    const-string v5, "MODE"

    const-string v6, "SETTING"

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Landroid/util/Size;

    sget-object v8, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v1, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/VideoFormat;

    sget-object v11, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    invoke-direct {v10, v8, v11, v2}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v10, v8}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    iget-object v11, v9, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v11, v8, v9, v10}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "PREVIOUS_VALUE"

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
