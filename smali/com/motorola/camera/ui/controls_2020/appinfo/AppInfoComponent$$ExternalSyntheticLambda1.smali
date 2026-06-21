.class public final synthetic Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    const-string/jumbo v2, "setCurrentState"

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->inflateViewStub()V

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    const-string/jumbo v2, "setCurrentState"

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const v2, 0x7f0a0075

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    const v3, 0x7f0a01de

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x7f0a01ab

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0518

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a036c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a01d3

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a01d2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0283

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a02a0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a008e

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bYHistAva:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0287

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lightLuxValueFront:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0288

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lightLuxValueRear:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a02a1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isz:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a03ca

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a008c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a038b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a046d

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0a005d

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a00ba

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    :cond_4
    const v2, 0x7f0a03cb

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a036b

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewScene:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftMoonDetect:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lkotlin/coroutines/CombinedContext$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x7f0a0051

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a005c

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Landroidx/compose/runtime/Latch;

    iget-object v0, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/tinder/StateMachine;

    const v2, 0x7f0a037f

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a04cb

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x1c

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motDrsdv2:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    const/16 v5, 0x1d

    invoke-direct {v4, v5}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bstDrsd:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->jgDrsd:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x7f0a0503

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->antiBandingState:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a02dd

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motNVDetect:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->videoHdrState:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
