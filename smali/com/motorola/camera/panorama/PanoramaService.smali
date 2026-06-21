.class public final Lcom/motorola/camera/panorama/PanoramaService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    invoke-direct {p1}, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VSyncManager"

    const/4 v1, -0x4

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
