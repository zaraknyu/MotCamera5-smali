.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final fsmContextRef:Ljava/lang/ref/WeakReference;

.field public final shutterComponent:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;->shutterComponent:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;->fsmContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_BLOCKED_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;->fsmContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$ImageQueueListener;->shutterComponent:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->access$updateShutterEnabledState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method
