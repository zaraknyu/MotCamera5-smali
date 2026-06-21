.class public final synthetic Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerCountdown;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->setLocation()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->setLocation()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getGestureTimerProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->progressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->getCounterText()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown;->mStyle:Lcom/motorola/camera/ui/uicomponents/TimerCountdown$TimerStyle;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const/4 v1, 0x1

    const/high16 v2, 0x42900000    # 72.0f

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x41a00000    # 20.0f

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerCountdown$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerCountdown;

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
