.class public final synthetic Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

.field public final synthetic f$1:Lcom/motorola/camera/utility/Error;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/motorola/camera/utility/Error;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/utility/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/utility/Error;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/motorola/camera/utility/Error;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/utility/Error;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/motorola/camera/utility/Error;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
