.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;->captureBarOverlayControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarPerfectMeOverlayControls;->captureBarOverlayControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
