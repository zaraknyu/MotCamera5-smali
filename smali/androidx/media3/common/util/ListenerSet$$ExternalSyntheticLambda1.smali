.class public final synthetic Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Lkotlin/text/Regex$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 3
    const/16 p3, 0x8

    iput p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Lcom/motorola/camera/PreviewSize;I)V
    .locals 1

    .line 4
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget v6, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    check-cast v5, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    check-cast v5, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v4, p0

    check-cast v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    :cond_0
    if-eqz v4, :cond_2

    iget-object p0, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    iget-boolean p0, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->isVideoUri:Z

    if-eqz p0, :cond_1

    iget-object p0, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    goto :goto_0

    :cond_1
    iget-object p0, v4, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->endViewParameter(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v5}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->disableScroll:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/SnapHelper$2;

    invoke-direct {v1, p0, v0, v2}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput v6, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_3
    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->setSelectedLayout(I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/service/BgJobService;

    check-cast v5, Landroid/os/Bundle;

    sget v0, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    const/16 v0, 0x64

    if-eq v6, v0, :cond_6

    const/16 v0, 0xc8

    if-eq v6, v0, :cond_5

    const/16 v0, 0x12c

    if-eq v6, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v4}, Lcom/motorola/camera/service/BgJobService;->saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :goto_1
    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    check-cast v5, Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v5, v0}, Lcom/motorola/camera/VideoHelper;->isDVPreviewSize(Lcom/motorola/camera/PreviewSize;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v6, v6, 0x5a

    rem-int/lit16 v6, v6, 0x168

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->countdownAnim:Landroid/view/animation/AlphaAnimation;

    check-cast v5, Ljava/lang/String;

    iget v4, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timerType:I

    const/4 v7, 0x4

    if-lez v4, :cond_19

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v8, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v8, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerLayout:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    int-to-long v8, v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3

    if-eq v4, v3, :cond_15

    const v0, 0x7f0801dc

    const/4 v3, 0x3

    if-eq v4, v2, :cond_13

    if-eq v4, v3, :cond_c

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    cmp-long v2, v8, v10

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_e
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_f

    const v1, 0x7f11001f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_11
    const-wide/16 v0, 0x2

    cmp-long v0, v8, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->animateProgress$1(FF)V

    goto :goto_2

    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->animateProgress$1(FF)V

    goto :goto_2

    :cond_13
    int-to-long v2, v3

    sub-long/2addr v2, v8

    long-to-float v2, v2

    const v3, 0x3eaa7efa    # 0.333f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    add-float/2addr v3, v2

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->animateProgress$1(FF)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_2

    :cond_15
    cmp-long v1, v8, v10

    if-nez v1, :cond_16

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1c

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_2

    :cond_16
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_19
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->gestureTimerLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1c
    :goto_2
    return-void

    :pswitch_5
    check-cast p0, Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/tasks/zzad;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    check-cast v5, Landroid/content/IntentSender$SendIntentException;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v1, v0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void

    :pswitch_7
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    check-cast v5, Lcom/google/firebase/components/Component$$Lambda$2;

    iget-object v0, v5, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->rcToKey:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1d

    goto :goto_3

    :cond_1d
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->keyToCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    if-eqz v2, :cond_1e

    iget-object v4, v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->callback:Landroidx/activity/result/ActivityResultCallback;

    :cond_1e
    if-nez v4, :cond_1f

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry;->parsedPendingResults:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1f
    iget-object v2, v2, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->callback:Landroidx/activity/result/ActivityResultCallback;

    const-string v3, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-interface {v2, v0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    :cond_20
    :goto_3
    return-void

    :pswitch_8
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v5, Landroidx/media3/common/util/ListenerSet$Event;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-boolean v1, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-eq v6, v1, :cond_22

    iget-object v1, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/DownUpDetector;->add(I)V

    :cond_22
    iput-boolean v3, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v0, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v5, v0}, Landroidx/media3/common/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    goto :goto_4

    :cond_23
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
