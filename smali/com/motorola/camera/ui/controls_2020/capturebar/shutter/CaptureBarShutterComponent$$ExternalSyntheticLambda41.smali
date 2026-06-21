.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(ZZZLcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$0:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$1:Z

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$2:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$3:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iput-boolean p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$4:Z

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$5:Z

    iput-boolean p7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$1:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$2:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$3:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState$default(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$4:Z

    const/4 v5, 0x1

    if-ne v0, v3, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAllowClickWhenDisabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAllowClickWhenDisabled(Z)V

    invoke-virtual {v3}, Landroid/view/View;->cancelPendingInputEvents()V

    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v1

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$5:Z

    if-nez v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v2, v5

    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda41;->f$6:Z

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setIdle(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;ZZZ)V

    :cond_3
    return-void
.end method
