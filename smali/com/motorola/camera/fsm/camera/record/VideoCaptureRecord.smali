.class public final Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;
.super Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.source "SourceFile"


# instance fields
.field public mGesturePauseTime:Ljava/util/ArrayList;

.field public mGestureStopTime:J

.field public mIsDolbyVideoMode:Z

.field public mIsHDR10VideoMode:Z


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDolbyVisionMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mIsDolbyVideoMode:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mIsHDR10VideoMode:Z

    return-void
.end method
