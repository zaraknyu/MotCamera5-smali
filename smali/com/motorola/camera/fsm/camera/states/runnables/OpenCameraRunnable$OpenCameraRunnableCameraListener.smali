.class public final Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMasterCameras:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/HashMap;

    return-void
.end method
