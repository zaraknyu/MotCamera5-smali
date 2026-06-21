.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$1;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
