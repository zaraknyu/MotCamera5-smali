.class public final synthetic Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsModesMenuOpen:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    iget v1, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    if-nez p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->handleAlwaysOnToastsStateChange()Z

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mIsControlPanelOpen:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->isToastVisible$2()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
