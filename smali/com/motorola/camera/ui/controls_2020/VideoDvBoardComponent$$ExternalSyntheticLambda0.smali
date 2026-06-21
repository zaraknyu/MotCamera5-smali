.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowState:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->animateFade(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDvPostureAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->animateFade(Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mExitButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mExitButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mExitButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTutorialShowing:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvExit()V

    :cond_7
    return-void

    :pswitch_6
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTimerCounting:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mTutorialShowing:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvExit()V

    :cond_9
    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvExit()V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvChange()V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_a

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void

    :pswitch_b
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    return-void

    :pswitch_e
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFadeAnimRunning:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mBoardRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mAllowState:Z

    return-void

    :pswitch_10
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->updateDirectionButton(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
