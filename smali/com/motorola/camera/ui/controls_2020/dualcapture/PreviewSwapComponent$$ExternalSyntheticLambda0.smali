.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->show()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->getRotation$1$1()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->getRotationX$1()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->updateRotation(FF)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :cond_3
    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->previewSwap:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->startFlipAnimation(Landroid/view/View;J)V

    :cond_4
    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
