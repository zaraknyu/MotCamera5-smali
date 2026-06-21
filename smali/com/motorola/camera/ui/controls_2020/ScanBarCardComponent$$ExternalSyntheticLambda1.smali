.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->currentTidbit:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    return-void

    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->currentTidbit:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
