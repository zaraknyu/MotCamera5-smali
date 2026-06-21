.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

.field public final notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->LISTENED_STATES:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    const-string v1, "ofPattern(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->notifierListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object p0

    new-instance v0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p3}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    const/4 p3, 0x1

    invoke-direct {p1, v0, p3}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p2, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda43;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p4, p3, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda43;-><init>(Landroid/widget/TextView;Lkotlin/jvm/functions/Function2;Landroidx/lifecycle/LiveData;I)V

    new-instance v2, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->getLifecycleOwner()Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$AppInfoLifecycleOwner;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda43;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p4, p2, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda43;-><init>(Landroid/widget/TextView;Lkotlin/jvm/functions/Function2;Landroidx/lifecycle/LiveData;I)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p3, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setupTextView(I)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
