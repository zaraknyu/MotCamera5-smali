.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isReady:Z

.field public final mAutoFpsTimer:I

.field public final maxDuration:I

.field public final maxDurationShowTime:I

.field public nextTaskScheduledTime:J

.field public final taskList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->taskList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoMaxDurationParam(Z)[I

    move-result-object p1

    const v0, 0xea60

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->maxDurationShowTime:I

    const/4 v1, 0x1

    aget p1, p1, v1

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->maxDuration:I

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoAutoFpsTimer()I

    move-result p1

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->mAutoFpsTimer:I

    return-void
.end method


# virtual methods
.method public final addAllTask()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->taskList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->maxDuration:I

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoMaxDurationParam(Z)[I

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_4

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v5, 0x12

    invoke-direct {v4, v2, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    int-to-long v5, v3

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v4, 0x13

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->maxDurationShowTime:I

    int-to-long v4, v4

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;

    invoke-direct {v6, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsAllowed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;

    const/16 v4, 0x14

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;I)V

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->mAutoFpsTimer:I

    int-to-long v4, v2

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;

    iget-wide v0, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask$Task;->scheduledTime:J

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$RecorderTimingTask;->nextTaskScheduledTime:J

    :cond_7
    return-void
.end method
