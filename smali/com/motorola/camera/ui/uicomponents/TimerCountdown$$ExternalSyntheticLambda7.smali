.class public final synthetic Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0478

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
