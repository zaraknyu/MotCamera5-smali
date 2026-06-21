.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->notifyPostCaptureListeners(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
