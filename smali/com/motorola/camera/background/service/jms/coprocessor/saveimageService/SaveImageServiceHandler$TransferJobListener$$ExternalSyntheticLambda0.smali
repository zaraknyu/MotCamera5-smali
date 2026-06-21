.class public final synthetic Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/PermissionCallback;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/PermissionCallback;JI)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/PermissionCallback;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/PermissionCallback;

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/PermissionCallback;

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
