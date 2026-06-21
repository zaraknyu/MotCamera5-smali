.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnTimelineEditCallback;
.implements Lcom/motorola/camera/ui/widgets/TrimSeekBar$OnFrameUpdateCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameUpdate(I)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    int-to-long v1, p1

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v3, p1

    mul-long/2addr v3, v1

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v3, v4}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->schedulePlaybackSpeedChangeMessages()V

    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
