.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Landroid/util/ArraySet;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public controlPanelShowing:Z

.field public final ihcTypeSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public toggleButton:Landroid/widget/ImageButton;

.field public videoIdleState:Z

.field public vstabSettingIsIhc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->HIDE_STATES:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->ihcTypeSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final couldShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->vstabSettingIsIhc:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final freshIconRes(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0802ae

    goto :goto_0

    :cond_0
    const p1, 0x7f0802ad

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->toggleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->toggleButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v2, v4

    :cond_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    sub-float/2addr v2, v4

    :cond_1
    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a051b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->toggleButton:Landroid/widget/ImageButton;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->freshIconRes(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->toggleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->toggleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    new-instance v1, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070583

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/16 v4, 0x3a

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->vstabSettingIsIhc:Z

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->ihcTypeSettingListener:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->vstabSettingIsIhc:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result p1

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->HIDE_STATES:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "SETTING"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MODE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_a

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result p1

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result p1

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result p1

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    if-nez p1, :cond_9

    if-eqz v0, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
