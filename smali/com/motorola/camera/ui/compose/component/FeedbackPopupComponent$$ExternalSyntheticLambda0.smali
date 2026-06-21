.class public final synthetic Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v0, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;->openMotFeedback(Landroid/content/Context;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast v0, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;->openMotFeedback(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/FeedbackPopupComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->viewModel:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/compose/viewmodel/FeedbackPopupComponentViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIMES_SHOWN_FEEDBACK_POPUP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ANALYTICS_FEEDBACK_POPUP_ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logOneOffEvent(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->setVisible(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
