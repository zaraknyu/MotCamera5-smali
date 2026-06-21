.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$1:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$2:Z

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    :cond_1
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$1:Z

    if-eqz v3, :cond_3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$$ExternalSyntheticLambda2;->f$2:Z

    invoke-virtual {v1, p0}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p0, :cond_2

    const p0, 0x7f12056e

    goto :goto_0

    :cond_2
    const p0, 0x7f12055d

    :goto_0
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->captureButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
