.class public final synthetic Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/CameraKpi;

.field public final synthetic f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/CameraKpi;

    iput-object p2, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-object p3, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-void
.end method


# virtual methods
.method public final onVideoReady()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideo:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "ImageCaptureManager"

    const-string v2, "Missing active photo video file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0, p0}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void
.end method
