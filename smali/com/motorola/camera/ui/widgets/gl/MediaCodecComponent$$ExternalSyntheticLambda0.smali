.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;II)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelsRead(Ljava/nio/Buffer;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
