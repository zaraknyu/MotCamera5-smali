.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureAndNormalProcessingLottieAnimate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$LottieAnimateListener;


# instance fields
.field public final synthetic $shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureAndNormalProcessingLottieAnimate$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureAndNormalProcessingLottieAnimate$1;->$shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureAndNormalProcessingLottieAnimate$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI$playCaptureAndNormalProcessingLottieAnimate$1;->$shutterState:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->playProcessingLottieAnimate(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void
.end method
