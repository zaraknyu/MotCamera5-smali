.class public final Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
