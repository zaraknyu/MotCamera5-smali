.class public final synthetic Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ImageButton;Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;)V
    .locals 0

    .line 2
    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "getContext(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/BasePlayer;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    monitor-exit p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->pauseVideo()V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    monitor-enter p0

    :try_start_1
    iget-wide v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    sget-wide v6, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->currentActiveMediaId:J

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-eqz p1, :cond_2

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_2

    check-cast p1, Landroidx/media3/common/BasePlayer;

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    :cond_2
    sput-wide v4, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->currentActiveMediaId:J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {p1, v4, v5}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playbackState:I

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/media3/common/BasePlayer;

    const/4 v1, 0x5

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    :cond_4
    check-cast p1, Landroidx/media3/common/BasePlayer;

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->clickControl()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->clickControl()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->disableClick:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-static {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableManual$default(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->triggerFaceBeautyVideo(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    goto :goto_4

    :cond_8
    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    :cond_a
    :goto_4
    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->disableClick:Z

    if-nez p1, :cond_c

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->enableRedDot(Z)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/MotionCaptureComponent;->controlFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RELOAD_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_c
    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->onItemSelected(I)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1, v3, v0}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->getCollageEditorIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
