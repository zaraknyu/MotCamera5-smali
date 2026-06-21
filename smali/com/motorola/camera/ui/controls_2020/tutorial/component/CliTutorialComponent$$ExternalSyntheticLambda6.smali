.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 p2, 0xf

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->menuSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->show()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 p2, 0xf

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->menuSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->show()V

    :cond_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
