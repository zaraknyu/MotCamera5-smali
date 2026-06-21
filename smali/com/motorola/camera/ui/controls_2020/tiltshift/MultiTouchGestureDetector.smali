.class public final Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hasMultiTouchOccurred:Z

.field public initialTouchX:F

.field public initialTouchY:F

.field public lastAngle:F

.field public lastPointerCount:I

.field public lastTouchX:F

.field public lastTouchY:F

.field public final listener:Lcom/motorola/camera/SecureDataHelper;

.field public prevAngle:Ljava/lang/Float;

.field public final scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/CameraApp;Lcom/motorola/camera/SecureDataHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;->listener:Lcom/motorola/camera/SecureDataHelper;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector$scaleGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector$scaleGestureDetector$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method
