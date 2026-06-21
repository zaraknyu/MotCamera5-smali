.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->hideBySpotColorDrag:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->animateShow()V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->hideBySpotColorDrag:Z

    :cond_7
    return-void

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isSnapshotSupportInConfigurations()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->animateShow()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->hideBySpotColorDrag:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->animateShow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->hideBySpotColorDrag:Z

    :cond_f
    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
