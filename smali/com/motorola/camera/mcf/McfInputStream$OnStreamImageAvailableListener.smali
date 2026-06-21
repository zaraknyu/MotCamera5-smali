.class public final Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/mcf/McfInputStream;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/McfInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmLock(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmIsStreamOpen(Lcom/motorola/camera/mcf/McfInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: stream is closed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmId(Lcom/motorola/camera/mcf/McfInputStream;)I

    move-result v2

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmCameraId(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmType(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toInt()I

    move-result v4

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmFormat(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->toInt()I

    move-result v5

    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$smnative_stream_process_image(ILjava/lang/String;IILandroid/media/Image;II)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageAvailable: process image failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: stream is not started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-nez v6, :cond_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onImageAvailable: failed with error: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
