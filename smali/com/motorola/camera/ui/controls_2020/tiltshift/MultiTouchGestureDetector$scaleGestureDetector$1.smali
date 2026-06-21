.class public final Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector$scaleGestureDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector$scaleGestureDetector$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector$scaleGestureDetector$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tiltshift/MultiTouchGestureDetector;->listener:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->isSingleFingerSelected:Z

    iget-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->isDoubleFingerSelected:Z

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;

    new-instance v0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->mLineSegment:Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;

    invoke-direct {v0, v2}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;-><init>(Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;)V

    invoke-virtual {v0, p1, p1}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->scaleAroundCenter(FF)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->mAngleOfParallelLines:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->mPreviewBounds:Lcom/motorola/camera/utility/TiltShiftUtil$Rectangle;

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->createRotatedBounds(FLcom/motorola/camera/utility/TiltShiftUtil$Rectangle;)Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->contains(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->contains(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->mLineSegment:Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;

    invoke-virtual {v0, p1, p1}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->scaleAroundCenter(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AxisTexture;->updateTiltShiftParameters()V

    return v1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const-string p0, "detector"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const-string p0, "detector"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
