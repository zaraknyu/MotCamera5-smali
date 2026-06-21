.class public final synthetic Lkotlin/text/Regex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x2

    const-string/jumbo v2, "setting"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v6, 0x1

    iget-object v7, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast v7, Lkotlinx/serialization/json/Json$Default;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v7, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lkotlinx/serialization/json/JsonNames;

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonNames;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v5, v3

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/compose/ui/unit/DpSize;

    move-result-object v8

    sget-object v9, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "enum value"

    goto :goto_3

    :cond_2
    const-string/jumbo v8, "property"

    :goto_3
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lkotlinx/serialization/UnknownFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The suggested name \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already one of the names for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :cond_6
    return-object v0

    :pswitch_0
    check-cast p0, Lkotlinx/serialization/internal/EnumSerializer;

    check-cast v7, Ljava/lang/String;

    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor;

    iget-object p0, p0, Lkotlinx/serialization/internal/EnumSerializer;->values:[Ljava/lang/Enum;

    array-length v1, p0

    invoke-direct {v0, v7, v1}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    array-length v1, p0

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_7

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->splashView:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;I)V

    invoke-static {v0, v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->startSplashHideAnim(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;)V

    return-object v5

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;

    check-cast v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/FadeScaleAnimator;->itemAddListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_9

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;->ON_ANIMATION_BEGIN:Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;

    iget-object v1, v7, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->INIT:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->onAction(Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;Lcom/motorola/camera/CameraData;)V

    goto :goto_5

    :cond_8
    const-string p0, "cameraData"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_5
    return-object v5

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v7, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v7, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOLD_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-object v5

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    check-cast v7, Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl(Landroid/view/View;)V

    return-object v5

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v0, v7, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->itemExpanded:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->setControlPanelItemExpanded(Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v7, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->onClickSetting(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Ljava/lang/Integer;)V

    :goto_6
    return-object v5

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->$r8$lambda$O38ZRVKhwg4CfW9lWdin7mRxfPQ(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v5

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v10, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p0, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->eventHandler:Lcom/motorola/camera/ui/UIManager;

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->getClickEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Item has no allowed values"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_c
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RES_AND_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->closeControlPanel()V

    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_10

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {v9, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateControlBarState(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    iget-object v0, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->controlBarSettingValues$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isTalkbackRunning()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_8

    :cond_f
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;

    invoke-direct {p0, v9, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$startSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_IMAGE_PREFERENCE_SELECTOR_WINDOW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v1, v4, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto :goto_8

    :cond_12
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SETTINGS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_8

    :cond_13
    iget-object p0, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v12, p0, v0

    iget-object p0, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->fsmContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_14

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_8
    return-object v5

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v0, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->fsmContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_15

    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v0, v1, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-object v5

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    check-cast v7, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v7, v0, v1}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    goto :goto_9

    :cond_16
    move-object v4, v3

    :goto_9
    if-eqz v4, :cond_17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v6, v4, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_19
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v3, :cond_1a

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/motorola/camera/CliDualPreviewActivity;

    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v6, 0x8000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1a
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_a
    iget v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    invoke-static {p0, v0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    return-object v5

    :pswitch_a
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v2, -0x1

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    const-string v8, "com.motorola.camera5.EXTRA_CONTENT"

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_b
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_1d

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    if-ne v0, v3, :cond_1d

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    instance-of v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    if-eqz v0, :cond_1d

    const-string v0, "com.motorola.camera5.VIDEO_STATE"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicator(I)V

    goto/16 :goto_b

    :pswitch_c
    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_1d

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    if-ne v0, v3, :cond_1d

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    instance-of v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    if-eqz v0, :cond_1d

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->blackFrame:Landroid/view/View;

    if-eqz p0, :cond_1d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v6}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_b

    :pswitch_d
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v6, v6}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :pswitch_e
    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, v0, v4, v6}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    goto :goto_b

    :pswitch_f
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    if-nez v0, :cond_1c

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/google/android/gms/tasks/zzb;

    if-eqz v2, :cond_1d

    iput-boolean v6, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    new-instance v6, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v4, p0}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0, v6}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v2}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_1c
    invoke-virtual {p0, v7}, Lcom/motorola/camera/cli/content/CliContentViewModel;->showContentPriv(Landroid/content/Intent;)V

    goto :goto_b

    :pswitch_10
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/google/android/gms/tasks/zzb;

    if-eqz p0, :cond_1d

    const-string v0, "com.motorola.camera5.EXTRA_ORIENTATION"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v6, p0}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    new-instance v0, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_b
    return-object v5

    :pswitch_11
    check-cast p0, Lkotlin/text/Regex;

    check-cast v7, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "matcher(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4, v7}, Lkotlin/text/RegexKt;->access$findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
