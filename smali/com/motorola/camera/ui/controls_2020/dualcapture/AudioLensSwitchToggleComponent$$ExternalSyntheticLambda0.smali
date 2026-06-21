.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isRecording:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->audioLensSwitchSetting:Lcom/motorola/camera/settings/Setting;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isRecording:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
