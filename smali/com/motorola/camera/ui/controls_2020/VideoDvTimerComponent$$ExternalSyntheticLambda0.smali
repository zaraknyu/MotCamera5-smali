.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerRunnable:Landroidx/core/provider/CallbackWrapper$2;

    iget-object v1, v0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerRunnable:Landroidx/core/provider/CallbackWrapper$2;

    iget p0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v1, 0x7f120655

    invoke-static {v1, p0, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->DV_AUTO:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerRunnable:Landroidx/core/provider/CallbackWrapper$2;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/core/provider/CallbackWrapper$2;->val$reason:I

    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper$2;->val$callback:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateLandscapeViewRotation(Landroid/view/View;)V

    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoDvTimerComponent;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
