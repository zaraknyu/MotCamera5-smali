.class public final Lcom/motorola/camera/service/CameraForegroundServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;


# virtual methods
.method public final onJobTransferred(IZ)V
    .locals 0

    return-void
.end method

.method public final onQueueEmpty()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
