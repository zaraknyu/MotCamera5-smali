.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:Z

    if-eqz p0, :cond_0

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCapturePIPHorizontalGuideline()F

    move-result v2

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result p0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->setDualCaptureSwapButtonGuideLinePosition(FFZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda6;->f$1:Z

    if-eqz p0, :cond_2

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->mRotation:F

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->getRotation$1$1()F

    move-result v1

    :goto_2
    if-eqz p0, :cond_3

    iget p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->mRotationX:F

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->getRotationX$1()F

    move-result p0

    :goto_3
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->updateRotation(FF)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->startFlipAnimation(Landroid/view/View;J)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
