.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$3;
.super Lcom/motorola/camera/utility/AnimationListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$3;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$startFlipAnimation$3;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void
.end method
