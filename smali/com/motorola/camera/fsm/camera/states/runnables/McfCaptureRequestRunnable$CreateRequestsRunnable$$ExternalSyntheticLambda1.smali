.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

.field public final synthetic f$1:Lcom/motorola/camera/SecureDataHelper;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final synthetic f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;Lcom/motorola/camera/SecureDataHelper;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/SecureDataHelper;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/SecureDataHelper;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable$$ExternalSyntheticLambda1;->f$3:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    return-void
.end method
