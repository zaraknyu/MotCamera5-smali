.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->getClickEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "get(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateSettingValue(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
