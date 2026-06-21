.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/PointF;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$3:F

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$4:F

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$0:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$5:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->setDualCaptureSwapButtonGuideLinePosition(FFZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$1:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$3:F

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda9;->f$4:F

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->updateRotation(FF)V

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    :cond_1
    iget-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->needToShow:Z

    if-nez p0, :cond_3

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->shouldHide:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->show()V

    return-void
.end method
