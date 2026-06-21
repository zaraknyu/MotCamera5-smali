.class public final Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBuffer:Ljava/nio/ByteBuffer;

.field public final mImage:Landroid/media/Image;

.field public final synthetic this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ImageReaderWrapper;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iput-object p2, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->processAfterClose()V

    return-void
.end method

.method public final processAfterClose()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    iget-object v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
